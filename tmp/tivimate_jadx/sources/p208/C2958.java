package p208;

import java.text.DateFormat;
import java.util.Date;
import java.util.regex.Pattern;
import p035.AbstractC1220;
import p048.AbstractC1373;
import p152.AbstractC2444;

/* renamed from: ˎᵢ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2958 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean f11278;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f11279;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final String f11280;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f11281;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f11282;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean f11283;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean f11284;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f11285;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f11286;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean f11287;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final Pattern f11275 = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final Pattern f11277 = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static final Pattern f11274 = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static final Pattern f11276 = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    public C2958(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4, String str5) {
        this.f11286 = str;
        this.f11285 = str2;
        this.f11279 = j;
        this.f11281 = str3;
        this.f11282 = str4;
        this.f11287 = z;
        this.f11283 = z2;
        this.f11284 = z3;
        this.f11278 = z4;
        this.f11280 = str5;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2958)) {
            return false;
        }
        C2958 c2958 = (C2958) obj;
        return AbstractC2444.m5562(c2958.f11286, this.f11286) && AbstractC2444.m5562(c2958.f11285, this.f11285) && c2958.f11279 == this.f11279 && AbstractC2444.m5562(c2958.f11281, this.f11281) && AbstractC2444.m5562(c2958.f11282, this.f11282) && c2958.f11287 == this.f11287 && c2958.f11283 == this.f11283 && c2958.f11284 == this.f11284 && c2958.f11278 == this.f11278 && AbstractC2444.m5562(c2958.f11280, this.f11280);
    }

    public final int hashCode() {
        int m3780 = AbstractC1220.m3780(AbstractC1220.m3780(527, 31, this.f11286), 31, this.f11285);
        long j = this.f11279;
        int m37802 = (((((((AbstractC1220.m3780(AbstractC1220.m3780((m3780 + ((int) (j ^ (j >>> 32)))) * 31, 31, this.f11281), 31, this.f11282) + (this.f11287 ? 1231 : 1237)) * 31) + (this.f11283 ? 1231 : 1237)) * 31) + (this.f11284 ? 1231 : 1237)) * 31) + (this.f11278 ? 1231 : 1237)) * 31;
        String str = this.f11280;
        return m37802 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return m6490(false);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String m6490(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f11286);
        sb.append('=');
        sb.append(this.f11285);
        if (this.f11284) {
            long j = this.f11279;
            if (j == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(((DateFormat) AbstractC1373.f5410.get()).format(new Date(j)));
            }
        }
        if (!this.f11278) {
            sb.append("; domain=");
            if (z) {
                sb.append(".");
            }
            sb.append(this.f11281);
        }
        sb.append("; path=");
        sb.append(this.f11282);
        if (this.f11287) {
            sb.append("; secure");
        }
        if (this.f11283) {
            sb.append("; httponly");
        }
        String str = this.f11280;
        if (str != null) {
            sb.append("; samesite=");
            sb.append(str);
        }
        return sb.toString();
    }
}
