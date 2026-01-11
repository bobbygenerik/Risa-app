package p122;

import p035.AbstractC1220;

/* renamed from: ˈˋ.ʻᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2038 extends AbstractC2118 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f7958;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f7959;

    public C2038(String str, String str2) {
        this.f7959 = str;
        this.f7958 = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2118) {
            C2038 c2038 = (C2038) ((AbstractC2118) obj);
            if (this.f7959.equals(c2038.f7959) && this.f7958.equals(c2038.f7958)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f7959.hashCode() ^ 1000003) * 1000003) ^ this.f7958.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RolloutVariant{rolloutId=");
        sb.append(this.f7959);
        sb.append(", variantId=");
        return AbstractC1220.m3775(sb, this.f7958, "}");
    }
}
