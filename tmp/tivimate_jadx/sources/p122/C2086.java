package p122;

import java.util.List;
import p035.AbstractC1220;

/* renamed from: ˈˋ.ٴʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2086 extends AbstractC2114 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final AbstractC2084 f8160;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f8161;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final AbstractC2042 f8162;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f8163;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Long f8164;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final List f8165;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final AbstractC2073 f8166;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final AbstractC2087 f8167;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f8168;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f8169;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final int f8170;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean f8171;

    public C2086(String str, String str2, String str3, long j, Long l, boolean z, AbstractC2073 abstractC2073, AbstractC2087 abstractC2087, AbstractC2084 abstractC2084, AbstractC2042 abstractC2042, List list, int i) {
        this.f8169 = str;
        this.f8168 = str2;
        this.f8161 = str3;
        this.f8163 = j;
        this.f8164 = l;
        this.f8171 = z;
        this.f8166 = abstractC2073;
        this.f8167 = abstractC2087;
        this.f8160 = abstractC2084;
        this.f8162 = abstractC2042;
        this.f8165 = list;
        this.f8170 = i;
    }

    public final boolean equals(Object obj) {
        String str;
        Long l;
        AbstractC2087 abstractC2087;
        AbstractC2084 abstractC2084;
        AbstractC2042 abstractC2042;
        List list;
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2114) {
            C2086 c2086 = (C2086) ((AbstractC2114) obj);
            List list2 = c2086.f8165;
            AbstractC2042 abstractC20422 = c2086.f8162;
            AbstractC2084 abstractC20842 = c2086.f8160;
            AbstractC2087 abstractC20872 = c2086.f8167;
            Long l2 = c2086.f8164;
            String str2 = c2086.f8161;
            if (this.f8169.equals(c2086.f8169) && this.f8168.equals(c2086.f8168) && ((str = this.f8161) != null ? str.equals(str2) : str2 == null) && this.f8163 == c2086.f8163 && ((l = this.f8164) != null ? l.equals(l2) : l2 == null) && this.f8171 == c2086.f8171 && this.f8166.equals(c2086.f8166) && ((abstractC2087 = this.f8167) != null ? abstractC2087.equals(abstractC20872) : abstractC20872 == null) && ((abstractC2084 = this.f8160) != null ? abstractC2084.equals(abstractC20842) : abstractC20842 == null) && ((abstractC2042 = this.f8162) != null ? abstractC2042.equals(abstractC20422) : abstractC20422 == null) && ((list = this.f8165) != null ? list.equals(list2) : list2 == null) && this.f8170 == c2086.f8170) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (((this.f8169.hashCode() ^ 1000003) * 1000003) ^ this.f8168.hashCode()) * 1000003;
        String str = this.f8161;
        int hashCode2 = str == null ? 0 : str.hashCode();
        long j = this.f8163;
        int i = (((hashCode ^ hashCode2) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        Long l = this.f8164;
        int hashCode3 = (((((i ^ (l == null ? 0 : l.hashCode())) * 1000003) ^ (this.f8171 ? 1231 : 1237)) * 1000003) ^ this.f8166.hashCode()) * 1000003;
        AbstractC2087 abstractC2087 = this.f8167;
        int hashCode4 = (hashCode3 ^ (abstractC2087 == null ? 0 : abstractC2087.hashCode())) * 1000003;
        AbstractC2084 abstractC2084 = this.f8160;
        int hashCode5 = (hashCode4 ^ (abstractC2084 == null ? 0 : abstractC2084.hashCode())) * 1000003;
        AbstractC2042 abstractC2042 = this.f8162;
        int hashCode6 = (hashCode5 ^ (abstractC2042 == null ? 0 : abstractC2042.hashCode())) * 1000003;
        List list = this.f8165;
        return ((hashCode6 ^ (list != null ? list.hashCode() : 0)) * 1000003) ^ this.f8170;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Session{generator=");
        sb.append(this.f8169);
        sb.append(", identifier=");
        sb.append(this.f8168);
        sb.append(", appQualitySessionId=");
        sb.append(this.f8161);
        sb.append(", startedAt=");
        sb.append(this.f8163);
        sb.append(", endedAt=");
        sb.append(this.f8164);
        sb.append(", crashed=");
        sb.append(this.f8171);
        sb.append(", app=");
        sb.append(this.f8166);
        sb.append(", user=");
        sb.append(this.f8167);
        sb.append(", os=");
        sb.append(this.f8160);
        sb.append(", device=");
        sb.append(this.f8162);
        sb.append(", events=");
        sb.append(this.f8165);
        sb.append(", generatorType=");
        return AbstractC1220.m3782(sb, this.f8170, "}");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ˈˋ.ᵎⁱ, java.lang.Object] */
    @Override // p122.AbstractC2114
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2103 mo5080() {
        ?? obj = new Object();
        obj.f8238 = this.f8169;
        obj.f8237 = this.f8168;
        obj.f8229 = this.f8161;
        obj.f8231 = this.f8163;
        obj.f8233 = this.f8164;
        obj.f8240 = this.f8171;
        obj.f8235 = this.f8166;
        obj.f8236 = this.f8167;
        obj.f8228 = this.f8160;
        obj.f8230 = this.f8162;
        obj.f8234 = this.f8165;
        obj.f8239 = this.f8170;
        obj.f8232 = (byte) 7;
        return obj;
    }
}
