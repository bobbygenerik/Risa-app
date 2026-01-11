package p171;

import p305.AbstractC3712;

/* renamed from: ˊﾞ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2652 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f10074;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f10075 = 0;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long f10076;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f10077;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public long f10078;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f10079;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f10080;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long f10081;

    public C2652(long j, long j2, long j3, long j4, long j5, long j6) {
        this.f10080 = j;
        this.f10079 = j2;
        this.f10076 = j3;
        this.f10081 = j4;
        this.f10077 = j5;
        this.f10074 = j6;
        this.f10078 = m5933(j2, 0L, j3, j4, j5, j6);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static long m5933(long j, long j2, long j3, long j4, long j5, long j6) {
        if (j4 + 1 >= j5 || j2 + 1 >= j3) {
            return j4;
        }
        long j7 = ((float) (j - j2)) * (((float) (j5 - j4)) / ((float) (j3 - j2)));
        return AbstractC3712.m7767(((j7 + j4) - j6) - (j7 / 20), j4, j5 - 1);
    }
}
