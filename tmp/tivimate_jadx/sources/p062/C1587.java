package p062;

import android.os.Build;
import p035.AbstractC1220;
import p152.AbstractC2444;

/* renamed from: ʾˈ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1587 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1589 f6194;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f6195;

    public C1587(String str, C1589 c1589) {
        String str2 = Build.MODEL;
        String str3 = Build.VERSION.RELEASE;
        this.f6195 = str;
        this.f6194 = c1589;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1587)) {
            return false;
        }
        C1587 c1587 = (C1587) obj;
        if (!AbstractC2444.m5562(this.f6195, c1587.f6195)) {
            return false;
        }
        String str = Build.MODEL;
        if (!AbstractC2444.m5562(str, str)) {
            return false;
        }
        String str2 = Build.VERSION.RELEASE;
        return AbstractC2444.m5562(str2, str2) && this.f6194.equals(c1587.f6194);
    }

    public final int hashCode() {
        return this.f6194.hashCode() + ((EnumC1542.f6061.hashCode() + AbstractC1220.m3780((((Build.MODEL.hashCode() + (this.f6195.hashCode() * 31)) * 31) + 48517559) * 31, 31, Build.VERSION.RELEASE)) * 31);
    }

    public final String toString() {
        return "ApplicationInfo(appId=" + this.f6195 + ", deviceModel=" + Build.MODEL + ", sessionSdkVersion=3.0.0, osVersion=" + Build.VERSION.RELEASE + ", logEnvironment=" + EnumC1542.f6061 + ", androidAppInfo=" + this.f6194 + ')';
    }
}
