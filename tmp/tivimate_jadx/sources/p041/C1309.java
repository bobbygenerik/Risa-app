package p041;

import p152.AbstractC2444;

/* renamed from: ʽʿ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1309 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C1301 f5009 = new Object();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f5010;

    public final boolean equals(Object obj) {
        if (obj instanceof C1309) {
            return AbstractC2444.m5562(this.f5010, ((C1309) obj).f5010);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.f5010;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        Object obj = this.f5010;
        if (obj instanceof C1315) {
            return ((C1315) obj).toString();
        }
        return "Value(" + obj + ')';
    }
}
