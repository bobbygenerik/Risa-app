package p062;

import p035.AbstractC1220;
import p137.AbstractC2305;
import p152.AbstractC2444;

/* renamed from: ʾˈ.ᴵˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1575 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f6155;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f6156;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C1570 f6157;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final String f6158;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f6159;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f6160;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String f6161;

    public C1575(String str, String str2, int i, long j, C1570 c1570, String str3, String str4) {
        this.f6160 = str;
        this.f6159 = str2;
        this.f6155 = i;
        this.f6156 = j;
        this.f6157 = c1570;
        this.f6161 = str3;
        this.f6158 = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1575)) {
            return false;
        }
        C1575 c1575 = (C1575) obj;
        return AbstractC2444.m5562(this.f6160, c1575.f6160) && AbstractC2444.m5562(this.f6159, c1575.f6159) && this.f6155 == c1575.f6155 && this.f6156 == c1575.f6156 && AbstractC2444.m5562(this.f6157, c1575.f6157) && AbstractC2444.m5562(this.f6161, c1575.f6161) && AbstractC2444.m5562(this.f6158, c1575.f6158);
    }

    public final int hashCode() {
        int m3780 = (AbstractC1220.m3780(this.f6160.hashCode() * 31, 31, this.f6159) + this.f6155) * 31;
        long j = this.f6156;
        return this.f6158.hashCode() + AbstractC1220.m3780((this.f6157.hashCode() + ((m3780 + ((int) (j ^ (j >>> 32)))) * 31)) * 31, 31, this.f6161);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SessionInfo(sessionId=");
        sb.append(this.f6160);
        sb.append(", firstSessionId=");
        sb.append(this.f6159);
        sb.append(", sessionIndex=");
        sb.append(this.f6155);
        sb.append(", eventTimestampUs=");
        sb.append(this.f6156);
        sb.append(", dataCollectionStatus=");
        sb.append(this.f6157);
        sb.append(", firebaseInstallationId=");
        sb.append(this.f6161);
        sb.append(", firebaseAuthenticationToken=");
        return AbstractC2305.m5384(sb, this.f6158, ')');
    }
}
