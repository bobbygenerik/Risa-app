package p409;

import java.util.Arrays;
import p229.C3125;
import p296.AbstractC3659;
import p296.C3670;

/* renamed from: ﹳˊ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4855 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3670 f18196;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f18197;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3125 f18198;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f18199;

    public C4855(C3125 c3125, C3670 c3670, String str) {
        this.f18198 = c3125;
        this.f18196 = c3670;
        this.f18197 = str;
        this.f18199 = Arrays.hashCode(new Object[]{c3125, c3670, str});
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C4855)) {
            return false;
        }
        C4855 c4855 = (C4855) obj;
        return AbstractC3659.m7679(this.f18198, c4855.f18198) && AbstractC3659.m7679(this.f18196, c4855.f18196) && AbstractC3659.m7679(this.f18197, c4855.f18197);
    }

    public final int hashCode() {
        return this.f18199;
    }
}
