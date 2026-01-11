package p122;

/* renamed from: ˈˋ.ˈˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2059 extends AbstractC2084 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f8065;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean f8066;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f8067;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f8068;

    public C2059(int i, String str, String str2, boolean z) {
        this.f8068 = i;
        this.f8067 = str;
        this.f8065 = str2;
        this.f8066 = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2084) {
            C2059 c2059 = (C2059) ((AbstractC2084) obj);
            if (this.f8068 == c2059.f8068 && this.f8067.equals(c2059.f8067) && this.f8065.equals(c2059.f8065) && this.f8066 == c2059.f8066) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.f8068 ^ 1000003) * 1000003) ^ this.f8067.hashCode()) * 1000003) ^ this.f8065.hashCode()) * 1000003) ^ (this.f8066 ? 1231 : 1237);
    }

    public final String toString() {
        return "OperatingSystem{platform=" + this.f8068 + ", version=" + this.f8067 + ", buildVersion=" + this.f8065 + ", jailbroken=" + this.f8066 + "}";
    }
}
