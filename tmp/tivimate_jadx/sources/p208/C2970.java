package p208;

import java.util.ArrayList;
import java.util.Set;
import p152.AbstractC2444;
import p430.AbstractC5099;
import ˈˊ.ˉˆ;

/* renamed from: ˎᵢ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2970 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C2970 f11347 = new C2970(AbstractC5099.m10031(new ArrayList()), null);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ˉˆ f11348;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Set f11349;

    public C2970(Set set, ˉˆ r2) {
        this.f11349 = set;
        this.f11348 = r2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2970)) {
            return false;
        }
        C2970 c2970 = (C2970) obj;
        return AbstractC2444.m5562(c2970.f11349, this.f11349) && AbstractC2444.m5562(c2970.f11348, this.f11348);
    }

    public final int hashCode() {
        int hashCode = (this.f11349.hashCode() + 1517) * 41;
        ˉˆ r1 = this.f11348;
        return hashCode + (r1 != null ? r1.hashCode() : 0);
    }
}
