package p208;

import ar.tvplayer.core.domain.ᵔʾ;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import p013.C0906;
import p152.AbstractC2444;
import p329.InterfaceC4104;
import p430.AbstractC5114;

/* renamed from: ˎᵢ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2962 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final List f11303;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C0906 f11304;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2963 f11305;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final EnumC2957 f11306;

    public C2962(EnumC2957 enumC2957, C2963 c2963, List list, InterfaceC4104 interfaceC4104) {
        this.f11306 = enumC2957;
        this.f11305 = c2963;
        this.f11303 = list;
        this.f11304 = new C0906(new ᵔʾ(2, interfaceC4104));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2962)) {
            return false;
        }
        C2962 c2962 = (C2962) obj;
        return c2962.f11306 == this.f11306 && AbstractC2444.m5562(c2962.f11305, this.f11305) && AbstractC2444.m5562(c2962.m6494(), m6494()) && AbstractC2444.m5562(c2962.f11303, this.f11303);
    }

    public final int hashCode() {
        return this.f11303.hashCode() + ((m6494().hashCode() + ((this.f11305.hashCode() + ((this.f11306.hashCode() + 527) * 31)) * 31)) * 31);
    }

    public final String toString() {
        List<Certificate> m6494 = m6494();
        ArrayList arrayList = new ArrayList(AbstractC5114.m10060(m6494, 10));
        for (Certificate certificate : m6494) {
            arrayList.add(certificate instanceof X509Certificate ? ((X509Certificate) certificate).getSubjectDN().toString() : certificate.getType());
        }
        String obj = arrayList.toString();
        StringBuilder sb = new StringBuilder("Handshake{tlsVersion=");
        sb.append(this.f11306);
        sb.append(" cipherSuite=");
        sb.append(this.f11305);
        sb.append(" peerCertificates=");
        sb.append(obj);
        sb.append(" localCertificates=");
        List<Certificate> list = this.f11303;
        ArrayList arrayList2 = new ArrayList(AbstractC5114.m10060(list, 10));
        for (Certificate certificate2 : list) {
            arrayList2.add(certificate2 instanceof X509Certificate ? ((X509Certificate) certificate2).getSubjectDN().toString() : certificate2.getType());
        }
        sb.append(arrayList2);
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final List m6494() {
        return (List) this.f11304.getValue();
    }
}
