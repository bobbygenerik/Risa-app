package p122;

import p035.AbstractC1220;

/* renamed from: ˈˋ.ᵎˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2101 extends AbstractC2073 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f8215;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f8216;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f8217;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f8218;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f8219;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String f8220;

    public C2101(String str, String str2, String str3, String str4, String str5, String str6) {
        this.f8219 = str;
        this.f8218 = str2;
        this.f8215 = str3;
        this.f8216 = str4;
        this.f8217 = str5;
        this.f8220 = str6;
    }

    public final boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2073) {
            C2101 c2101 = (C2101) ((AbstractC2073) obj);
            String str5 = c2101.f8220;
            String str6 = c2101.f8217;
            String str7 = c2101.f8216;
            String str8 = c2101.f8215;
            if (this.f8219.equals(c2101.f8219) && this.f8218.equals(c2101.f8218) && ((str = this.f8215) != null ? str.equals(str8) : str8 == null) && ((str2 = this.f8216) != null ? str2.equals(str7) : str7 == null) && ((str3 = this.f8217) != null ? str3.equals(str6) : str6 == null) && ((str4 = this.f8220) != null ? str4.equals(str5) : str5 == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (((this.f8219.hashCode() ^ 1000003) * 1000003) ^ this.f8218.hashCode()) * 1000003;
        String str = this.f8215;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * (-721379959);
        String str2 = this.f8216;
        int hashCode3 = (hashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f8217;
        int hashCode4 = (hashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f8220;
        return hashCode4 ^ (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Application{identifier=");
        sb.append(this.f8219);
        sb.append(", version=");
        sb.append(this.f8218);
        sb.append(", displayVersion=");
        sb.append(this.f8215);
        sb.append(", organization=null, installationUuid=");
        sb.append(this.f8216);
        sb.append(", developmentPlatform=");
        sb.append(this.f8217);
        sb.append(", developmentPlatformVersion=");
        return AbstractC1220.m3775(sb, this.f8220, "}");
    }
}
