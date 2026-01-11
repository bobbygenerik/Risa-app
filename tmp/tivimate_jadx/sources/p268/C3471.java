package p268;

import java.util.ArrayList;

/* renamed from: ـˎ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3471 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayList f13634;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f13635;

    public C3471(String str, ArrayList arrayList) {
        if (str == null) {
            throw new NullPointerException("Null userAgent");
        }
        this.f13635 = str;
        this.f13634 = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C3471)) {
            return false;
        }
        C3471 c3471 = (C3471) obj;
        return this.f13635.equals(c3471.f13635) && this.f13634.equals(c3471.f13634);
    }

    public final int hashCode() {
        return ((this.f13635.hashCode() ^ 1000003) * 1000003) ^ this.f13634.hashCode();
    }

    public final String toString() {
        return "HeartBeatResult{userAgent=" + this.f13635 + ", usedDates=" + this.f13634 + "}";
    }
}
