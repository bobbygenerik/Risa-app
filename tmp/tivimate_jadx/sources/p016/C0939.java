package p016;

import android.net.http.X509TrustManagerExtensions;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.X509TrustManager;
import ˈˊ.ˉˆ;

/* renamed from: ʼ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0939 extends ˉˆ {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final X509TrustManager f3865;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final X509TrustManagerExtensions f3866;

    public C0939(X509TrustManager x509TrustManager, X509TrustManagerExtensions x509TrustManagerExtensions) {
        this.f3865 = x509TrustManager;
        this.f3866 = x509TrustManagerExtensions;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C0939) && ((C0939) obj).f3865 == this.f3865;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f3865);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final List m3204(String str, List list) {
        try {
            return this.f3866.checkServerTrusted((X509Certificate[]) list.toArray(new X509Certificate[0]), "RSA", str);
        } catch (CertificateException e) {
            SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e.getMessage());
            sSLPeerUnverifiedException.initCause(e);
            throw sSLPeerUnverifiedException;
        }
    }
}
