package p245;

import j$.util.Objects;

/* renamed from: יʻ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3276 extends AbstractC3256 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3261 f12629;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f12630;

    public C3276(String str, C3261 c3261) {
        this.f12630 = str;
        this.f12629 = c3261;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3276)) {
            return false;
        }
        C3276 c3276 = (C3276) obj;
        return c3276.f12630.equals(this.f12630) && c3276.f12629.equals(this.f12629);
    }

    public final int hashCode() {
        return Objects.hash(C3276.class, this.f12630, this.f12629);
    }

    public final String toString() {
        return "LegacyKmsAead Parameters (keyUri: " + this.f12630 + ", variant: " + this.f12629 + ")";
    }

    @Override // p277.AbstractC3528
    /* renamed from: ﹳٴ */
    public final boolean mo6546() {
        return this.f12629 != C3261.f12552;
    }
}
