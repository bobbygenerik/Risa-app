package p392;

import android.text.TextUtils;
import p035.AbstractC1220;
import p055.C1495;
import p305.AbstractC3731;

/* renamed from: ⁱי.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4687 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C1495 f17664;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f17665;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f17666;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1495 f17667;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f17668;

    public C4687(String str, C1495 c1495, C1495 c14952, int i, int i2) {
        AbstractC3731.m7849(i == 0 || i2 == 0);
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException();
        }
        this.f17668 = str;
        c1495.getClass();
        this.f17667 = c1495;
        c14952.getClass();
        this.f17664 = c14952;
        this.f17665 = i;
        this.f17666 = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C4687.class == obj.getClass()) {
            C4687 c4687 = (C4687) obj;
            if (this.f17665 == c4687.f17665 && this.f17666 == c4687.f17666 && this.f17668.equals(c4687.f17668) && this.f17667.equals(c4687.f17667) && this.f17664.equals(c4687.f17664)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f17664.hashCode() + ((this.f17667.hashCode() + AbstractC1220.m3780((((527 + this.f17665) * 31) + this.f17666) * 31, 31, this.f17668)) * 31);
    }
}
