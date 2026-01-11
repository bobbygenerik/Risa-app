package p291;

import j$.util.Objects;

/* renamed from: ٴᴵ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3610 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f14116;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f14117;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f14118;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f14119;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f14120;

    public C3610(String str, String str2, String str3, String str4, String str5) {
        this.f14120 = str;
        this.f14119 = str2;
        this.f14116 = str3;
        this.f14117 = str4;
        this.f14118 = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3610)) {
            return false;
        }
        C3610 c3610 = (C3610) obj;
        return Objects.equals(this.f14120, c3610.f14120) && Objects.equals(this.f14119, c3610.f14119) && Objects.equals(this.f14116, c3610.f14116) && Objects.equals(this.f14117, c3610.f14117) && Objects.equals(this.f14118, c3610.f14118);
    }

    public final int hashCode() {
        String str = this.f14120;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f14119;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f14116;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f14117;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f14118;
        return hashCode4 + (str5 != null ? str5.hashCode() : 0);
    }
}
