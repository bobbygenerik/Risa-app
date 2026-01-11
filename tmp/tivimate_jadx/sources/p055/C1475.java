package p055;

import android.util.SparseBooleanArray;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ʽⁱ.ٴʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1475 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1447 f5771;

    static {
        new SparseBooleanArray();
        AbstractC3731.m7857(!false);
        AbstractC3712.m7802(0);
    }

    public C1475(C1447 c1447) {
        this.f5771 = c1447;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1475) {
            return this.f5771.equals(((C1475) obj).f5771);
        }
        return false;
    }

    public final int hashCode() {
        return this.f5771.hashCode();
    }
}
