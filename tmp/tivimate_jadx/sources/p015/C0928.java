package p015;

import java.security.GeneralSecurityException;
import java.security.cert.X509Certificate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import p152.AbstractC2444;
import p307.AbstractC3740;
import ˈˊ.ˉˆ;

/* renamed from: ʻﹶ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0928 extends ˉˆ {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC0926 f3849;

    public C0928(InterfaceC0926 interfaceC0926) {
        this.f3849 = interfaceC0926;
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public static boolean m3193(X509Certificate x509Certificate, X509Certificate x509Certificate2, int i) {
        if (!AbstractC2444.m5562(x509Certificate.getIssuerDN(), x509Certificate2.getSubjectDN()) || x509Certificate2.getBasicConstraints() < i) {
            return false;
        }
        try {
            x509Certificate.verify(x509Certificate2.getPublicKey());
            return true;
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof C0928) && AbstractC2444.m5562(((C0928) obj).f3849, this.f3849);
    }

    public final int hashCode() {
        return this.f3849.hashCode();
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final List m3194(String str, List list) {
        ArrayDeque arrayDeque = new ArrayDeque(list);
        ArrayList arrayList = new ArrayList();
        arrayList.add(arrayDeque.removeFirst());
        boolean z = false;
        for (int i = 0; i < 9; i++) {
            X509Certificate x509Certificate = (X509Certificate) AbstractC3740.m7939(1, arrayList);
            X509Certificate mo3192 = this.f3849.mo3192(x509Certificate);
            if (mo3192 == null) {
                Iterator it = arrayDeque.iterator();
                while (it.hasNext()) {
                    X509Certificate x509Certificate2 = (X509Certificate) it.next();
                    if (m3193(x509Certificate, x509Certificate2, arrayList.size() - 1)) {
                        it.remove();
                        arrayList.add(x509Certificate2);
                    }
                }
                if (!z) {
                    throw new SSLPeerUnverifiedException("Failed to find a trusted cert that signed " + x509Certificate);
                }
                return arrayList;
            }
            if (arrayList.size() > 1 || !x509Certificate.equals(mo3192)) {
                arrayList.add(mo3192);
            }
            if (m3193(mo3192, mo3192, arrayList.size() - 2)) {
                return arrayList;
            }
            z = true;
        }
        throw new SSLPeerUnverifiedException("Certificate chain too long: " + arrayList);
    }
}
