package p212;

import p035.AbstractC1220;
import p307.AbstractC3740;
import ﹳˋ.ٴﹶ;

/* renamed from: ˏ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2982 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f11395;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f11396;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2988 f11397;

    public C2982(int i, int i2, Class cls) {
        this(C2988.m6519(cls), i, i2);
    }

    public C2982(C2988 c2988, int i, int i2) {
        ٴﹶ.ᵎﹶ(c2988, "Null dependency anInterface.");
        this.f11397 = c2988;
        this.f11396 = i;
        this.f11395 = i2;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C2982 m6509(C2988 c2988) {
        return new C2982(c2988, 1, 0);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C2982 m6510(Class cls) {
        return new C2982(1, 0, cls);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2982)) {
            return false;
        }
        C2982 c2982 = (C2982) obj;
        return this.f11397.equals(c2982.f11397) && this.f11396 == c2982.f11396 && this.f11395 == c2982.f11395;
    }

    public final int hashCode() {
        return ((((this.f11397.hashCode() ^ 1000003) * 1000003) ^ this.f11396) * 1000003) ^ this.f11395;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f11397);
        sb.append(", type=");
        int i = this.f11396;
        sb.append(i == 1 ? "required" : i == 0 ? "optional" : "set");
        sb.append(", injection=");
        int i2 = this.f11395;
        if (i2 == 0) {
            str = "direct";
        } else if (i2 == 1) {
            str = "provider";
        } else {
            if (i2 != 2) {
                throw new AssertionError(AbstractC3740.m7932(i2, "Unsupported injection: "));
            }
            str = "deferred";
        }
        return AbstractC1220.m3775(sb, str, "}");
    }
}
