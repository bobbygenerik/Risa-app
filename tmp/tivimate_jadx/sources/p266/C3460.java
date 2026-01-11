package p266;

import android.net.Uri;
import androidx.media3.datasource.DataSourceException;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;

/* renamed from: ـˊ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3460 extends AbstractC3458 {

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public int f13588;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public Uri f13589;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final byte[] f13590;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public MulticastSocket f13591;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final DatagramPacket f13592;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f13593;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public InetAddress f13594;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public DatagramSocket f13595;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public boolean f13596;

    public C3460() {
        this(8000);
    }

    public C3460(int i) {
        super(true);
        this.f13593 = i;
        byte[] bArr = new byte[2000];
        this.f13590 = bArr;
        this.f13592 = new DatagramPacket(bArr, 0, 2000);
    }

    @Override // p266.InterfaceC3462
    public final void close() {
        this.f13589 = null;
        MulticastSocket multicastSocket = this.f13591;
        if (multicastSocket != null) {
            try {
                InetAddress inetAddress = this.f13594;
                inetAddress.getClass();
                multicastSocket.leaveGroup(inetAddress);
            } catch (IOException unused) {
            }
            this.f13591 = null;
        }
        DatagramSocket datagramSocket = this.f13595;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f13595 = null;
        }
        this.f13594 = null;
        this.f13588 = 0;
        if (this.f13596) {
            this.f13596 = false;
            m7365();
        }
    }

    @Override // p055.InterfaceC1455
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f13588;
        DatagramPacket datagramPacket = this.f13592;
        if (i3 == 0) {
            try {
                DatagramSocket datagramSocket = this.f13595;
                datagramSocket.getClass();
                datagramSocket.receive(datagramPacket);
                int length = datagramPacket.getLength();
                this.f13588 = length;
                m7368(length);
            } catch (SocketTimeoutException e) {
                throw new DataSourceException(e, 2002);
            } catch (IOException e2) {
                throw new DataSourceException(e2, 2001);
            }
        }
        int length2 = datagramPacket.getLength();
        int i4 = this.f13588;
        int min = Math.min(i4, i2);
        System.arraycopy(this.f13590, length2 - i4, bArr, i, min);
        this.f13588 -= min;
        return min;
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ʽʽ */
    public final long mo4684(C3456 c3456) {
        Uri uri = c3456.f13577;
        this.f13589 = uri;
        String host = uri.getHost();
        host.getClass();
        int port = this.f13589.getPort();
        m7366();
        try {
            this.f13594 = InetAddress.getByName(host);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.f13594, port);
            if (this.f13594.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.f13591 = multicastSocket;
                multicastSocket.joinGroup(this.f13594);
                this.f13595 = this.f13591;
            } else {
                this.f13595 = new DatagramSocket(inetSocketAddress);
            }
            this.f13595.setSoTimeout(this.f13593);
            this.f13596 = true;
            m7367(c3456);
            return -1L;
        } catch (IOException e) {
            throw new DataSourceException(e, 2001);
        } catch (SecurityException e2) {
            throw new DataSourceException(e2, 2006);
        }
    }

    @Override // p266.InterfaceC3462
    /* renamed from: יـ */
    public final Uri mo4685() {
        return this.f13589;
    }
}
