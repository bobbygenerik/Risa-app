package p308;

/* renamed from: ᐧٴ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3773 extends AbstractC3749 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Integer f14653;

    public C3773(Integer num) {
        this.f14653 = num;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3749)) {
            return false;
        }
        Integer num = this.f14653;
        C3773 c3773 = (C3773) ((AbstractC3749) obj);
        return num == null ? c3773.f14653 == null : num.equals(c3773.f14653);
    }

    public final int hashCode() {
        Integer num = this.f14653;
        return (num == null ? 0 : num.hashCode()) ^ 1000003;
    }

    public final String toString() {
        return "ExternalPRequestContext{originAssociatedProductId=" + this.f14653 + "}";
    }
}
