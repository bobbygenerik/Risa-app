package p240;

import p035.AbstractC1220;
import p152.AbstractC2444;

/* renamed from: ˑᵎ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3232 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f12345;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f12346;

    public C3232(int i, String str) {
        this.f12346 = str;
        this.f12345 = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3232)) {
            return false;
        }
        C3232 c3232 = (C3232) obj;
        return AbstractC2444.m5562(this.f12346, c3232.f12346) && this.f12345 == c3232.f12345;
    }

    public final int hashCode() {
        return (this.f12346.hashCode() * 31) + this.f12345;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("WorkGenerationalId(workSpecId=");
        sb.append(this.f12346);
        sb.append(", generation=");
        return AbstractC1220.m3784(sb, this.f12345, ')');
    }
}
