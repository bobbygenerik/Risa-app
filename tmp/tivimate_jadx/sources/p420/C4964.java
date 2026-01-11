package p420;

/* renamed from: ﹳᵢ.ˑٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4964 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f18492;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f18493;

    public C4964(int i, boolean z) {
        this.f18493 = i;
        this.f18492 = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C4964.class != obj.getClass()) {
            return false;
        }
        C4964 c4964 = (C4964) obj;
        return this.f18493 == c4964.f18493 && this.f18492 == c4964.f18492;
    }

    public final int hashCode() {
        return (this.f18493 * 31) + (this.f18492 ? 1 : 0);
    }
}
