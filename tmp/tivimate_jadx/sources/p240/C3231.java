package p240;

import androidx.work.OverwritingInputMerger;
import p010.AbstractC0844;
import p035.AbstractC1220;
import p137.AbstractC2305;
import p152.AbstractC2444;
import p230.C3162;
import p322.C3965;
import p322.C3966;
import p322.C3977;
import p322.EnumC3961;
import ˈˋ.ʾˊ;

/* renamed from: ˑᵎ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3231 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final int f12320;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final Boolean f12321;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public long f12322;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final long f12323;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f12324;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final long f12325;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public String f12326;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C3966 f12327;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f12328;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final long f12329;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final long f12330;

    /* renamed from: ˏי, reason: contains not printable characters */
    public final int f12331;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C3977 f12332;

    /* renamed from: יـ, reason: contains not printable characters */
    public final int f12333;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final int f12334;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final int f12335;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f12336;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public long f12337;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public long f12338;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public boolean f12339;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public EnumC3961 f12340;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f12341;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public int f12342;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final int f12343;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C3977 f12344;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static final String f12319 = C3965.m8128("WorkSpec");

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final C3162 f12318 = new C3162(2);

    public C3231(String str, EnumC3961 enumC3961, String str2, String str3, C3977 c3977, C3977 c39772, long j, long j2, long j3, C3966 c3966, int i, int i2, long j4, long j5, long j6, long j7, boolean z, int i3, int i4, int i5, long j8, int i6, int i7, String str4, Boolean bool) {
        this.f12341 = str;
        this.f12340 = enumC3961;
        this.f12324 = str2;
        this.f12328 = str3;
        this.f12332 = c3977;
        this.f12344 = c39772;
        this.f12336 = j;
        this.f12338 = j2;
        this.f12322 = j3;
        this.f12327 = c3966;
        this.f12335 = i;
        this.f12343 = i2;
        this.f12329 = j4;
        this.f12337 = j5;
        this.f12330 = j6;
        this.f12323 = j7;
        this.f12339 = z;
        this.f12342 = i3;
        this.f12333 = i4;
        this.f12331 = i5;
        this.f12325 = j8;
        this.f12320 = i6;
        this.f12334 = i7;
        this.f12326 = str4;
        this.f12321 = bool;
    }

    public /* synthetic */ C3231(String str, EnumC3961 enumC3961, String str2, String str3, C3977 c3977, C3977 c39772, long j, long j2, long j3, C3966 c3966, int i, int i2, long j4, long j5, long j6, long j7, boolean z, int i3, int i4, long j8, int i5, int i6, String str4, Boolean bool, int i7) {
        this(str, (i7 & 2) != 0 ? EnumC3961.f15274 : enumC3961, str2, (i7 & 8) != 0 ? OverwritingInputMerger.class.getName() : str3, (i7 & 16) != 0 ? C3977.f15328 : c3977, (i7 & 32) != 0 ? C3977.f15328 : c39772, (i7 & 64) != 0 ? 0L : j, (i7 & 128) != 0 ? 0L : j2, (i7 & 256) != 0 ? 0L : j3, (i7 & 512) != 0 ? C3966.f15288 : c3966, (i7 & 1024) != 0 ? 0 : i, (i7 & 2048) != 0 ? 1 : i2, (i7 & 4096) != 0 ? 30000L : j4, (i7 & 8192) != 0 ? -1L : j5, (i7 & 16384) != 0 ? 0L : j6, (32768 & i7) != 0 ? -1L : j7, (65536 & i7) != 0 ? false : z, (131072 & i7) != 0 ? 1 : i3, (262144 & i7) != 0 ? 0 : i4, 0, (1048576 & i7) != 0 ? Long.MAX_VALUE : j8, (2097152 & i7) != 0 ? 0 : i5, (4194304 & i7) != 0 ? -256 : i6, (8388608 & i7) != 0 ? null : str4, (i7 & 16777216) != 0 ? Boolean.FALSE : bool);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C3231 m7059(C3231 c3231, String str, EnumC3961 enumC3961, String str2, C3977 c3977, int i, long j, int i2, int i3, long j2, int i4, int i5) {
        String str3 = (i5 & 1) != 0 ? c3231.f12341 : str;
        EnumC3961 enumC39612 = (i5 & 2) != 0 ? c3231.f12340 : enumC3961;
        String str4 = (i5 & 4) != 0 ? c3231.f12324 : str2;
        String str5 = c3231.f12328;
        C3977 c39772 = (i5 & 16) != 0 ? c3231.f12332 : c3977;
        C3977 c39773 = c3231.f12344;
        long j3 = c3231.f12336;
        long j4 = c3231.f12338;
        long j5 = c3231.f12322;
        C3966 c3966 = c3231.f12327;
        int i6 = (i5 & 1024) != 0 ? c3231.f12335 : i;
        int i7 = c3231.f12343;
        long j6 = c3231.f12329;
        long j7 = (i5 & 8192) != 0 ? c3231.f12337 : j;
        long j8 = c3231.f12330;
        long j9 = c3231.f12323;
        boolean z = c3231.f12339;
        int i8 = c3231.f12342;
        int i9 = (i5 & 262144) != 0 ? c3231.f12333 : i2;
        int i10 = (i5 & 524288) != 0 ? c3231.f12331 : i3;
        long j10 = (i5 & 1048576) != 0 ? c3231.f12325 : j2;
        int i11 = (i5 & 2097152) != 0 ? c3231.f12320 : i4;
        int i12 = c3231.f12334;
        String str6 = c3231.f12326;
        Boolean bool = c3231.f12321;
        c3231.getClass();
        return new C3231(str3, enumC39612, str4, str5, c39772, c39773, j3, j4, j5, c3966, i6, i7, j6, j7, j8, j9, z, i8, i9, i10, j10, i11, i12, str6, bool);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3231)) {
            return false;
        }
        C3231 c3231 = (C3231) obj;
        return AbstractC2444.m5562(this.f12341, c3231.f12341) && this.f12340 == c3231.f12340 && AbstractC2444.m5562(this.f12324, c3231.f12324) && AbstractC2444.m5562(this.f12328, c3231.f12328) && AbstractC2444.m5562(this.f12332, c3231.f12332) && AbstractC2444.m5562(this.f12344, c3231.f12344) && this.f12336 == c3231.f12336 && this.f12338 == c3231.f12338 && this.f12322 == c3231.f12322 && AbstractC2444.m5562(this.f12327, c3231.f12327) && this.f12335 == c3231.f12335 && this.f12343 == c3231.f12343 && this.f12329 == c3231.f12329 && this.f12337 == c3231.f12337 && this.f12330 == c3231.f12330 && this.f12323 == c3231.f12323 && this.f12339 == c3231.f12339 && this.f12342 == c3231.f12342 && this.f12333 == c3231.f12333 && this.f12331 == c3231.f12331 && this.f12325 == c3231.f12325 && this.f12320 == c3231.f12320 && this.f12334 == c3231.f12334 && AbstractC2444.m5562(this.f12326, c3231.f12326) && AbstractC2444.m5562(this.f12321, c3231.f12321);
    }

    public final int hashCode() {
        int hashCode = (this.f12344.hashCode() + ((this.f12332.hashCode() + AbstractC1220.m3780(AbstractC1220.m3780((this.f12340.hashCode() + (this.f12341.hashCode() * 31)) * 31, 31, this.f12324), 31, this.f12328)) * 31)) * 31;
        long j = this.f12336;
        int i = (hashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.f12338;
        int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.f12322;
        int m3018 = (AbstractC0844.m3018(this.f12343) + ((((this.f12327.hashCode() + ((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31)) * 31) + this.f12335) * 31)) * 31;
        long j4 = this.f12329;
        int i3 = (m3018 + ((int) (j4 ^ (j4 >>> 32)))) * 31;
        long j5 = this.f12337;
        int i4 = (i3 + ((int) (j5 ^ (j5 >>> 32)))) * 31;
        long j6 = this.f12330;
        int i5 = (i4 + ((int) (j6 ^ (j6 >>> 32)))) * 31;
        long j7 = this.f12323;
        int m30182 = (((((AbstractC0844.m3018(this.f12342) + ((((i5 + ((int) (j7 ^ (j7 >>> 32)))) * 31) + (this.f12339 ? 1231 : 1237)) * 31)) * 31) + this.f12333) * 31) + this.f12331) * 31;
        long j8 = this.f12325;
        int i6 = (((((m30182 + ((int) ((j8 >>> 32) ^ j8))) * 31) + this.f12320) * 31) + this.f12334) * 31;
        String str = this.f12326;
        int hashCode2 = (i6 + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.f12321;
        return hashCode2 + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        return AbstractC2305.m5384(new StringBuilder("{WorkSpec: "), this.f12341, '}');
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m7060() {
        return this.f12338 != 0;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long m7061() {
        return ʾˊ.ˑﹳ(this.f12340 == EnumC3961.f15274 && this.f12335 > 0, this.f12335, this.f12343, this.f12329, this.f12337, this.f12333, m7060(), this.f12336, this.f12322, this.f12338, this.f12325);
    }
}
