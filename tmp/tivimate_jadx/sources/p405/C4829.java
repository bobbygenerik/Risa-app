package p405;

import j$.util.Objects;
import p035.AbstractC1220;
import ᐧᵎ.ᵢי;

/* renamed from: ﹳʾ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4829 extends AbstractC4819 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C4821 f18125;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C4816 f18126;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f18127;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f18128;

    public C4829(int i, int i2, C4821 c4821, C4816 c4816) {
        this.f18128 = i;
        this.f18127 = i2;
        this.f18125 = c4821;
        this.f18126 = c4816;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ᐧᵎ.ᵢי] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static ᵢי m9627() {
        ?? obj = new Object();
        ((ᵢי) obj).ʾˋ = null;
        ((ᵢי) obj).ᴵˊ = null;
        ((ᵢי) obj).ʽʽ = null;
        ((ᵢי) obj).ˈٴ = C4821.f18103;
        return obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C4829)) {
            return false;
        }
        C4829 c4829 = (C4829) obj;
        return c4829.f18128 == this.f18128 && c4829.m9628() == m9628() && c4829.f18125 == this.f18125 && c4829.f18126 == this.f18126;
    }

    public final int hashCode() {
        return Objects.hash(C4829.class, Integer.valueOf(this.f18128), Integer.valueOf(this.f18127), this.f18125, this.f18126);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("HMAC Parameters (variant: ");
        sb.append(this.f18125);
        sb.append(", hashType: ");
        sb.append(this.f18126);
        sb.append(", ");
        sb.append(this.f18127);
        sb.append("-byte tags, and ");
        return AbstractC1220.m3782(sb, this.f18128, "-byte key)");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m9628() {
        C4821 c4821 = C4821.f18103;
        int i = this.f18127;
        C4821 c48212 = this.f18125;
        if (c48212 == c4821) {
            return i;
        }
        if (c48212 != C4821.f18104 && c48212 != C4821.f18101 && c48212 != C4821.f18102) {
            throw new IllegalStateException("Unknown variant");
        }
        return i + 5;
    }

    @Override // p277.AbstractC3528
    /* renamed from: ﹳٴ */
    public final boolean mo6546() {
        return this.f18125 != C4821.f18103;
    }
}
