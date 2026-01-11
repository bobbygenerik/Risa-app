package p396;

import p035.AbstractC1220;

/* renamed from: ⁱᵎ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4742 extends AbstractC4737 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f17901;

    public C4742(int i) {
        this.f17901 = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C4742) && this.f17901 == ((C4742) obj).f17901;
    }

    public final int hashCode() {
        return this.f17901;
    }

    public final String toString() {
        return AbstractC1220.m3784(new StringBuilder("ConstraintsNotMet(reason="), this.f17901, ')');
    }
}
