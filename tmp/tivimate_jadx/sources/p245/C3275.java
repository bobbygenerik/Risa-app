package p245;

import j$.util.Objects;
import p035.AbstractC1220;
import p404.C4799;

/* renamed from: יʻ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3275 extends AbstractC3256 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f12623;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f12624;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C3261 f12625;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f12626;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f12627;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C3261 f12628;

    public C3275(int i, int i2, int i3, int i4, C3261 c3261, C3261 c32612) {
        this.f12627 = i;
        this.f12626 = i2;
        this.f12623 = i3;
        this.f12624 = i4;
        this.f12625 = c3261;
        this.f12628 = c32612;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ﹳʽ.ᴵᵔ] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C4799 m7096() {
        ?? obj = new Object();
        obj.f18052 = null;
        obj.f18050 = null;
        obj.f18053 = null;
        obj.f18049 = null;
        obj.f18051 = null;
        obj.f18054 = C3261.f12553;
        return obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3275)) {
            return false;
        }
        C3275 c3275 = (C3275) obj;
        return c3275.f12627 == this.f12627 && c3275.f12626 == this.f12626 && c3275.f12623 == this.f12623 && c3275.f12624 == this.f12624 && c3275.f12625 == this.f12625 && c3275.f12628 == this.f12628;
    }

    public final int hashCode() {
        return Objects.hash(C3275.class, Integer.valueOf(this.f12627), Integer.valueOf(this.f12626), Integer.valueOf(this.f12623), Integer.valueOf(this.f12624), this.f12625, this.f12628);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AesCtrHmacAead Parameters (variant: ");
        sb.append(this.f12625);
        sb.append(", hashType: ");
        sb.append(this.f12628);
        sb.append(", ");
        sb.append(this.f12623);
        sb.append("-byte IV, and ");
        sb.append(this.f12624);
        sb.append("-byte tags, and ");
        sb.append(this.f12627);
        sb.append("-byte AES key, and ");
        return AbstractC1220.m3782(sb, this.f12626, "-byte HMAC key)");
    }

    @Override // p277.AbstractC3528
    /* renamed from: ﹳٴ */
    public final boolean mo6546() {
        return this.f12625 != C3261.f12553;
    }
}
