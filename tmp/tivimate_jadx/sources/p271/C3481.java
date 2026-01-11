package p271;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;
import p015.InterfaceC0926;
import p152.AbstractC2444;

/* renamed from: ـᐧ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3481 implements InterfaceC0926 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Method f13659;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final X509TrustManager f13660;

    public C3481(X509TrustManager x509TrustManager, Method method) {
        this.f13660 = x509TrustManager;
        this.f13659 = method;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3481)) {
            return false;
        }
        C3481 c3481 = (C3481) obj;
        return AbstractC2444.m5562(this.f13660, c3481.f13660) && AbstractC2444.m5562(this.f13659, c3481.f13659);
    }

    public final int hashCode() {
        return this.f13659.hashCode() + (this.f13660.hashCode() * 31);
    }

    public final String toString() {
        return "CustomTrustRootIndex(trustManager=" + this.f13660 + ", findByIssuerAndSignatureMethod=" + this.f13659 + ')';
    }

    @Override // p015.InterfaceC0926
    /* renamed from: ﹳٴ */
    public final X509Certificate mo3192(X509Certificate x509Certificate) {
        try {
            return ((TrustAnchor) this.f13659.invoke(this.f13660, x509Certificate)).getTrustedCert();
        } catch (IllegalAccessException e) {
            throw new AssertionError("unable to get issues and signature", e);
        } catch (InvocationTargetException unused) {
            return null;
        }
    }
}
