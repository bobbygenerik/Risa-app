package p420;

/* renamed from: ﹳᵢ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4987 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f18627;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f18628;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f18629;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f18630;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f18631;

    public C4987(long j, Object obj) {
        this(obj, -1, -1, j, -1);
    }

    public C4987(Object obj) {
        this(-1L, obj);
    }

    public C4987(Object obj, int i, int i2, long j, int i3) {
        this.f18631 = obj;
        this.f18630 = i;
        this.f18627 = i2;
        this.f18628 = j;
        this.f18629 = i3;
    }

    public C4987(Object obj, long j, int i) {
        this(obj, -1, -1, j, i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4987)) {
            return false;
        }
        C4987 c4987 = (C4987) obj;
        return this.f18631.equals(c4987.f18631) && this.f18630 == c4987.f18630 && this.f18627 == c4987.f18627 && this.f18628 == c4987.f18628 && this.f18629 == c4987.f18629;
    }

    public final int hashCode() {
        return ((((((((this.f18631.hashCode() + 527) * 31) + this.f18630) * 31) + this.f18627) * 31) + ((int) this.f18628)) * 31) + this.f18629;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m9838() {
        return this.f18630 != -1;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4987 m9839(Object obj) {
        if (this.f18631.equals(obj)) {
            return this;
        }
        return new C4987(obj, this.f18630, this.f18627, this.f18628, this.f18629);
    }
}
