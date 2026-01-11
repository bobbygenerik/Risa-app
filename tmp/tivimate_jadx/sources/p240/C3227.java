package p240;

import java.util.List;
import p010.AbstractC0844;
import p137.AbstractC2305;
import p152.AbstractC2444;
import p322.C3966;
import p322.C3977;
import p322.EnumC3961;

/* renamed from: ˑᵎ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3227 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final int f12294;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final List f12295;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3977 f12296;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final long f12297;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f12298;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final int f12299;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final int f12300;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f12301;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final long f12302;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C3966 f12303;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final long f12304;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int f12305;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final List f12306;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final EnumC3961 f12307;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f12308;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final int f12309;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f12310;

    public C3227(String str, EnumC3961 enumC3961, C3977 c3977, long j, long j2, long j3, C3966 c3966, int i, int i2, long j4, long j5, int i3, int i4, long j6, int i5, List list, List list2) {
        this.f12308 = str;
        this.f12307 = enumC3961;
        this.f12296 = c3977;
        this.f12298 = j;
        this.f12301 = j2;
        this.f12310 = j3;
        this.f12303 = c3966;
        this.f12305 = i;
        this.f12294 = i2;
        this.f12297 = j4;
        this.f12302 = j5;
        this.f12309 = i3;
        this.f12299 = i4;
        this.f12304 = j6;
        this.f12300 = i5;
        this.f12295 = list;
        this.f12306 = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3227)) {
            return false;
        }
        C3227 c3227 = (C3227) obj;
        return AbstractC2444.m5562(this.f12308, c3227.f12308) && this.f12307 == c3227.f12307 && AbstractC2444.m5562(this.f12296, c3227.f12296) && this.f12298 == c3227.f12298 && this.f12301 == c3227.f12301 && this.f12310 == c3227.f12310 && this.f12303.equals(c3227.f12303) && this.f12305 == c3227.f12305 && this.f12294 == c3227.f12294 && this.f12297 == c3227.f12297 && this.f12302 == c3227.f12302 && this.f12309 == c3227.f12309 && this.f12299 == c3227.f12299 && this.f12304 == c3227.f12304 && this.f12300 == c3227.f12300 && AbstractC2444.m5562(this.f12295, c3227.f12295) && AbstractC2444.m5562(this.f12306, c3227.f12306);
    }

    public final int hashCode() {
        int hashCode = (this.f12296.hashCode() + ((this.f12307.hashCode() + (this.f12308.hashCode() * 31)) * 31)) * 31;
        long j = this.f12298;
        int i = (hashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.f12301;
        int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.f12310;
        int m3018 = (AbstractC0844.m3018(this.f12294) + ((((this.f12303.hashCode() + ((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31)) * 31) + this.f12305) * 31)) * 31;
        long j4 = this.f12297;
        int i3 = (m3018 + ((int) (j4 ^ (j4 >>> 32)))) * 31;
        long j5 = this.f12302;
        int i4 = (((((i3 + ((int) (j5 ^ (j5 >>> 32)))) * 31) + this.f12309) * 31) + this.f12299) * 31;
        long j6 = this.f12304;
        return this.f12306.hashCode() + ((this.f12295.hashCode() + ((((i4 + ((int) (j6 ^ (j6 >>> 32)))) * 31) + this.f12300) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("WorkInfoPojo(id=");
        sb.append(this.f12308);
        sb.append(", state=");
        sb.append(this.f12307);
        sb.append(", output=");
        sb.append(this.f12296);
        sb.append(", initialDelay=");
        sb.append(this.f12298);
        sb.append(", intervalDuration=");
        sb.append(this.f12301);
        sb.append(", flexDuration=");
        sb.append(this.f12310);
        sb.append(", constraints=");
        sb.append(this.f12303);
        sb.append(", runAttemptCount=");
        sb.append(this.f12305);
        sb.append(", backoffPolicy=");
        int i = this.f12294;
        sb.append(i != 1 ? i != 2 ? "null" : "LINEAR" : "EXPONENTIAL");
        sb.append(", backoffDelayDuration=");
        sb.append(this.f12297);
        sb.append(", lastEnqueueTime=");
        sb.append(this.f12302);
        sb.append(", periodCount=");
        sb.append(this.f12309);
        sb.append(", generation=");
        sb.append(this.f12299);
        sb.append(", nextScheduleTimeOverride=");
        sb.append(this.f12304);
        sb.append(", stopReason=");
        sb.append(this.f12300);
        sb.append(", tags=");
        sb.append(this.f12295);
        sb.append(", progress=");
        return AbstractC2305.m5369(sb, this.f12306, ')');
    }
}
