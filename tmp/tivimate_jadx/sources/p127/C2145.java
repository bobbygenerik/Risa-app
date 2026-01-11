package p127;

import java.util.Locale;
import p305.AbstractC3712;
import ˈˊ.ˉˆ;

/* renamed from: ˈـ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2145 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final byte[] f8334 = new byte[0];

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f8335;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f8336;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f8337;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte f8338;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean f8339;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final byte[] f8340;

    public C2145(C2171 c2171) {
        this.f8339 = c2171.f8495;
        this.f8338 = c2171.f8494;
        this.f8335 = c2171.f8491;
        this.f8336 = c2171.f8492;
        this.f8337 = c2171.f8493;
        this.f8340 = c2171.f8496;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m5097(int i) {
        return ˉˆ.ʼʼ(i + 1);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2145.class == obj.getClass()) {
            C2145 c2145 = (C2145) obj;
            if (this.f8338 == c2145.f8338 && this.f8335 == c2145.f8335 && this.f8339 == c2145.f8339 && this.f8336 == c2145.f8336 && this.f8337 == c2145.f8337) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = (((((527 + this.f8338) * 31) + this.f8335) * 31) + (this.f8339 ? 1 : 0)) * 31;
        long j = this.f8336;
        return ((i + ((int) (j ^ (j >>> 32)))) * 31) + this.f8337;
    }

    public final String toString() {
        Object[] objArr = {Byte.valueOf(this.f8338), Integer.valueOf(this.f8335), Long.valueOf(this.f8336), Integer.valueOf(this.f8337), Boolean.valueOf(this.f8339)};
        String str = AbstractC3712.f14481;
        return String.format(Locale.US, "RtpPacket(payloadType=%d, seq=%d, timestamp=%d, ssrc=%x, marker=%b)", objArr);
    }
}
