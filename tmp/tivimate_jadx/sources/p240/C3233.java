package p240;

import p137.AbstractC2305;
import p152.AbstractC2444;

/* renamed from: ˑᵎ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3233 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Long f12347;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f12348;

    public C3233(String str, Long l) {
        this.f12348 = str;
        this.f12347 = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3233)) {
            return false;
        }
        C3233 c3233 = (C3233) obj;
        return AbstractC2444.m5562(this.f12348, c3233.f12348) && AbstractC2444.m5562(this.f12347, c3233.f12347);
    }

    public final int hashCode() {
        int hashCode = this.f12348.hashCode() * 31;
        Long l = this.f12347;
        return hashCode + (l == null ? 0 : l.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Preference(key=");
        sb.append(this.f12348);
        sb.append(", value=");
        return AbstractC2305.m5375(sb, this.f12347, ')');
    }
}
