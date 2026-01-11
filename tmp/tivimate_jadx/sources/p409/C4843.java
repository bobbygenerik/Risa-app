package p409;

import java.util.Arrays;
import p229.C3125;
import p296.AbstractC3659;
import p319.C3926;

/* renamed from: ﹳˊ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4843 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3926 f18166;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4855 f18167;

    public /* synthetic */ C4843(C4855 c4855, C3926 c3926) {
        this.f18167 = c4855;
        this.f18166 = c3926;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof C4843)) {
            C4843 c4843 = (C4843) obj;
            if (AbstractC3659.m7679(this.f18167, c4843.f18167) && AbstractC3659.m7679(this.f18166, c4843.f18166)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18167, this.f18166});
    }

    public final String toString() {
        C3125 c3125 = new C3125(this);
        c3125.m6847(this.f18167, "key");
        c3125.m6847(this.f18166, "feature");
        return c3125.toString();
    }
}
