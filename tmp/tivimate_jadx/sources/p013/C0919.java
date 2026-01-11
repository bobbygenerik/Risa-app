package p013;

/* renamed from: ʻᵢ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0919 implements Comparable {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C0919 f3844 = new C0919();

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f3845 = 131594;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f3845 - ((C0919) obj).f3845;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        C0919 c0919 = obj instanceof C0919 ? (C0919) obj : null;
        return c0919 != null && this.f3845 == c0919.f3845;
    }

    public final int hashCode() {
        return this.f3845;
    }

    public final String toString() {
        return "2.2.10";
    }
}
