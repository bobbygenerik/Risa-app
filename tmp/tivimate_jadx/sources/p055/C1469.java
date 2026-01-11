package p055;

import p305.AbstractC3712;

/* renamed from: ʽⁱ.ˏᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1469 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C1469 f5752 = new C1469(0, 0);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final float f5753;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f5754;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f5755;

    static {
        AbstractC3712.m7802(0);
        AbstractC3712.m7802(1);
        AbstractC3712.m7802(3);
    }

    public C1469(float f, int i, int i2) {
        this.f5755 = i;
        this.f5754 = i2;
        this.f5753 = f;
    }

    public C1469(int i, int i2) {
        this(1.0f, i, i2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1469) {
            C1469 c1469 = (C1469) obj;
            if (this.f5755 == c1469.f5755 && this.f5754 == c1469.f5754 && this.f5753 == c1469.f5753) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.f5753) + ((((217 + this.f5755) * 31) + this.f5754) * 31);
    }
}
