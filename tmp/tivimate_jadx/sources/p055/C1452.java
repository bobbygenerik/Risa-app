package p055;

import p305.AbstractC3712;

/* renamed from: ʽⁱ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1452 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f5647;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final float f5648;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final float f5649;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f5650;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f5651;

    static {
        new C1473().m4278();
        AbstractC3712.m7802(0);
        AbstractC3712.m7802(1);
        AbstractC3712.m7802(2);
        AbstractC3712.m7802(3);
        AbstractC3712.m7802(4);
    }

    public C1452(C1473 c1473) {
        long j = c1473.f5765;
        long j2 = c1473.f5764;
        long j3 = c1473.f5761;
        float f = c1473.f5762;
        float f2 = c1473.f5763;
        this.f5651 = j;
        this.f5650 = j2;
        this.f5647 = j3;
        this.f5648 = f;
        this.f5649 = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1452)) {
            return false;
        }
        C1452 c1452 = (C1452) obj;
        return this.f5651 == c1452.f5651 && this.f5650 == c1452.f5650 && this.f5647 == c1452.f5647 && this.f5648 == c1452.f5648 && this.f5649 == c1452.f5649;
    }

    public final int hashCode() {
        long j = this.f5651;
        long j2 = this.f5650;
        int i = ((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.f5647;
        int i2 = (i + ((int) ((j3 >>> 32) ^ j3))) * 31;
        float f = this.f5648;
        int floatToIntBits = (i2 + (f != 0.0f ? Float.floatToIntBits(f) : 0)) * 31;
        float f2 = this.f5649;
        return floatToIntBits + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ʽⁱ.ـˆ, java.lang.Object] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1473 m4242() {
        ?? obj = new Object();
        obj.f5765 = this.f5651;
        obj.f5764 = this.f5650;
        obj.f5761 = this.f5647;
        obj.f5762 = this.f5648;
        obj.f5763 = this.f5649;
        return obj;
    }
}
