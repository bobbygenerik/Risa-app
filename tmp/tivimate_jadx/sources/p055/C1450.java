package p055;

import p305.AbstractC3712;

/* renamed from: ʽⁱ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C1450 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f5646;

    static {
        new C1450(new C1468());
        AbstractC3712.m7802(0);
        AbstractC3712.m7802(1);
        AbstractC3712.m7802(2);
        AbstractC3712.m7802(3);
        AbstractC3712.m7802(4);
        AbstractC3712.m7802(5);
        AbstractC3712.m7802(6);
        AbstractC3712.m7802(7);
    }

    public C1450(C1468 c1468) {
        String str = AbstractC3712.f14481;
        this.f5646 = c1468.f5751;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C1450) && this.f5646 == ((C1450) obj).f5646;
    }

    public final int hashCode() {
        long j = this.f5646;
        return ((((int) 0) * 31) + ((int) (j ^ (j >>> 32)))) * 923521;
    }
}
