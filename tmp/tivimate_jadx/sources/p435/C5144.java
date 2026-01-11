package p435;

import p081.C1716;
import p152.AbstractC2444;

/* renamed from: ﹶˑ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5144 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1716 f19418;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f19419;

    public C5144(String str, C1716 c1716) {
        this.f19419 = str;
        this.f19418 = c1716;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5144)) {
            return false;
        }
        C5144 c5144 = (C5144) obj;
        return AbstractC2444.m5562(this.f19419, c5144.f19419) && AbstractC2444.m5562(this.f19418, c5144.f19418);
    }

    public final int hashCode() {
        return this.f19418.hashCode() + (this.f19419.hashCode() * 31);
    }

    public final String toString() {
        return "MatchGroup(value=" + this.f19419 + ", range=" + this.f19418 + ')';
    }
}
