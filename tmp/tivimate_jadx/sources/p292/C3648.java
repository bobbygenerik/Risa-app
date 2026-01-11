package p292;

import java.io.IOException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.StreamResetException;
import p048.InterfaceC1374;
import p137.C2282;
import p164.C2569;
import p164.C2586;
import p164.InterfaceC2590;
import p164.InterfaceC2592;
import p208.C2937;
import p208.C2952;
import p208.C2962;
import p208.C2967;
import p208.EnumC2956;
import p361.AbstractC4397;
import p361.AbstractC4398;
import p361.C4373;
import p361.C4387;
import p361.C4390;
import p361.C4393;
import p361.C4395;
import p394.AbstractC4712;
import p452.C5365;
import p452.C5366;
import ˉˆ.ʿ;

/* renamed from: ٴᵎ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3648 extends AbstractC4397 implements InterfaceC1374 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final InterfaceC2592 f14290;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public int f14291;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3642 f14292;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final InterfaceC2590 f14293;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C2952 f14294;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public boolean f14295;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f14296;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Socket f14297;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public C4390 f14299;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C2962 f14300;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f14301;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final EnumC2956 f14302;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C5365 f14304;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public boolean f14306;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Socket f14307;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public int f14303 = 1;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final ArrayList f14305 = new ArrayList();

    /* renamed from: יـ, reason: contains not printable characters */
    public long f14298 = Long.MAX_VALUE;

    public C3648(C5365 c5365, C3642 c3642, C2952 c2952, Socket socket, Socket socket2, C2962 c2962, EnumC2956 enumC2956, C2586 c2586, C2569 c2569) {
        this.f14304 = c5365;
        this.f14292 = c3642;
        this.f14294 = c2952;
        this.f14297 = socket;
        this.f14307 = socket2;
        this.f14300 = c2962;
        this.f14302 = enumC2956;
        this.f14290 = c2586;
        this.f14293 = c2569;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m7641(C2937 c2937, C2952 c2952, IOException iOException) {
        if (c2952.f11245.type() != Proxy.Type.DIRECT) {
            C2967 c2967 = c2952.f11246;
            c2967.f11336.connectFailed(c2967.f11337.m6470(), c2952.f11245.address(), iOException);
        }
        ʿ r3 = c2937.f11122;
        synchronized (r3) {
            ((LinkedHashSet) r3.ᴵˊ).add(c2952);
        }
    }

    @Override // p048.InterfaceC1374
    public final void cancel() {
        AbstractC4712.m9442(this.f14297);
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder("Connection{");
        C2952 c2952 = this.f14294;
        sb.append(c2952.f11246.f11337.f11161);
        sb.append(':');
        sb.append(c2952.f11246.f11337.f11162);
        sb.append(", proxy=");
        sb.append(c2952.f11245);
        sb.append(" hostAddress=");
        sb.append(c2952.f11244);
        sb.append(" cipherSuite=");
        C2962 c2962 = this.f14300;
        if (c2962 == null || (obj = c2962.f11305) == null) {
            obj = "none";
        }
        sb.append(obj);
        sb.append(" protocol=");
        sb.append(this.f14302);
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean m7642(boolean z) {
        long j;
        TimeZone timeZone = AbstractC4712.f17804;
        long nanoTime = System.nanoTime();
        if (this.f14297.isClosed() || this.f14307.isClosed() || this.f14307.isInputShutdown() || this.f14307.isOutputShutdown()) {
            return false;
        }
        C4390 c4390 = this.f14299;
        if (c4390 != null) {
            return c4390.m8883(nanoTime);
        }
        synchronized (this) {
            j = nanoTime - this.f14298;
        }
        if (j < 10000000000L || !z) {
            return true;
        }
        Socket socket = this.f14307;
        InterfaceC2592 interfaceC2592 = this.f14290;
        try {
            int soTimeout = socket.getSoTimeout();
            try {
                socket.setSoTimeout(1);
                return !interfaceC2592.mo5805();
            } finally {
                socket.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m7643() {
        this.f14298 = System.nanoTime();
        EnumC2956 enumC2956 = this.f14302;
        if (enumC2956 == EnumC2956.f11264 || enumC2956 == EnumC2956.f11261) {
            this.f14307.setSoTimeout(0);
            C4395 c4395 = C4395.f16350;
            C2282 c2282 = new C2282(this.f14304);
            Socket socket = this.f14307;
            String str = this.f14294.f11246.f11337.f11161;
            InterfaceC2592 interfaceC2592 = this.f14290;
            InterfaceC2590 interfaceC2590 = this.f14293;
            c2282.f8928 = socket;
            c2282.f8924 = AbstractC4712.f17803 + ' ' + str;
            c2282.f8925 = interfaceC2592;
            c2282.f8926 = interfaceC2590;
            c2282.f8930 = this;
            c2282.f8927 = c4395;
            C4390 c4390 = new C4390(c2282);
            this.f14299 = c4390;
            C4393 c4393 = C4390.f16303;
            this.f14303 = (c4393.f16340 & 8) != 0 ? c4393.f16339[3] : Integer.MAX_VALUE;
            C4387 c4387 = c4390.f16322;
            synchronized (c4387) {
                try {
                    if (c4387.f16297) {
                        throw new IOException("closed");
                    }
                    Logger logger = C4387.f16294;
                    if (logger.isLoggable(Level.FINE)) {
                        logger.fine(AbstractC4712.m9444(">> CONNECTION " + AbstractC4398.f16359.mo5751(), new Object[0]));
                    }
                    c4387.f16296.mo5742(AbstractC4398.f16359);
                    c4387.f16296.flush();
                } catch (Throwable th) {
                    throw th;
                }
            }
            c4390.f16322.m8876(c4390.f16316);
            if (c4390.f16316.m8889() != 65535) {
                c4390.f16322.m8872(0, r2 - 65535);
            }
            C5366.m10764(c4390.f16320.m10761(), c4390.f16305, c4390.f16312);
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m7644() {
        synchronized (this) {
            this.f14296++;
        }
    }

    @Override // p048.InterfaceC1374
    /* renamed from: ˑﹳ */
    public final void mo4052(C3632 c3632, IOException iOException) {
        synchronized (this) {
            try {
                if (!(iOException instanceof StreamResetException)) {
                    if (!(this.f14299 != null) || (iOException instanceof ConnectionShutdownException)) {
                        this.f14306 = true;
                        if (this.f14296 == 0) {
                            if (iOException != null) {
                                m7641(c3632.f14208, this.f14294, iOException);
                            }
                            this.f14301++;
                        }
                    }
                } else if (((StreamResetException) iOException).f3113 == 8) {
                    int i = this.f14291 + 1;
                    this.f14291 = i;
                    if (i > 1) {
                        this.f14306 = true;
                        this.f14301++;
                    }
                } else if (((StreamResetException) iOException).f3113 != 9 || !c3632.f14209) {
                    this.f14306 = true;
                    this.f14301++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a6, code lost:
    
        if (p015.C0925.m3189(r0, (java.security.cert.X509Certificate) r9.get(0)) != false) goto L53;
     */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m7645(p208.C2967 r8, java.util.List r9) {
        /*
            r7 = this;
            ˎᵢ.ʼᐧ r0 = r8.f11337
            java.util.TimeZone r1 = p394.AbstractC4712.f17804
            java.util.ArrayList r1 = r7.f14305
            int r1 = r1.size()
            int r2 = r7.f14303
            r3 = 0
            if (r1 >= r2) goto Lc4
            boolean r1 = r7.f14306
            if (r1 == 0) goto L15
            goto Lc4
        L15:
            ˎᵢ.ˊʻ r1 = r7.f14294
            ˎᵢ.ﹳٴ r2 = r1.f11246
            ˎᵢ.ﹳٴ r4 = r1.f11246
            boolean r2 = r2.m6499(r8)
            if (r2 != 0) goto L23
            goto Lc4
        L23:
            java.lang.String r2 = r0.f11161
            ˎᵢ.ʼᐧ r5 = r4.f11337
            java.lang.String r5 = r5.f11161
            boolean r2 = p152.AbstractC2444.m5562(r2, r5)
            if (r2 == 0) goto L31
            goto Lb9
        L31:
            ᵔᐧ.ᵔʾ r2 = r7.f14299
            if (r2 != 0) goto L37
            goto Lc4
        L37:
            if (r9 == 0) goto Lc4
            boolean r2 = r9.isEmpty()
            if (r2 == 0) goto L41
            goto Lc4
        L41:
            java.util.Iterator r9 = r9.iterator()
        L45:
            boolean r2 = r9.hasNext()
            if (r2 == 0) goto Lc4
            java.lang.Object r2 = r9.next()
            ˎᵢ.ˊʻ r2 = (p208.C2952) r2
            java.net.Proxy r5 = r2.f11245
            java.net.Proxy$Type r5 = r5.type()
            java.net.Proxy$Type r6 = java.net.Proxy.Type.DIRECT
            if (r5 != r6) goto L45
            java.net.Proxy r5 = r1.f11245
            java.net.Proxy$Type r5 = r5.type()
            if (r5 != r6) goto L45
            java.net.InetSocketAddress r5 = r1.f11244
            java.net.InetSocketAddress r2 = r2.f11244
            boolean r2 = p152.AbstractC2444.m5562(r5, r2)
            if (r2 == 0) goto L45
            javax.net.ssl.HostnameVerifier r9 = r8.f11334
            ʻﹶ.ʽ r1 = p015.C0925.f3847
            if (r9 == r1) goto L74
            goto Lc4
        L74:
            java.util.TimeZone r9 = p394.AbstractC4712.f17804
            ˎᵢ.ʼᐧ r9 = r4.f11337
            int r1 = r0.f11162
            java.lang.String r0 = r0.f11161
            int r2 = r9.f11162
            if (r1 == r2) goto L81
            goto Lc4
        L81:
            java.lang.String r9 = r9.f11161
            boolean r9 = p152.AbstractC2444.m5562(r0, r9)
            ˎᵢ.ᵔʾ r1 = r7.f14300
            if (r9 == 0) goto L8c
            goto La8
        L8c:
            boolean r9 = r7.f14295
            if (r9 != 0) goto Lc4
            if (r1 == 0) goto Lc4
            java.util.List r9 = r1.m6494()
            boolean r2 = r9.isEmpty()
            if (r2 != 0) goto Lc4
            java.lang.Object r9 = r9.get(r3)
            java.security.cert.X509Certificate r9 = (java.security.cert.X509Certificate) r9
            boolean r9 = p015.C0925.m3189(r0, r9)
            if (r9 == 0) goto Lc4
        La8:
            ˎᵢ.ﾞᴵ r8 = r8.f11335     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Lc4
            r1.m6494()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Lc4
            java.util.Set r8 = r8.f11349     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Lc4
            java.util.Iterator r8 = r8.iterator()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Lc4
            boolean r9 = r8.hasNext()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Lc4
            if (r9 != 0) goto Lbb
        Lb9:
            r8 = 1
            return r8
        Lbb:
            java.lang.Object r8 = r8.next()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Lc4
            android.support.v4.media.session.AbstractC0001.m3(r8)     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Lc4
            r8 = 0
            throw r8     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Lc4
        Lc4:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p292.C3648.m7645(ˎᵢ.ﹳٴ, java.util.List):boolean");
    }

    @Override // p048.InterfaceC1374
    /* renamed from: ᵔᵢ */
    public final void mo4053() {
        synchronized (this) {
            this.f14306 = true;
        }
    }

    @Override // p361.AbstractC4397
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo7646(C4373 c4373) {
        c4373.m8845(8, null);
    }

    @Override // p361.AbstractC4397
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo7647(C4393 c4393) {
        synchronized (this) {
            try {
                int i = this.f14303;
                int i2 = (c4393.f16340 & 8) != 0 ? c4393.f16339[3] : Integer.MAX_VALUE;
                this.f14303 = i2;
                if (i2 < i) {
                    if (this.f14292.f14273.get(this.f14294.f11246) != null) {
                        throw new ClassCastException();
                    }
                } else if (i2 > i) {
                    C3642 c3642 = this.f14292;
                    c3642.f14270.m10765(c3642.f14271, 0L);
                }
            } finally {
            }
        }
    }

    @Override // p048.InterfaceC1374
    /* renamed from: ﾞᴵ */
    public final C2952 mo4054() {
        return this.f14294;
    }
}
