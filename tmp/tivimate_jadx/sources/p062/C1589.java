package p062;

import android.os.Build;
import java.util.ArrayList;
import p035.AbstractC1220;
import p152.AbstractC2444;

/* renamed from: ʾˈ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1589 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f6198;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1576 f6199;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final ArrayList f6200;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f6201;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f6202;

    public C1589(String str, String str2, String str3, C1576 c1576, ArrayList arrayList) {
        String str4 = Build.MANUFACTURER;
        this.f6202 = str;
        this.f6201 = str2;
        this.f6198 = str3;
        this.f6199 = c1576;
        this.f6200 = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1589)) {
            return false;
        }
        C1589 c1589 = (C1589) obj;
        if (!AbstractC2444.m5562(this.f6202, c1589.f6202) || !AbstractC2444.m5562(this.f6201, c1589.f6201) || !AbstractC2444.m5562(this.f6198, c1589.f6198)) {
            return false;
        }
        String str = Build.MANUFACTURER;
        return AbstractC2444.m5562(str, str) && this.f6199.equals(c1589.f6199) && this.f6200.equals(c1589.f6200);
    }

    public final int hashCode() {
        return this.f6200.hashCode() + ((this.f6199.hashCode() + AbstractC1220.m3780(AbstractC1220.m3780(AbstractC1220.m3780(this.f6202.hashCode() * 31, 31, this.f6201), 31, this.f6198), 31, Build.MANUFACTURER)) * 31);
    }

    public final String toString() {
        return "AndroidApplicationInfo(packageName=" + this.f6202 + ", versionName=" + this.f6201 + ", appBuildVersion=" + this.f6198 + ", deviceManufacturer=" + Build.MANUFACTURER + ", currentProcessDetails=" + this.f6199 + ", appProcessDetails=" + this.f6200 + ')';
    }
}
