package p055;

/* renamed from: ʽⁱ.ᵎˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1483 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1447 f5833;

    public C1483(C1447 c1447) {
        this.f5833 = c1447;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1483) {
            return this.f5833.equals(((C1483) obj).f5833);
        }
        return false;
    }

    public final int hashCode() {
        return this.f5833.hashCode();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m4293(int... iArr) {
        for (int i : iArr) {
            if (this.f5833.f5639.get(i)) {
                return true;
            }
        }
        return false;
    }
}
