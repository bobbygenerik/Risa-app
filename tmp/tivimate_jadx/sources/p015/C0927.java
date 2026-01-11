package p015;

import java.security.cert.X509Certificate;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import p152.AbstractC2444;

/* renamed from: ʻﹶ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0927 implements InterfaceC0926 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final LinkedHashMap f3848;

    public C0927(X509Certificate... x509CertificateArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (X509Certificate x509Certificate : x509CertificateArr) {
            X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
            Object obj = linkedHashMap.get(subjectX500Principal);
            if (obj == null) {
                obj = new LinkedHashSet();
                linkedHashMap.put(subjectX500Principal, obj);
            }
            ((Set) obj).add(x509Certificate);
        }
        this.f3848 = linkedHashMap;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof C0927) && AbstractC2444.m5562(((C0927) obj).f3848, this.f3848);
        }
        return true;
    }

    public final int hashCode() {
        return this.f3848.hashCode();
    }

    @Override // p015.InterfaceC0926
    /* renamed from: ﹳٴ */
    public final X509Certificate mo3192(X509Certificate x509Certificate) {
        Set set = (Set) this.f3848.get(x509Certificate.getIssuerX500Principal());
        Object obj = null;
        if (set == null) {
            return null;
        }
        Iterator it = set.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            try {
                x509Certificate.verify(((X509Certificate) next).getPublicKey());
                obj = next;
                break;
            } catch (Exception unused) {
            }
        }
        return (X509Certificate) obj;
    }
}
