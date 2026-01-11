package p122;

import java.util.List;

/* renamed from: ˈˋ.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2060 extends AbstractC2083 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final List f8069;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f8070;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f8071;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f8072;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long f8073;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final String f8074;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f8075;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f8076;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f8077;

    public C2060(int i, String str, int i2, int i3, long j, long j2, long j3, String str2, List list) {
        this.f8076 = i;
        this.f8075 = str;
        this.f8070 = i2;
        this.f8071 = i3;
        this.f8072 = j;
        this.f8077 = j2;
        this.f8073 = j3;
        this.f8074 = str2;
        this.f8069 = list;
    }

    public final boolean equals(Object obj) {
        String str;
        List list;
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2083) {
            C2060 c2060 = (C2060) ((AbstractC2083) obj);
            List list2 = c2060.f8069;
            String str2 = c2060.f8074;
            if (this.f8076 == c2060.f8076 && this.f8075.equals(c2060.f8075) && this.f8070 == c2060.f8070 && this.f8071 == c2060.f8071 && this.f8072 == c2060.f8072 && this.f8077 == c2060.f8077 && this.f8073 == c2060.f8073 && ((str = this.f8074) != null ? str.equals(str2) : str2 == null) && ((list = this.f8069) != null ? list.equals(list2) : list2 == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (((((((this.f8076 ^ 1000003) * 1000003) ^ this.f8075.hashCode()) * 1000003) ^ this.f8070) * 1000003) ^ this.f8071) * 1000003;
        long j = this.f8072;
        int i = (hashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.f8077;
        int i2 = (i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        long j3 = this.f8073;
        int i3 = (i2 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        String str = this.f8074;
        int hashCode2 = (i3 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List list = this.f8069;
        return hashCode2 ^ (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        return "ApplicationExitInfo{pid=" + this.f8076 + ", processName=" + this.f8075 + ", reasonCode=" + this.f8070 + ", importance=" + this.f8071 + ", pss=" + this.f8072 + ", rss=" + this.f8077 + ", timestamp=" + this.f8073 + ", traceFile=" + this.f8074 + ", buildIdMappingForArch=" + this.f8069 + "}";
    }
}
