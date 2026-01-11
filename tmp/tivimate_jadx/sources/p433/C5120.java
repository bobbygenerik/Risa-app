package p433;

import android.text.TextUtils;

/* renamed from: ﹶˎ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5120 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f19244;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f19245;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f19246;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f19247;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f19248;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String f19249;

    public C5120(int i, int i2, String str, String str2, String str3, String str4) {
        this.f19248 = i;
        this.f19247 = i2;
        this.f19244 = str;
        this.f19245 = str2;
        this.f19246 = str3;
        this.f19249 = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5120.class == obj.getClass()) {
            C5120 c5120 = (C5120) obj;
            if (this.f19248 == c5120.f19248 && this.f19247 == c5120.f19247 && TextUtils.equals(this.f19244, c5120.f19244) && TextUtils.equals(this.f19245, c5120.f19245) && TextUtils.equals(this.f19246, c5120.f19246) && TextUtils.equals(this.f19249, c5120.f19249)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = ((this.f19248 * 31) + this.f19247) * 31;
        String str = this.f19244;
        int hashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f19245;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f19246;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f19249;
        return hashCode3 + (str4 != null ? str4.hashCode() : 0);
    }
}
