package p245;

import j$.util.Objects;

/* renamed from: יʻ.ˆﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3262 extends AbstractC3256 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3261 f12581;

    public C3262(C3261 c3261) {
        this.f12581 = c3261;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C3262) && ((C3262) obj).f12581 == this.f12581;
    }

    public final int hashCode() {
        return Objects.hash(C3262.class, this.f12581);
    }

    public final String toString() {
        return "XChaCha20Poly1305 Parameters (variant: " + this.f12581 + ")";
    }

    @Override // p277.AbstractC3528
    /* renamed from: ﹳٴ */
    public final boolean mo6546() {
        return this.f12581 != C3261.f12569;
    }
}
