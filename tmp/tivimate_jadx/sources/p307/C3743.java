package p307;

import p010.AbstractC0844;

/* renamed from: ᐧـ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3743 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f14584;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3742 f14585;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f14586;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f14587;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f14588;

    public C3743(String str, String str2, String str3, C3742 c3742, int i) {
        this.f14588 = str;
        this.f14587 = str2;
        this.f14584 = str3;
        this.f14585 = c3742;
        this.f14586 = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C3743)) {
            return false;
        }
        C3743 c3743 = (C3743) obj;
        int i = c3743.f14586;
        C3742 c3742 = c3743.f14585;
        String str = c3743.f14584;
        String str2 = c3743.f14587;
        String str3 = c3743.f14588;
        String str4 = this.f14588;
        if (str4 == null) {
            if (str3 != null) {
                return false;
            }
        } else if (!str4.equals(str3)) {
            return false;
        }
        String str5 = this.f14587;
        if (str5 == null) {
            if (str2 != null) {
                return false;
            }
        } else if (!str5.equals(str2)) {
            return false;
        }
        String str6 = this.f14584;
        if (str6 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str6.equals(str)) {
            return false;
        }
        C3742 c37422 = this.f14585;
        if (c37422 == null) {
            if (c3742 != null) {
                return false;
            }
        } else if (!c37422.equals(c3742)) {
            return false;
        }
        int i2 = this.f14586;
        return i2 == 0 ? i == 0 : AbstractC0844.m3021(i2, i);
    }

    public final int hashCode() {
        String str = this.f14588;
        int hashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.f14587;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f14584;
        int hashCode3 = (hashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        C3742 c3742 = this.f14585;
        int hashCode4 = (hashCode3 ^ (c3742 == null ? 0 : c3742.hashCode())) * 1000003;
        int i = this.f14586;
        return (i != 0 ? AbstractC0844.m3018(i) : 0) ^ hashCode4;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("InstallationResponse{uri=");
        sb.append(this.f14588);
        sb.append(", fid=");
        sb.append(this.f14587);
        sb.append(", refreshToken=");
        sb.append(this.f14584);
        sb.append(", authToken=");
        sb.append(this.f14585);
        sb.append(", responseCode=");
        int i = this.f14586;
        sb.append(i != 1 ? i != 2 ? "null" : "BAD_CONFIG" : "OK");
        sb.append("}");
        return sb.toString();
    }
}
