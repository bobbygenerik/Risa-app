package p058;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import javax.net.SocketFactory;
import p449.AbstractC5359;
import p449.InterfaceC5360;

/* renamed from: ʾʻ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1517 extends SocketFactory {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final InterfaceC5360 f5990 = AbstractC5359.m10750(C1517.class);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Proxy f5992 = Proxy.NO_PROXY;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f5991 = 5000;

    @Override // javax.net.SocketFactory
    public final Socket createSocket() {
        return new Socket(this.f5992);
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) {
        return m4325(new InetSocketAddress(str, i), null);
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return m4325(new InetSocketAddress(str, i), new InetSocketAddress(inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) {
        return m4325(new InetSocketAddress(inetAddress, i), null);
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return m4325(new InetSocketAddress(inetAddress, i), new InetSocketAddress(inetAddress2, i2));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Socket m4325(InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2) {
        Socket socket = new Socket(this.f5992);
        if (inetSocketAddress2 != null) {
            socket.bind(inetSocketAddress2);
        }
        f5990.mo4098(inetSocketAddress, "Connecting to {}");
        socket.connect(inetSocketAddress, this.f5991);
        return socket;
    }
}
