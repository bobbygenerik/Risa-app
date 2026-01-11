package p245;

import j$.util.Objects;

/* renamed from: יʻ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3277 extends AbstractC3256 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3261 f12631;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AbstractC3256 f12632;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f12633;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3261 f12634;

    public C3277(C3261 c3261, String str, C3261 c32612, AbstractC3256 abstractC3256) {
        this.f12634 = c3261;
        this.f12633 = str;
        this.f12631 = c32612;
        this.f12632 = abstractC3256;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3277)) {
            return false;
        }
        C3277 c3277 = (C3277) obj;
        return c3277.f12631.equals(this.f12631) && c3277.f12632.equals(this.f12632) && c3277.f12633.equals(this.f12633) && c3277.f12634.equals(this.f12634);
    }

    public final int hashCode() {
        return Objects.hash(C3277.class, this.f12633, this.f12631, this.f12632, this.f12634);
    }

    public final String toString() {
        return "LegacyKmsEnvelopeAead Parameters (kekUri: " + this.f12633 + ", dekParsingStrategy: " + this.f12631 + ", dekParametersForNewKeys: " + this.f12632 + ", variant: " + this.f12634 + ")";
    }

    @Override // p277.AbstractC3528
    /* renamed from: ﹳٴ */
    public final boolean mo6546() {
        return this.f12634 != C3261.f12559;
    }
}
