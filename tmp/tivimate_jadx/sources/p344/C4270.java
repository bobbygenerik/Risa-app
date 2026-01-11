package p344;

/* renamed from: ᵎˑ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4270 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f15843;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f15844;

    public C4270(int i, String str) {
        this.f15844 = str;
        this.f15843 = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C4270.class != obj.getClass()) {
            return false;
        }
        C4270 c4270 = (C4270) obj;
        if (this.f15843 != c4270.f15843) {
            return false;
        }
        return this.f15844.equals(c4270.f15844);
    }

    public final int hashCode() {
        return (this.f15844.hashCode() * 31) + this.f15843;
    }
}
