package p308;

import java.util.Arrays;

/* renamed from: ᐧٴ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3762 extends AbstractC3768 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final AbstractC3767 f14632;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final AbstractC3751 f14633;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f14634;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final byte[] f14635;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long f14636;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final AbstractC3769 f14637;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Integer f14638;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f14639;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String f14640;

    public C3762(long j, Integer num, AbstractC3751 abstractC3751, long j2, byte[] bArr, String str, long j3, AbstractC3769 abstractC3769, AbstractC3767 abstractC3767) {
        this.f14639 = j;
        this.f14638 = num;
        this.f14633 = abstractC3751;
        this.f14634 = j2;
        this.f14635 = bArr;
        this.f14640 = str;
        this.f14636 = j3;
        this.f14637 = abstractC3769;
        this.f14632 = abstractC3767;
    }

    public final boolean equals(Object obj) {
        Integer num;
        AbstractC3751 abstractC3751;
        String str;
        AbstractC3769 abstractC3769;
        AbstractC3767 abstractC3767;
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC3768) {
            AbstractC3768 abstractC3768 = (AbstractC3768) obj;
            C3762 c3762 = (C3762) abstractC3768;
            AbstractC3767 abstractC37672 = c3762.f14632;
            AbstractC3769 abstractC37692 = c3762.f14637;
            String str2 = c3762.f14640;
            AbstractC3751 abstractC37512 = c3762.f14633;
            Integer num2 = c3762.f14638;
            if (this.f14639 == c3762.f14639 && ((num = this.f14638) != null ? num.equals(num2) : num2 == null) && ((abstractC3751 = this.f14633) != null ? abstractC3751.equals(abstractC37512) : abstractC37512 == null) && this.f14634 == c3762.f14634) {
                if (Arrays.equals(this.f14635, abstractC3768 instanceof C3762 ? ((C3762) abstractC3768).f14635 : c3762.f14635) && ((str = this.f14640) != null ? str.equals(str2) : str2 == null) && this.f14636 == c3762.f14636 && ((abstractC3769 = this.f14637) != null ? abstractC3769.equals(abstractC37692) : abstractC37692 == null) && ((abstractC3767 = this.f14632) != null ? abstractC3767.equals(abstractC37672) : abstractC37672 == null)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f14639;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f14638;
        int hashCode = (i ^ (num == null ? 0 : num.hashCode())) * 1000003;
        AbstractC3751 abstractC3751 = this.f14633;
        int hashCode2 = (hashCode ^ (abstractC3751 == null ? 0 : abstractC3751.hashCode())) * 1000003;
        long j2 = this.f14634;
        int hashCode3 = (((hashCode2 ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f14635)) * 1000003;
        String str = this.f14640;
        int hashCode4 = (hashCode3 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j3 = this.f14636;
        int i2 = (hashCode4 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        AbstractC3769 abstractC3769 = this.f14637;
        int hashCode5 = (i2 ^ (abstractC3769 == null ? 0 : abstractC3769.hashCode())) * 1000003;
        AbstractC3767 abstractC3767 = this.f14632;
        return hashCode5 ^ (abstractC3767 != null ? abstractC3767.hashCode() : 0);
    }

    public final String toString() {
        return "LogEvent{eventTimeMs=" + this.f14639 + ", eventCode=" + this.f14638 + ", complianceData=" + this.f14633 + ", eventUptimeMs=" + this.f14634 + ", sourceExtension=" + Arrays.toString(this.f14635) + ", sourceExtensionJsonProto3=" + this.f14640 + ", timezoneOffsetSeconds=" + this.f14636 + ", networkConnectionInfo=" + this.f14637 + ", experimentIds=" + this.f14632 + "}";
    }
}
