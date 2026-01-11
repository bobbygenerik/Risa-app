package p322;

import java.util.HashSet;
import java.util.UUID;
import p152.AbstractC2444;

/* renamed from: ᴵˋ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3973 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final long f15309;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final HashSet f15310;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C3955 f15311;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3977 f15312;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C3977 f15313;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final long f15314;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f15315;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C3966 f15316;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final EnumC3961 f15317;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final UUID f15318;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final int f15319;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f15320;

    public C3973(UUID uuid, EnumC3961 enumC3961, HashSet hashSet, C3977 c3977, C3977 c39772, int i, int i2, C3966 c3966, long j, C3955 c3955, long j2, int i3) {
        this.f15318 = uuid;
        this.f15317 = enumC3961;
        this.f15310 = hashSet;
        this.f15312 = c3977;
        this.f15313 = c39772;
        this.f15320 = i;
        this.f15315 = i2;
        this.f15316 = c3966;
        this.f15309 = j;
        this.f15311 = c3955;
        this.f15314 = j2;
        this.f15319 = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !C3973.class.equals(obj.getClass())) {
            return false;
        }
        C3973 c3973 = (C3973) obj;
        if (this.f15320 == c3973.f15320 && this.f15315 == c3973.f15315 && AbstractC2444.m5562(this.f15318, c3973.f15318) && this.f15317 == c3973.f15317 && AbstractC2444.m5562(this.f15312, c3973.f15312) && this.f15316.equals(c3973.f15316) && this.f15309 == c3973.f15309 && AbstractC2444.m5562(this.f15311, c3973.f15311) && this.f15314 == c3973.f15314 && this.f15319 == c3973.f15319 && this.f15310.equals(c3973.f15310)) {
            return AbstractC2444.m5562(this.f15313, c3973.f15313);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.f15316.hashCode() + ((((((this.f15313.hashCode() + ((this.f15310.hashCode() + ((this.f15312.hashCode() + ((this.f15317.hashCode() + (this.f15318.hashCode() * 31)) * 31)) * 31)) * 31)) * 31) + this.f15320) * 31) + this.f15315) * 31)) * 31;
        long j = this.f15309;
        int i = (hashCode + ((int) (j ^ (j >>> 32)))) * 31;
        C3955 c3955 = this.f15311;
        int hashCode2 = (i + (c3955 != null ? c3955.hashCode() : 0)) * 31;
        long j2 = this.f15314;
        return ((hashCode2 + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.f15319;
    }

    public final String toString() {
        return "WorkInfo{id='" + this.f15318 + "', state=" + this.f15317 + ", outputData=" + this.f15312 + ", tags=" + this.f15310 + ", progress=" + this.f15313 + ", runAttemptCount=" + this.f15320 + ", generation=" + this.f15315 + ", constraints=" + this.f15316 + ", initialDelayMillis=" + this.f15309 + ", periodicityInfo=" + this.f15311 + ", nextScheduleTimeMillis=" + this.f15314 + "}, stopReason=" + this.f15319;
    }
}
