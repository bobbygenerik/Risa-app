package p318;

/* renamed from: ᴵˆ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3920 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final EnumC3916 f15183;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f15184;

    public C3920(Object obj, EnumC3916 enumC3916) {
        this.f15184 = obj;
        this.f15183 = enumC3916;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C3920) {
            C3920 c3920 = (C3920) obj;
            if (this.f15184.equals(c3920.f15184) && this.f15183.equals(c3920.f15183)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f15183.hashCode() ^ (((1000003 * 1000003) ^ this.f15184.hashCode()) * 1000003)) * (-721379959);
    }

    public final String toString() {
        return "Event{code=null, payload=" + this.f15184 + ", priority=" + this.f15183 + ", productData=null, eventContext=null}";
    }
}
