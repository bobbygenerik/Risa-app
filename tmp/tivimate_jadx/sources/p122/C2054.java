package p122;

/* renamed from: ˈˋ.ʿᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2054 extends AbstractC2037 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f8018;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean f8019;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f8020;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f8021;

    public C2054(int i, int i2, String str, boolean z) {
        this.f8021 = str;
        this.f8020 = i;
        this.f8018 = i2;
        this.f8019 = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2037) {
            C2054 c2054 = (C2054) ((AbstractC2037) obj);
            if (this.f8021.equals(c2054.f8021) && this.f8020 == c2054.f8020 && this.f8018 == c2054.f8018 && this.f8019 == c2054.f8019) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.f8021.hashCode() ^ 1000003) * 1000003) ^ this.f8020) * 1000003) ^ this.f8018) * 1000003) ^ (this.f8019 ? 1231 : 1237);
    }

    public final String toString() {
        return "ProcessDetails{processName=" + this.f8021 + ", pid=" + this.f8020 + ", importance=" + this.f8018 + ", defaultProcess=" + this.f8019 + "}";
    }
}
