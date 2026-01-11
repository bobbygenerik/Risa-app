package p127;

import j$.util.Objects;
import p017.AbstractC0996;
import p017.AbstractC1004;
import p035.AbstractC1220;

/* renamed from: ˈـ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2147 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final AbstractC0996 f8343;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f8344;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C2174 f8345;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f8346;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f8347;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final String f8348;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final String f8349;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f8350;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f8351;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String f8352;

    public C2147(C2175 c2175, AbstractC0996 abstractC0996, C2174 c2174) {
        this.f8351 = c2175.f8519;
        this.f8350 = c2175.f8518;
        this.f8344 = c2175.f8513;
        this.f8346 = c2175.f8514;
        this.f8352 = c2175.f8516;
        this.f8348 = c2175.f8517;
        this.f8347 = c2175.f8520;
        this.f8349 = c2175.f8512;
        this.f8343 = abstractC0996;
        this.f8345 = c2174;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2147.class == obj.getClass()) {
            C2147 c2147 = (C2147) obj;
            if (this.f8351.equals(c2147.f8351) && this.f8350 == c2147.f8350 && this.f8344.equals(c2147.f8344) && this.f8346 == c2147.f8346 && this.f8347 == c2147.f8347) {
                AbstractC0996 abstractC0996 = c2147.f8343;
                AbstractC0996 abstractC09962 = this.f8343;
                abstractC09962.getClass();
                if (AbstractC1004.m3297(abstractC09962, abstractC0996) && this.f8345.equals(c2147.f8345) && Objects.equals(this.f8352, c2147.f8352) && Objects.equals(this.f8348, c2147.f8348) && Objects.equals(this.f8349, c2147.f8349)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.f8345.hashCode() + ((this.f8343.hashCode() + ((((AbstractC1220.m3780((AbstractC1220.m3780(217, 31, this.f8351) + this.f8350) * 31, 31, this.f8344) + this.f8346) * 31) + this.f8347) * 31)) * 31)) * 31;
        String str = this.f8352;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f8348;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f8349;
        return hashCode3 + (str3 != null ? str3.hashCode() : 0);
    }
}
