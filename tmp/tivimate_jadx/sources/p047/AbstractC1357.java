package p047;

import p055.C1486;

/* renamed from: ʽˑ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1357 implements Comparable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final long f5226;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String f5227;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f5228;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final String f5229;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C1486 f5230;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final long f5231;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final String f5232;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C1354 f5233;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final long f5234;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final boolean f5235;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final long f5236;

    public AbstractC1357(String str, C1354 c1354, long j, int i, long j2, C1486 c1486, String str2, String str3, long j3, long j4, boolean z) {
        this.f5227 = str;
        this.f5233 = c1354;
        this.f5226 = j;
        this.f5228 = i;
        this.f5234 = j2;
        this.f5230 = c1486;
        this.f5232 = str2;
        this.f5229 = str3;
        this.f5236 = j3;
        this.f5231 = j4;
        this.f5235 = z;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        Long l = (Long) obj;
        long longValue = l.longValue();
        long j = this.f5234;
        if (j > longValue) {
            return 1;
        }
        return j < l.longValue() ? -1 : 0;
    }
}
