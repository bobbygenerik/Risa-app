package p127;

import android.net.Uri;
import j$.util.Objects;
import p017.AbstractC0996;
import p017.AbstractC1004;
import p017.C0956;
import p305.AbstractC3712;

/* renamed from: ˈـ.ٴᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2164 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final String f8428;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f8429;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final String f8430;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f8431;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f8432;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final String f8433;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Uri f8434;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final String f8435;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C0956 f8436;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0996 f8437;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final String f8438;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f8439;

    public C2164(C2158 c2158) {
        this.f8437 = AbstractC0996.m3270(c2158.f8397);
        this.f8436 = c2158.f8396.m3249();
        String str = c2158.f8391;
        String str2 = AbstractC3712.f14481;
        this.f8429 = str;
        this.f8431 = c2158.f8392;
        this.f8432 = c2158.f8399;
        this.f8434 = c2158.f8394;
        this.f8435 = c2158.f8395;
        this.f8439 = c2158.f8389;
        this.f8428 = c2158.f8388;
        this.f8430 = c2158.f8393;
        this.f8433 = c2158.f8398;
        this.f8438 = c2158.f8390;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2164.class != obj.getClass()) {
            return false;
        }
        C2164 c2164 = (C2164) obj;
        if (this.f8439 != c2164.f8439) {
            return false;
        }
        AbstractC0996 abstractC0996 = c2164.f8437;
        AbstractC0996 abstractC09962 = this.f8437;
        abstractC09962.getClass();
        return AbstractC1004.m3297(abstractC09962, abstractC0996) && this.f8436.equals(c2164.f8436) && Objects.equals(this.f8431, c2164.f8431) && Objects.equals(this.f8429, c2164.f8429) && Objects.equals(this.f8432, c2164.f8432) && Objects.equals(this.f8438, c2164.f8438) && Objects.equals(this.f8434, c2164.f8434) && Objects.equals(this.f8430, c2164.f8430) && Objects.equals(this.f8433, c2164.f8433) && Objects.equals(this.f8435, c2164.f8435) && Objects.equals(this.f8428, c2164.f8428);
    }

    public final int hashCode() {
        int hashCode = (this.f8436.hashCode() + ((this.f8437.hashCode() + 217) * 31)) * 31;
        String str = this.f8431;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f8429;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f8432;
        int hashCode4 = (((hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f8439) * 31;
        String str4 = this.f8438;
        int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Uri uri = this.f8434;
        int hashCode6 = (hashCode5 + (uri == null ? 0 : uri.hashCode())) * 31;
        String str5 = this.f8430;
        int hashCode7 = (hashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f8433;
        int hashCode8 = (hashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.f8435;
        int hashCode9 = (hashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f8428;
        return hashCode9 + (str8 != null ? str8.hashCode() : 0);
    }
}
