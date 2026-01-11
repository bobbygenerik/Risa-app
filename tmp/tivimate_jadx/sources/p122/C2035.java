package p122;

import p229.C3125;

/* renamed from: ˈˋ.ʻˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2035 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f7947;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f7948;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f7949;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f7950;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f7951;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C3125 f7952;

    public C2035(String str, String str2, String str3, String str4, int i, C3125 c3125) {
        if (str == null) {
            throw new NullPointerException("Null appIdentifier");
        }
        this.f7951 = str;
        if (str2 == null) {
            throw new NullPointerException("Null versionCode");
        }
        this.f7950 = str2;
        if (str3 == null) {
            throw new NullPointerException("Null versionName");
        }
        this.f7947 = str3;
        if (str4 == null) {
            throw new NullPointerException("Null installUuid");
        }
        this.f7948 = str4;
        this.f7949 = i;
        this.f7952 = c3125;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2035)) {
            return false;
        }
        C2035 c2035 = (C2035) obj;
        return this.f7951.equals(c2035.f7951) && this.f7950.equals(c2035.f7950) && this.f7947.equals(c2035.f7947) && this.f7948.equals(c2035.f7948) && this.f7949 == c2035.f7949 && this.f7952.equals(c2035.f7952);
    }

    public final int hashCode() {
        return ((((((((((this.f7951.hashCode() ^ 1000003) * 1000003) ^ this.f7950.hashCode()) * 1000003) ^ this.f7947.hashCode()) * 1000003) ^ this.f7948.hashCode()) * 1000003) ^ this.f7949) * 1000003) ^ this.f7952.hashCode();
    }

    public final String toString() {
        return "AppData{appIdentifier=" + this.f7951 + ", versionCode=" + this.f7950 + ", versionName=" + this.f7947 + ", installUuid=" + this.f7948 + ", deliveryMechanism=" + this.f7949 + ", developmentPlatformProvider=" + this.f7952 + "}";
    }
}
