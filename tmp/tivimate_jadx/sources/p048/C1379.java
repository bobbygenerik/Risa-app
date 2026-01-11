package p048;

import androidx.leanback.widget.ʻٴ;
import com.bumptech.glide.C0229;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.internal.http2.ConnectionShutdownException;
import p027.C1084;
import p152.AbstractC2444;
import p164.C2582;
import p164.C2586;
import p170.C2617;
import p208.AbstractC2944;
import p208.AbstractC2960;
import p208.C2937;
import p208.C2940;
import p208.C2942;
import p208.C2945;
import p208.C2950;
import p208.C2952;
import p208.C2958;
import p208.C2959;
import p208.C2967;
import p208.C2968;
import p208.C2970;
import p208.InterfaceC2964;
import p208.InterfaceC2969;
import p274.C3488;
import p292.C3632;
import p292.C3640;
import p292.C3642;
import p292.C3648;
import p292.C3650;
import p292.C3652;
import p292.InterfaceC3631;
import p292.InterfaceC3635;
import p394.AbstractC4710;
import p394.AbstractC4712;
import p430.AbstractC5106;
import p430.C5097;
import p452.C5365;
import ʽٴ.ˈ;
import ˈˆ.ﾞᴵ;
import ˉᵎ.ⁱˊ;

/* renamed from: ʽי.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1379 implements InterfaceC2964 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f5424;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f5425;

    public /* synthetic */ C1379(int i, Object obj) {
        this.f5425 = i;
        this.f5424 = obj;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static int m4070(C2942 c2942, int i) {
        String m6485 = c2942.f11188.m6485("Retry-After");
        if (m6485 == null) {
            m6485 = null;
        }
        if (m6485 == null) {
            return i;
        }
        if (Pattern.compile("\\d+").matcher(m6485).matches()) {
            return Integer.valueOf(m6485).intValue();
        }
        return Integer.MAX_VALUE;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean m4071(IOException iOException, C3632 c3632, C2945 c2945) {
        AbstractC2944 abstractC2944;
        boolean z = iOException instanceof ConnectionShutdownException;
        if (!((C2937) this.f5424).f11134) {
            return false;
        }
        if ((!z && (((abstractC2944 = c2945.f11223) != null && abstractC2944.mo6476()) || (iOException instanceof FileNotFoundException))) || (iOException instanceof ProtocolException)) {
            return false;
        }
        if (iOException instanceof InterruptedIOException) {
            if (!(iOException instanceof SocketTimeoutException) || !z) {
                return false;
            }
        } else if (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        C0229 c0229 = c3632.f14221;
        if (c0229 == null || !c0229.f1644) {
            return false;
        }
        InterfaceC3635 mo7422 = c3632.f14215.mo7422();
        C0229 c02292 = c3632.f14221;
        return mo7422.mo7622(c02292 != null ? c02292.m1131() : null);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C2945 m4072(C2942 c2942, C0229 c0229) {
        C2617 c2617;
        AbstractC2944 abstractC2944;
        C2942 c29422;
        C2952 c2952 = c0229 != null ? c0229.m1131().f14294 : null;
        int i = c2942.f11186;
        C2945 c2945 = c2942.f11183;
        String str = c2945.f11225;
        if (i != 307 && i != 308) {
            if (i == 401) {
                ((C2937) this.f5424).f11138.getClass();
                return null;
            }
            if (i == 421) {
                AbstractC2944 abstractC29442 = c2945.f11223;
                if ((abstractC29442 == null || !abstractC29442.mo6476()) && c0229 != null && !AbstractC2444.m5562(((InterfaceC3631) c0229.f1643).mo7422().mo7623().f11337.f11161, ((InterfaceC1375) c0229.f1645).mo4059().mo4054().f11246.f11337.f11161)) {
                    C3648 m1131 = c0229.m1131();
                    synchronized (m1131) {
                        m1131.f14295 = true;
                    }
                    return c2942.f11183;
                }
            } else if (i == 503) {
                C2942 c29423 = c2942.f11190;
                if ((c29423 == null || c29423.f11186 != 503) && m4070(c2942, Integer.MAX_VALUE) == 0) {
                    return c2942.f11183;
                }
            } else {
                if (i == 407) {
                    if (c2952.f11245.type() != Proxy.Type.HTTP) {
                        throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                    }
                    ((C2937) this.f5424).f11131.getClass();
                    return null;
                }
                if (i != 408) {
                    switch (i) {
                    }
                } else if (((C2937) this.f5424).f11134 && (((abstractC2944 = c2945.f11223) == null || !abstractC2944.mo6476()) && (((c29422 = c2942.f11190) == null || c29422.f11186 != 408) && m4070(c2942, 0) <= 0))) {
                    return c2942.f11183;
                }
            }
            return null;
        }
        C2937 c2937 = (C2937) this.f5424;
        if (c2937.f11140) {
            String m6485 = c2942.f11188.m6485("Location");
            if (m6485 == null) {
                m6485 = null;
            }
            C2945 c29452 = c2942.f11183;
            if (m6485 != null) {
                C2940 c2940 = c29452.f11226;
                c2940.getClass();
                try {
                    c2617 = new C2617();
                    c2617.m5874(c2940, m6485);
                } catch (IllegalArgumentException unused) {
                    c2617 = null;
                }
                C2940 m5875 = c2617 != null ? c2617.m5875() : null;
                if (m5875 != null && (AbstractC2444.m5562(m5875.f11166, c29452.f11226.f11166) || c2937.f11123)) {
                    ʻٴ m6477 = c29452.m6477();
                    if (ⁱˊ.ٴʼ(str)) {
                        int i2 = c2942.f11186;
                        boolean z = str.equals("PROPFIND") || i2 == 308 || i2 == 307;
                        if (str.equals("PROPFIND") || i2 == 308 || i2 == 307) {
                            m6477.ʼᐧ(str, z ? c29452.f11223 : null);
                        } else {
                            m6477.ʼᐧ("GET", (AbstractC2944) null);
                        }
                        if (!z) {
                            m6477.ﹳᐧ("Transfer-Encoding");
                            m6477.ﹳᐧ("Content-Length");
                            m6477.ﹳᐧ("Content-Type");
                        }
                    }
                    if (!AbstractC4712.m9450(c29452.f11226, m5875)) {
                        m6477.ﹳᐧ("Authorization");
                    }
                    m6477.ʽʽ = m5875;
                    return new C2945(m6477);
                }
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p208.InterfaceC2964
    /* renamed from: ﹳٴ */
    public final C2942 mo4069(C1376 c1376) {
        boolean z;
        AbstractC2960 abstractC2960;
        C2942 c2942;
        boolean z2;
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        C2970 c2970;
        switch (this.f5425) {
            case 0:
                InterfaceC2969 interfaceC2969 = (InterfaceC2969) this.f5424;
                C2945 c2945 = c1376.f5414;
                ʻٴ m6477 = c2945.m6477();
                C2940 c2940 = c2945.f11226;
                C2950 c2950 = c2945.f11222;
                AbstractC2944 abstractC2944 = c2945.f11223;
                if (abstractC2944 != null) {
                    C2968 mo6464 = abstractC2944.mo6464();
                    if (mo6464 != null) {
                        ((C1084) m6477.ᴵᵔ).m3436("Content-Type", mo6464.f11345);
                    }
                    long mo6465 = abstractC2944.mo6465();
                    if (mo6465 != -1) {
                        ((C1084) m6477.ᴵᵔ).m3436("Content-Length", String.valueOf(mo6465));
                        m6477.ﹳᐧ("Transfer-Encoding");
                    } else {
                        ((C1084) m6477.ᴵᵔ).m3436("Transfer-Encoding", "chunked");
                        m6477.ﹳᐧ("Content-Length");
                    }
                }
                int i = 0;
                if (c2950.m6485("Host") == null) {
                    ((C1084) m6477.ᴵᵔ).m3436("Host", AbstractC4712.m9441(c2940, false));
                }
                if (c2950.m6485("Connection") == null) {
                    ((C1084) m6477.ᴵᵔ).m3436("Connection", "Keep-Alive");
                }
                if (c2950.m6485("Accept-Encoding") == null && c2950.m6485("Range") == null) {
                    ((C1084) m6477.ᴵᵔ).m3436("Accept-Encoding", "gzip");
                    z = true;
                } else {
                    z = false;
                }
                List mo6497 = interfaceC2969.mo6497(c2940);
                if (!mo6497.isEmpty()) {
                    StringBuilder sb = new StringBuilder();
                    for (Object obj : mo6497) {
                        int i2 = i + 1;
                        if (i < 0) {
                            AbstractC5106.m10049();
                            throw null;
                        }
                        C2958 c2958 = (C2958) obj;
                        if (i > 0) {
                            sb.append("; ");
                        }
                        sb.append(c2958.f11286);
                        sb.append('=');
                        sb.append(c2958.f11285);
                        i = i2;
                    }
                    ((C1084) m6477.ᴵᵔ).m3436("Cookie", sb.toString());
                }
                if (c2950.m6485("User-Agent") == null) {
                    ((C1084) m6477.ᴵᵔ).m3436("User-Agent", "okhttp/5.1.0");
                }
                C2945 c29452 = new C2945(m6477);
                C2942 m4065 = c1376.m4065(c29452);
                C2950 c29502 = m4065.f11188;
                AbstractC1380.m4073(interfaceC2969, c29452.f11226, c29502);
                C2959 m6475 = m4065.m6475();
                m6475.f11299 = c29452;
                if (z) {
                    String m6485 = c29502.m6485("Content-Encoding");
                    if (m6485 == null) {
                        m6485 = null;
                    }
                    if ("gzip".equalsIgnoreCase(m6485) && AbstractC1380.m4074(m4065) && (abstractC2960 = m4065.f11191) != null) {
                        C2582 c2582 = new C2582(abstractC2960.mo4067());
                        C1084 m6482 = c29502.m6482();
                        m6482.m3431("Content-Encoding");
                        m6482.m3431("Content-Length");
                        m6475.f11301 = m6482.m3432().m6482();
                        String m64852 = c29502.m6485("Content-Type");
                        if (m64852 == null) {
                            m64852 = null;
                        }
                        m6475.f11295 = new C1377(m64852, -1L, new C2586(c2582));
                    }
                }
                return m6475.m6492();
            default:
                C2945 c29453 = c1376.f5414;
                C3632 c3632 = c1376.f5418;
                C5097 c5097 = C5097.f19202;
                C2942 c29422 = null;
                int i3 = 0;
                C2945 c29454 = c29453;
                while (true) {
                    boolean z3 = true;
                    while (c3632.f14219 == null) {
                        synchronized (c3632) {
                            try {
                                if (c3632.f14218) {
                                    throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()");
                                }
                                if (c3632.f14214) {
                                    throw new IllegalStateException("Check failed.");
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (z3) {
                            C2937 c2937 = c3632.f14208;
                            C5365 c5365 = c2937.f11142;
                            C3642 c3642 = c3632.f14207;
                            int i4 = c2937.f11136;
                            int i5 = c2937.f11128;
                            int i6 = c1376.f5419;
                            c2942 = null;
                            int i7 = c1376.f5415;
                            boolean z4 = c2937.f11134;
                            boolean z5 = c2937.f11147;
                            C2940 c29402 = c29454.f11226;
                            if (AbstractC2444.m5562(c29402.f11166, "https")) {
                                SSLSocketFactory sSLSocketFactory2 = c2937.f11132;
                                if (sSLSocketFactory2 == null) {
                                    throw new IllegalStateException("CLEARTEXT-only client");
                                }
                                HostnameVerifier hostnameVerifier2 = c2937.f11135;
                                c2970 = c2937.f11133;
                                hostnameVerifier = hostnameVerifier2;
                                sSLSocketFactory = sSLSocketFactory2;
                            } else {
                                sSLSocketFactory = null;
                                hostnameVerifier = null;
                                c2970 = null;
                            }
                            C2967 c2967 = new C2967(c29402.f11161, c29402.f11162, c2937.f11137, c2937.f11139, sSLSocketFactory, hostnameVerifier, c2970, c2937.f11131, c2937.f11145, c2937.f11141, c2937.f11146);
                            c3632.f14207.getClass();
                            C3640 c3640 = new C3640(c5365, c3642, i4, i5, i6, i7, z4, z5, c2967, c3632.f14208.f11122, new C3650(c3632, c1376));
                            C2937 c29372 = c3632.f14208;
                            c3632.f14215 = c29372.f11147 ? new C3488(c3640, c29372.f11142) : new C3652(c3640);
                        } else {
                            c2942 = null;
                        }
                        try {
                            if (c3632.f14209) {
                                throw new IOException("Canceled");
                            }
                            try {
                                C2959 m64752 = c1376.m4065(c29454).m6475();
                                m64752.f11299 = c29454;
                                m64752.f11290 = c29422 != null ? ﾞᴵ.ˈⁱ(c29422) : c2942;
                                c29422 = m64752.m6492();
                                c29454 = m4072(c29422, c3632.f14219);
                                if (c29454 == null) {
                                    z2 = false;
                                } else {
                                    z2 = false;
                                    AbstractC2944 abstractC29442 = c29454.f11223;
                                    if (abstractC29442 == null || !abstractC29442.mo6476()) {
                                        AbstractC4710.m9437(c29422.f11191);
                                        i3++;
                                        if (i3 > 20) {
                                            throw new ProtocolException("Too many follow-up requests: " + i3);
                                        }
                                        c3632.m7615(true);
                                    }
                                }
                            } catch (IOException e) {
                                if (!m4071(e, c3632, c29454)) {
                                    byte[] bArr = AbstractC4710.f17800;
                                    Iterator it = c5097.iterator();
                                    while (it.hasNext()) {
                                        ˈ.ⁱˊ(e, (Exception) it.next());
                                    }
                                    throw e;
                                }
                                ArrayList arrayList = new ArrayList(c5097.size() + 1);
                                arrayList.addAll(c5097);
                                arrayList.add(e);
                                c3632.m7615(true);
                                c5097 = arrayList;
                                z3 = false;
                            }
                        } catch (Throwable th2) {
                            c3632.m7615(true);
                            throw th2;
                        }
                    }
                    throw new IllegalStateException("Check failed.");
                }
                c3632.m7615(z2);
                return c29422;
        }
    }
}
