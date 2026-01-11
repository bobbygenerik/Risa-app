package p062;

import p035.AbstractC1220;
import p152.AbstractC2444;
import p307.AbstractC3740;
import p438.AbstractC5176;

/* renamed from: ʾˈ.ᵔٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1583 {
    public static final C1546 Companion = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f6182;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f6183;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f6184;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f6185;

    public /* synthetic */ C1583(int i, String str, String str2, int i2, long j) {
        if (15 != (i & 15)) {
            AbstractC5176.m10159(i, 15, C1582.f6181.mo4337());
            throw null;
        }
        this.f6185 = str;
        this.f6184 = str2;
        this.f6182 = i2;
        this.f6183 = j;
    }

    public C1583(String str, String str2, int i, long j) {
        this.f6185 = str;
        this.f6184 = str2;
        this.f6182 = i;
        this.f6183 = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1583)) {
            return false;
        }
        C1583 c1583 = (C1583) obj;
        return AbstractC2444.m5562(this.f6185, c1583.f6185) && AbstractC2444.m5562(this.f6184, c1583.f6184) && this.f6182 == c1583.f6182 && this.f6183 == c1583.f6183;
    }

    public final int hashCode() {
        int m3780 = (AbstractC1220.m3780(this.f6185.hashCode() * 31, 31, this.f6184) + this.f6182) * 31;
        long j = this.f6183;
        return m3780 + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SessionDetails(sessionId=");
        sb.append(this.f6185);
        sb.append(", firstSessionId=");
        sb.append(this.f6184);
        sb.append(", sessionIndex=");
        sb.append(this.f6182);
        sb.append(", sessionStartTimestampUs=");
        return AbstractC3740.m7941(sb, this.f6183, ')');
    }
}
