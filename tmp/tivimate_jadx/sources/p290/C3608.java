package p290;

import java.util.HashMap;
import p318.EnumC3916;
import p419.InterfaceC4934;

/* renamed from: ٴᐧ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3608 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final HashMap f14111;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC4934 f14112;

    public C3608(InterfaceC4934 interfaceC4934, HashMap hashMap) {
        this.f14112 = interfaceC4934;
        this.f14111 = hashMap;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C3608)) {
            return false;
        }
        C3608 c3608 = (C3608) obj;
        return this.f14112.equals(c3608.f14112) && this.f14111.equals(c3608.f14111);
    }

    public final int hashCode() {
        return ((this.f14112.hashCode() ^ 1000003) * 1000003) ^ this.f14111.hashCode();
    }

    public final String toString() {
        return "SchedulerConfig{clock=" + this.f14112 + ", values=" + this.f14111 + "}";
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long m7569(EnumC3916 enumC3916, long j, int i) {
        long mo9045 = j - this.f14112.mo9045();
        C3607 c3607 = (C3607) this.f14111.get(enumC3916);
        long j2 = c3607.f14110;
        return Math.min(Math.max((long) (Math.pow(3.0d, i - 1) * j2 * Math.max(1.0d, Math.log(10000.0d) / Math.log((j2 > 1 ? j2 : 2L) * r12))), mo9045), c3607.f14109);
    }
}
