package p032;

import android.text.TextUtils;
import p035.AbstractC1220;

/* renamed from: ʼᵢ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1159 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean f4436;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f4437;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f4438;

    public C1159(String str, boolean z, boolean z2) {
        this.f4438 = str;
        this.f4437 = z;
        this.f4436 = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == C1159.class) {
            C1159 c1159 = (C1159) obj;
            if (TextUtils.equals(this.f4438, c1159.f4438) && this.f4437 == c1159.f4437 && this.f4436 == c1159.f4436) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((AbstractC1220.m3780(31, 31, this.f4438) + (this.f4437 ? 1231 : 1237)) * 31) + (this.f4436 ? 1231 : 1237);
    }
}
