package p392;

/* renamed from: ⁱי.ᐧᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4678 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C4678 f17553 = new C4678(0, false);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f17554;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f17555;

    public C4678(int i, boolean z) {
        this.f17555 = i;
        this.f17554 = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C4678.class != obj.getClass()) {
            return false;
        }
        C4678 c4678 = (C4678) obj;
        return this.f17555 == c4678.f17555 && this.f17554 == c4678.f17554;
    }

    public final int hashCode() {
        return (this.f17555 << 1) + (this.f17554 ? 1 : 0);
    }
}
