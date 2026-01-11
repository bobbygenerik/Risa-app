package p308;

import java.util.ArrayList;

/* renamed from: ᐧٴ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3760 extends AbstractC3759 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3771 f14623;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Integer f14624;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f14625;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f14626;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f14627;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final ArrayList f14628;

    public C3760(long j, long j2, C3771 c3771, Integer num, String str, ArrayList arrayList) {
        EnumC3764 enumC3764 = EnumC3764.f14641;
        this.f14627 = j;
        this.f14626 = j2;
        this.f14623 = c3771;
        this.f14624 = num;
        this.f14625 = str;
        this.f14628 = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3759)) {
            return false;
        }
        C3760 c3760 = (C3760) ((AbstractC3759) obj);
        Object obj2 = EnumC3764.f14641;
        ArrayList arrayList = c3760.f14628;
        String str = c3760.f14625;
        Integer num = c3760.f14624;
        C3771 c3771 = c3760.f14623;
        if (this.f14627 != c3760.f14627 || this.f14626 != c3760.f14626 || !this.f14623.equals(c3771)) {
            return false;
        }
        Integer num2 = this.f14624;
        if (num2 == null) {
            if (num != null) {
                return false;
            }
        } else if (!num2.equals(num)) {
            return false;
        }
        String str2 = this.f14625;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        return this.f14628.equals(arrayList) && obj2.equals(obj2);
    }

    public final int hashCode() {
        long j = this.f14627;
        long j2 = this.f14626;
        int hashCode = (((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f14623.hashCode()) * 1000003;
        Integer num = this.f14624;
        int hashCode2 = (hashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f14625;
        return ((((hashCode2 ^ (str != null ? str.hashCode() : 0)) * 1000003) ^ this.f14628.hashCode()) * 1000003) ^ EnumC3764.f14641.hashCode();
    }

    public final String toString() {
        return "LogRequest{requestTimeMs=" + this.f14627 + ", requestUptimeMs=" + this.f14626 + ", clientInfo=" + this.f14623 + ", logSource=" + this.f14624 + ", logSourceName=" + this.f14625 + ", logEvents=" + this.f14628 + ", qosTier=" + EnumC3764.f14641 + "}";
    }
}
