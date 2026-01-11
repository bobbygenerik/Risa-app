package p292;

import android.net.ConnectivityManager;
import android.support.v4.media.session.AbstractC0001;
import com.google.android.gms.internal.play_billing.י;
import java.io.IOException;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.UnknownServiceException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import p013.C0907;
import p015.C0925;
import p048.InterfaceC1374;
import p109.C1947;
import p152.AbstractC2444;
import p152.C2456;
import p164.C2569;
import p164.C2573;
import p164.C2580;
import p164.C2586;
import p164.C2595;
import p208.C2942;
import p208.C2945;
import p208.C2946;
import p208.C2952;
import p208.C2959;
import p208.C2962;
import p208.C2963;
import p208.C2967;
import p208.C2970;
import p208.EnumC2956;
import p248.C3294;
import p248.C3296;
import p271.AbstractC3480;
import p301.InterfaceC3701;
import p307.AbstractC3740;
import p322.C3965;
import p329.InterfaceC4104;
import p393.C4709;
import p394.AbstractC4710;
import p394.AbstractC4712;
import p396.AbstractC4736;
import p430.AbstractC5099;
import p435.AbstractC5148;
import p452.C5365;
import ʽٴ.ˈ;
import ʾʽ.ʼˎ;
import ʿˋ.ˋᵔ;
import ﾞᵔ.ˉˆ;
import ﾞᵔ.ˉٴ;
import ﾞᵔ.ٴﹶ;
import ﾞᵔ.ᵔᵢ;
import ﾞᵔ.ᵢˏ;

/* renamed from: ٴᵎ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3641 implements InterfaceC3643, InterfaceC1374 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public C3648 f14248;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C3640 f14249;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public Socket f14250;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f14251;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public C2569 f14252;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C2952 f14253;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f14254;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final int f14255;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public volatile boolean f14256;

    /* renamed from: ˏי, reason: contains not printable characters */
    public C2586 f14257;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f14258;

    /* renamed from: יـ, reason: contains not printable characters */
    public EnumC2956 f14259;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final List f14260;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean f14261;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final boolean f14262;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C3650 f14263;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public Socket f14264;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3642 f14265;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C5365 f14266;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public C2962 f14267;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final C2945 f14268;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f14269;

    public C3641(C5365 c5365, C3642 c3642, int i, int i2, int i3, int i4, boolean z, C3650 c3650, C3640 c3640, C2952 c2952, List list, C2945 c2945, int i5, boolean z2) {
        this.f14266 = c5365;
        this.f14265 = c3642;
        this.f14251 = i;
        this.f14254 = i2;
        this.f14258 = i3;
        this.f14269 = i4;
        this.f14261 = z;
        this.f14263 = c3650;
        this.f14249 = c3640;
        this.f14253 = c2952;
        this.f14260 = list;
        this.f14268 = c2945;
        this.f14255 = i5;
        this.f14262 = z2;
    }

    @Override // p292.InterfaceC3643
    public final void cancel() {
        this.f14256 = true;
        Socket socket = this.f14250;
        if (socket != null) {
            AbstractC4712.m9442(socket);
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m7630() {
        Proxy.Type type = this.f14253.f11245.type();
        int i = type == null ? -1 : AbstractC3637.f14228[type.ordinal()];
        int i2 = 1;
        Socket createSocket = (i == 1 || i == 2) ? this.f14253.f11246.f11338.createSocket() : new Socket(this.f14253.f11245);
        this.f14250 = createSocket;
        if (this.f14256) {
            throw new IOException("canceled");
        }
        createSocket.setSoTimeout(this.f14269);
        try {
            AbstractC3480 abstractC3480 = AbstractC3480.f13658;
            AbstractC3480.f13658.mo7409(createSocket, this.f14253.f11244, this.f14258);
            try {
                C4709 c4709 = new C4709(createSocket);
                this.f14257 = new C2586(new C2573(c4709, 0, new C2573(createSocket.getInputStream(), i2, c4709)));
                C4709 c47092 = new C4709(createSocket);
                this.f14252 = new C2569(new C2595(c47092, 0, new C2595(createSocket.getOutputStream(), 1, c47092)));
            } catch (NullPointerException e) {
                if (AbstractC2444.m5562(e.getMessage(), "throw with null exception")) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f14253.f11244);
            connectException.initCause(e2);
            throw connectException;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x010e  */
    @Override // p292.InterfaceC3643
    /* renamed from: ʽ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p292.C3629 mo7616() {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p292.C3641.mo7616():ٴᵎ.ʻٴ");
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m7631(SSLSocket sSLSocket, C2946 c2946) {
        final C2967 c2967 = this.f14253.f11246;
        try {
            if (c2946.f11233) {
                AbstractC3480 abstractC3480 = AbstractC3480.f13658;
                AbstractC3480.f13658.mo7404(sSLSocket, c2967.f11337.f11161, c2967.f11331);
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            final C2962 c2962 = ˈ.ʼˎ(session);
            final int i = 0;
            if (!c2967.f11334.verify(c2967.f11337.f11161, session)) {
                List m6494 = c2962.m6494();
                if (m6494.isEmpty()) {
                    throw new SSLPeerUnverifiedException("Hostname " + c2967.f11337.f11161 + " not verified (no certificates)");
                }
                X509Certificate x509Certificate = (X509Certificate) m6494.get(0);
                StringBuilder sb = new StringBuilder("\n            |Hostname ");
                sb.append(c2967.f11337.f11161);
                sb.append(" not verified:\n            |    certificate: ");
                C2970 c2970 = C2970.f11347;
                sb.append(י.ᵢˏ(x509Certificate));
                sb.append("\n            |    DN: ");
                sb.append(x509Certificate.getSubjectDN().getName());
                sb.append("\n            |    subjectAltNames: ");
                sb.append(AbstractC5099.m10032(C0925.m3191(x509Certificate, 7), C0925.m3191(x509Certificate, 2)));
                sb.append("\n            ");
                throw new SSLPeerUnverifiedException(AbstractC5148.m10143(sb.toString()));
            }
            final C2970 c29702 = c2967.f11335;
            this.f14267 = new C2962(c2962.f11306, c2962.f11305, c2962.f11303, new InterfaceC4104() { // from class: ٴᵎ.ʽ
                @Override // p329.InterfaceC4104
                /* renamed from: ʽ */
                public final Object mo716() {
                    int i2 = i;
                    C0907 c0907 = C0907.f3832;
                    Object obj = c2967;
                    Object obj2 = c2962;
                    Object obj3 = c29702;
                    switch (i2) {
                        case 0:
                            return ((C2970) obj3).f11348.ʼˎ(((C2967) obj).f11337.f11161, ((C2962) obj2).m6494());
                        case 1:
                            ConnectivityManager connectivityManager = (ConnectivityManager) obj2;
                            ʼˎ r4 = (ʼˎ) obj;
                            if (((C2456) obj3).f9412) {
                                C3965.m8127().m8133(AbstractC4736.f17887, "NetworkRequestConstraintController unregister callback");
                                connectivityManager.unregisterNetworkCallback((ConnectivityManager.NetworkCallback) r4);
                            }
                            return c0907;
                        case 2:
                            ˉٴ r6 = (ˉٴ) obj3;
                            ᵔᵢ r5 = (ᵔᵢ) obj2;
                            List list = (List) obj;
                            InterfaceC3701[] interfaceC3701Arr = ˉٴ.ˆﹳ;
                            if (r6.f11908 != null) {
                                r5.ˈ = list;
                                r5.m6118();
                                r6.ᐧˏ().ˑﹳ.setSelectedPosition(0);
                                ˋᵔ.ᵔﹳ(15, r6.ᐧˏ().ˑﹳ, false);
                            }
                            return c0907;
                        case 3:
                            ˉٴ r62 = (ˉٴ) obj3;
                            ٴﹶ r52 = (ٴﹶ) obj2;
                            List list2 = (List) obj;
                            InterfaceC3701[] interfaceC3701Arr2 = ˉٴ.ˆﹳ;
                            if (r62.f11908 != null) {
                                r52.ˈ = list2;
                                r52.m6118();
                                r62.ᐧˏ().ʽﹳ.setSelectedPosition(0);
                                ˋᵔ.ᵔﹳ(15, r62.ᐧˏ().ʽﹳ, false);
                            }
                            return c0907;
                        case 4:
                            ˉٴ r63 = (ˉٴ) obj3;
                            ˉˆ r53 = (ˉˆ) obj2;
                            List list3 = (List) obj;
                            InterfaceC3701[] interfaceC3701Arr3 = ˉٴ.ˆﹳ;
                            if (r63.f11908 != null) {
                                r53.ˈ = list3;
                                r53.m6118();
                                r63.ᐧˏ().ﾞᴵ.setSelectedPosition(0);
                                ˋᵔ.ᵔﹳ(15, r63.ᐧˏ().ﾞᴵ, false);
                            }
                            return c0907;
                        default:
                            ˉٴ r64 = (ˉٴ) obj3;
                            ᵢˏ r54 = (ᵢˏ) obj2;
                            List list4 = (List) obj;
                            InterfaceC3701[] interfaceC3701Arr4 = ˉٴ.ˆﹳ;
                            if (r64.f11908 != null) {
                                r54.ˈ = list4;
                                r54.m6118();
                                r64.ᐧˏ().ٴﹶ.setSelectedPosition(0);
                                ˋᵔ.ᵔﹳ(15, r64.ᐧˏ().ٴﹶ, false);
                            }
                            return c0907;
                    }
                }
            });
            String str = c2967.f11337.f11161;
            Iterator it = c29702.f11349.iterator();
            String str2 = null;
            if (it.hasNext()) {
                AbstractC0001.m3(it.next());
                throw null;
            }
            if (c2946.f11233) {
                AbstractC3480 abstractC34802 = AbstractC3480.f13658;
                str2 = AbstractC3480.f13658.mo7405(sSLSocket);
            }
            this.f14264 = sSLSocket;
            C4709 c4709 = new C4709(sSLSocket);
            this.f14257 = new C2586(new C2573(c4709, i, new C2573(sSLSocket.getInputStream(), 1, c4709)));
            C4709 c47092 = new C4709(sSLSocket);
            this.f14252 = new C2569(new C2595(c47092, 0, new C2595(sSLSocket.getOutputStream(), 1, c47092)));
            this.f14259 = str2 != null ? ˈˊ.ˉˆ.ʼᐧ(str2) : EnumC2956.f11258;
            AbstractC3480 abstractC34803 = AbstractC3480.f13658;
            AbstractC3480.f13658.getClass();
        } catch (Throwable th) {
            AbstractC3480 abstractC34804 = AbstractC3480.f13658;
            AbstractC3480.f13658.getClass();
            AbstractC4712.m9442(sSLSocket);
            throw th;
        }
    }

    @Override // p292.InterfaceC3643
    /* renamed from: ˈ */
    public final C3648 mo7617() {
        this.f14263.m7653(this.f14253);
        C3648 c3648 = this.f14248;
        this.f14263.getClass();
        C3634 m7627 = this.f14249.m7627(this, this.f14260);
        if (m7627 != null) {
            return m7627.f14226;
        }
        synchronized (c3648) {
            C3642 c3642 = this.f14265;
            c3642.getClass();
            TimeZone timeZone = AbstractC4712.f17804;
            c3642.f14272.add(c3648);
            c3642.f14270.m10765(c3642.f14271, 0L);
            this.f14263.m7668(c3648);
        }
        this.f14263.getClass();
        this.f14263.m7649(c3648);
        return c3648;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final C3641 m7632(List list, SSLSocket sSLSocket) {
        if (this.f14255 != -1) {
            return this;
        }
        C3641 m7634 = m7634(list, sSLSocket);
        if (m7634 != null) {
            return m7634;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f14262 + ", modes=" + list + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    @Override // p048.InterfaceC1374
    /* renamed from: ˑﹳ */
    public final void mo4052(C3632 c3632, IOException iOException) {
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C3629 m7633() {
        C2952 c2952 = this.f14253;
        String str = "CONNECT " + AbstractC4712.m9441(c2952.f11246.f11337, true) + " HTTP/1.1";
        C2586 c2586 = this.f14257;
        if (c2586 == null) {
            c2586 = null;
        }
        C2569 c2569 = this.f14252;
        if (c2569 == null) {
            c2569 = null;
        }
        C3296 c3296 = new C3296(null, this, c2586, c2569);
        C2586 c25862 = this.f14257;
        if (c25862 == null) {
            c25862 = null;
        }
        C2580 mo5762 = c25862.f9812.mo5762();
        long j = this.f14251;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        mo5762.mo5765(j);
        C2569 c25692 = this.f14252;
        if (c25692 == null) {
            c25692 = null;
        }
        c25692.f9760.mo5737().mo5765(this.f14254);
        C2945 c2945 = this.f14268;
        c3296.m7107(c2945.f11222, str);
        c3296.mo4057();
        C2959 mo4055 = c3296.mo4055(false);
        mo4055.f11299 = c2945;
        C2942 m6492 = mo4055.m6492();
        int i = m6492.f11186;
        long m9445 = AbstractC4712.m9445(m6492);
        if (m9445 != -1) {
            C3294 m7106 = c3296.m7106(m6492.f11183.f11226, m9445);
            AbstractC4712.m9447(m7106, Integer.MAX_VALUE);
            m7106.close();
        }
        if (i == 200) {
            return new C3629(this, (Throwable) null, 6);
        }
        if (i != 407) {
            throw new IOException(AbstractC3740.m7932(i, "Unexpected response code for CONNECT: "));
        }
        c2952.f11246.f11340.getClass();
        throw new IOException("Failed to authenticate with proxy");
    }

    @Override // p292.InterfaceC3643
    /* renamed from: ᵎﹶ */
    public final C3629 mo7618() {
        Socket socket;
        Socket socket2;
        C2952 c2952 = this.f14253;
        if (this.f14250 != null) {
            throw new IllegalStateException("TCP already connected");
        }
        C3650 c3650 = this.f14263;
        c3650.m7667(this);
        boolean z = false;
        try {
            try {
                c3650.getClass();
                m7630();
                z = true;
                C3629 c3629 = new C3629(this, (Throwable) null, 6);
                c3650.m7652(this);
                return c3629;
            } catch (IOException e) {
                c2952.f11246.getClass();
                if (c2952.f11245.type() != Proxy.Type.DIRECT) {
                    C2967 c2967 = c2952.f11246;
                    c2967.f11336.connectFailed(c2967.f11337.m6470(), c2952.f11245.address(), e);
                }
                c3650.getClass();
                C3629 c36292 = new C3629(this, e, 2);
                c3650.m7652(this);
                if (!z && (socket2 = this.f14250) != null) {
                    AbstractC4712.m9442(socket2);
                }
                return c36292;
            }
        } catch (Throwable th) {
            c3650.m7652(this);
            if (!z && (socket = this.f14250) != null) {
                AbstractC4712.m9442(socket);
            }
            throw th;
        }
    }

    @Override // p048.InterfaceC1374
    /* renamed from: ᵔᵢ */
    public final void mo4053() {
    }

    @Override // p292.InterfaceC3643
    /* renamed from: ⁱˊ */
    public final InterfaceC3643 mo7619() {
        return new C3641(this.f14266, this.f14265, this.f14251, this.f14254, this.f14258, this.f14269, this.f14261, this.f14263, this.f14249, this.f14253, this.f14260, this.f14268, this.f14255, this.f14262);
    }

    @Override // p292.InterfaceC3643
    /* renamed from: ﹳٴ */
    public final boolean mo7620() {
        return this.f14259 != null;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final C3641 m7634(List list, SSLSocket sSLSocket) {
        String[] strArr;
        String[] strArr2;
        int i = this.f14255;
        int size = list.size();
        for (int i2 = i + 1; i2 < size; i2++) {
            C2946 c2946 = (C2946) list.get(i2);
            if (c2946.f11234 && (((strArr = c2946.f11232) == null || AbstractC4710.m9432(strArr, sSLSocket.getEnabledProtocols(), C1947.f7727)) && ((strArr2 = c2946.f11231) == null || AbstractC4710.m9432(strArr2, sSLSocket.getEnabledCipherSuites(), C2963.f11309)))) {
                return new C3641(this.f14266, this.f14265, this.f14251, this.f14254, this.f14258, this.f14269, this.f14261, this.f14263, this.f14249, this.f14253, this.f14260, this.f14268, i2, i != -1);
            }
        }
        return null;
    }

    @Override // p048.InterfaceC1374
    /* renamed from: ﾞᴵ */
    public final C2952 mo4054() {
        return this.f14253;
    }
}
