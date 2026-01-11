package p127;

import android.net.Uri;
import android.support.v4.media.session.AbstractC0001;
import androidx.media3.datasource.UdpDataSource$UdpDataSourceException;
import java.net.DatagramSocket;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import p266.C3456;
import p266.C3460;
import p266.InterfaceC3457;
import p305.AbstractC3712;
import p305.AbstractC3731;
import ˈˊ.ˉˆ;

/* renamed from: ˈـ.ٴʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2163 implements InterfaceC2160 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C3460 f8426 = new C3460(ˉˆ.ᵔᵢ(8000));

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C2163 f8427;

    @Override // p266.InterfaceC3462
    public final void close() {
        this.f8426.close();
        C2163 c2163 = this.f8427;
        if (c2163 != null) {
            c2163.close();
        }
    }

    @Override // p055.InterfaceC1455
    public final int read(byte[] bArr, int i, int i2) {
        try {
            return this.f8426.read(bArr, i, i2);
        } catch (UdpDataSource$UdpDataSourceException e) {
            if (e.f1139 == 2002) {
                return -1;
            }
            throw e;
        }
    }

    @Override // p127.InterfaceC2160
    /* renamed from: ʼˎ */
    public final int mo5114() {
        DatagramSocket datagramSocket = this.f8426.f13595;
        int localPort = datagramSocket == null ? -1 : datagramSocket.getLocalPort();
        if (localPort == -1) {
            return -1;
        }
        return localPort;
    }

    @Override // p127.InterfaceC2160
    /* renamed from: ʼᐧ */
    public final boolean mo5115() {
        return true;
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ʽʽ */
    public final long mo4684(C3456 c3456) {
        this.f8426.mo4684(c3456);
        return -1L;
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void mo5139(InterfaceC3457 interfaceC3457) {
        this.f8426.mo5139(interfaceC3457);
    }

    @Override // p266.InterfaceC3462
    /* renamed from: יـ */
    public final Uri mo4685() {
        return this.f8426.f13589;
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final Map mo5140() {
        return Collections.EMPTY_MAP;
    }

    @Override // p127.InterfaceC2160
    /* renamed from: ᵢˏ */
    public final C2168 mo5116() {
        return null;
    }

    @Override // p127.InterfaceC2160
    /* renamed from: ⁱˊ */
    public final String mo5117() {
        int mo5114 = mo5114();
        AbstractC3731.m7857(mo5114 != -1);
        String str = AbstractC3712.f14481;
        Locale locale = Locale.US;
        return AbstractC0001.m14(mo5114, mo5114 + 1, "RTP/AVP;unicast;client_port=", "-");
    }
}
