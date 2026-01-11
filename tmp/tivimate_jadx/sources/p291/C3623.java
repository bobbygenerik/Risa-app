package p291;

/* renamed from: ٴᴵ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3623 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f14177;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f14178;

    public C3623(long j, long j2) {
        this.f14178 = j;
        this.f14177 = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C3623.class == obj.getClass()) {
            C3623 c3623 = (C3623) obj;
            if (this.f14178 == c3623.f14178 && this.f14177 == c3623.f14177) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.f14178) * 31) + ((int) this.f14177);
    }
}
