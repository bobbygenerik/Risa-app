package p211;

import p010.AbstractC0844;
import p035.AbstractC1220;

/* renamed from: ˎﾞ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2980 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f11381;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f11382;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f11383;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final String f11384;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f11385;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f11386;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f11387;

    public C2980(String str, int i, String str2, String str3, long j, long j2, String str4) {
        this.f11386 = str;
        this.f11385 = i;
        this.f11381 = str2;
        this.f11382 = str3;
        this.f11383 = j;
        this.f11387 = j2;
        this.f11384 = str4;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2980)) {
            return false;
        }
        C2980 c2980 = (C2980) obj;
        String str = c2980.f11384;
        String str2 = c2980.f11382;
        String str3 = c2980.f11381;
        String str4 = c2980.f11386;
        String str5 = this.f11386;
        if (str5 == null) {
            if (str4 != null) {
                return false;
            }
        } else if (!str5.equals(str4)) {
            return false;
        }
        if (!AbstractC0844.m3021(this.f11385, c2980.f11385)) {
            return false;
        }
        String str6 = this.f11381;
        if (str6 == null) {
            if (str3 != null) {
                return false;
            }
        } else if (!str6.equals(str3)) {
            return false;
        }
        String str7 = this.f11382;
        if (str7 == null) {
            if (str2 != null) {
                return false;
            }
        } else if (!str7.equals(str2)) {
            return false;
        }
        if (this.f11383 != c2980.f11383 || this.f11387 != c2980.f11387) {
            return false;
        }
        String str8 = this.f11384;
        return str8 == null ? str == null : str8.equals(str);
    }

    public final int hashCode() {
        String str = this.f11386;
        int hashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ AbstractC0844.m3018(this.f11385)) * 1000003;
        String str2 = this.f11381;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f11382;
        int hashCode3 = (hashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j = this.f11383;
        int i = (hashCode3 ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.f11387;
        int i2 = (i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        String str4 = this.f11384;
        return (str4 != null ? str4.hashCode() : 0) ^ i2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PersistedInstallationEntry{firebaseInstallationId=");
        sb.append(this.f11386);
        sb.append(", registrationStatus=");
        int i = this.f11385;
        sb.append(i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "null" : "REGISTER_ERROR" : "REGISTERED" : "UNREGISTERED" : "NOT_GENERATED" : "ATTEMPT_MIGRATION");
        sb.append(", authToken=");
        sb.append(this.f11381);
        sb.append(", refreshToken=");
        sb.append(this.f11382);
        sb.append(", expiresInSecs=");
        sb.append(this.f11383);
        sb.append(", tokenCreationEpochInSecs=");
        sb.append(this.f11387);
        sb.append(", fisError=");
        return AbstractC1220.m3775(sb, this.f11384, "}");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ˎﾞ.ﹳٴ, java.lang.Object] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2981 m6507() {
        ?? obj = new Object();
        obj.f11393 = this.f11386;
        obj.f11392 = this.f11385;
        obj.f11388 = this.f11381;
        obj.f11389 = this.f11382;
        obj.f11390 = Long.valueOf(this.f11383);
        obj.f11394 = Long.valueOf(this.f11387);
        obj.f11391 = this.f11384;
        return obj;
    }
}
