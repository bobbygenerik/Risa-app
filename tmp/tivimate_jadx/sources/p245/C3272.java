package p245;

import j$.util.Objects;

/* renamed from: יʻ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3272 extends AbstractC3256 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3261 f12610;

    public C3272(C3261 c3261) {
        this.f12610 = c3261;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C3272) && ((C3272) obj).f12610 == this.f12610;
    }

    public final int hashCode() {
        return Objects.hash(C3272.class, this.f12610);
    }

    public final String toString() {
        return "ChaCha20Poly1305 Parameters (variant: " + this.f12610 + ")";
    }

    @Override // p277.AbstractC3528
    /* renamed from: ﹳٴ */
    public final boolean mo6546() {
        return this.f12610 != C3261.f12544;
    }
}
