package p212;

/* renamed from: ˏ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2993 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f11413;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2988 f11414;

    public C2993(C2988 c2988, boolean z) {
        this.f11414 = c2988;
        this.f11413 = z;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2993) {
            C2993 c2993 = (C2993) obj;
            if (c2993.f11414.equals(this.f11414) && c2993.f11413 == this.f11413) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f11414.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f11413).hashCode();
    }
}
