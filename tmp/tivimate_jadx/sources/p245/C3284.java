package p245;

import j$.util.Objects;
import p035.AbstractC1220;
import ˏˆ.ﹳٴ;

/* renamed from: יʻ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3284 extends AbstractC3256 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f12654;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3261 f12655;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f12656;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f12657;

    public C3284(int i, int i2, int i3, C3261 c3261) {
        this.f12657 = i;
        this.f12656 = i2;
        this.f12654 = i3;
        this.f12655 = c3261;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static ﹳٴ m7101() {
        ﹳٴ r0 = new ﹳٴ(23, false);
        r0.ᴵˊ = null;
        r0.ʽʽ = null;
        r0.ˈٴ = null;
        r0.ᴵᵔ = C3261.f12547;
        return r0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3284)) {
            return false;
        }
        C3284 c3284 = (C3284) obj;
        return c3284.f12657 == this.f12657 && c3284.f12656 == this.f12656 && c3284.f12654 == this.f12654 && c3284.f12655 == this.f12655;
    }

    public final int hashCode() {
        return Objects.hash(C3284.class, Integer.valueOf(this.f12657), Integer.valueOf(this.f12656), Integer.valueOf(this.f12654), this.f12655);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AesGcm Parameters (variant: ");
        sb.append(this.f12655);
        sb.append(", ");
        sb.append(this.f12656);
        sb.append("-byte IV, ");
        sb.append(this.f12654);
        sb.append("-byte tag, and ");
        return AbstractC1220.m3782(sb, this.f12657, "-byte key)");
    }

    @Override // p277.AbstractC3528
    /* renamed from: ﹳٴ */
    public final boolean mo6546() {
        return this.f12655 != C3261.f12547;
    }
}
