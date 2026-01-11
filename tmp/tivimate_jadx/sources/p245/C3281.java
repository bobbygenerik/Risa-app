package p245;

import j$.util.Objects;
import p035.AbstractC1220;
import ˏˆ.ﹳٴ;

/* renamed from: יʻ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3281 extends AbstractC3256 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f12646;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3261 f12647;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f12648;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f12649;

    public C3281(int i, int i2, int i3, C3261 c3261) {
        this.f12649 = i;
        this.f12648 = i2;
        this.f12646 = i3;
        this.f12647 = c3261;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static ﹳٴ m7100() {
        ﹳٴ r0 = new ﹳٴ(22, false);
        r0.ᴵˊ = null;
        r0.ʽʽ = null;
        r0.ˈٴ = null;
        r0.ᴵᵔ = C3261.f12556;
        return r0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3281)) {
            return false;
        }
        C3281 c3281 = (C3281) obj;
        return c3281.f12649 == this.f12649 && c3281.f12648 == this.f12648 && c3281.f12646 == this.f12646 && c3281.f12647 == this.f12647;
    }

    public final int hashCode() {
        return Objects.hash(C3281.class, Integer.valueOf(this.f12649), Integer.valueOf(this.f12648), Integer.valueOf(this.f12646), this.f12647);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AesEax Parameters (variant: ");
        sb.append(this.f12647);
        sb.append(", ");
        sb.append(this.f12648);
        sb.append("-byte IV, ");
        sb.append(this.f12646);
        sb.append("-byte tag, and ");
        return AbstractC1220.m3782(sb, this.f12649, "-byte key)");
    }

    @Override // p277.AbstractC3528
    /* renamed from: ﹳٴ */
    public final boolean mo6546() {
        return this.f12647 != C3261.f12556;
    }
}
