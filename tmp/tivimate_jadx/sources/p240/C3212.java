package p240;

import p035.AbstractC1220;
import p152.AbstractC2444;

/* renamed from: ˑᵎ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3212 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f12264;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f12265;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f12266;

    public C3212(int i, int i2, String str) {
        this.f12266 = str;
        this.f12265 = i;
        this.f12264 = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3212)) {
            return false;
        }
        C3212 c3212 = (C3212) obj;
        return AbstractC2444.m5562(this.f12266, c3212.f12266) && this.f12265 == c3212.f12265 && this.f12264 == c3212.f12264;
    }

    public final int hashCode() {
        return (((this.f12266.hashCode() * 31) + this.f12265) * 31) + this.f12264;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SystemIdInfo(workSpecId=");
        sb.append(this.f12266);
        sb.append(", generation=");
        sb.append(this.f12265);
        sb.append(", systemId=");
        return AbstractC1220.m3784(sb, this.f12264, ')');
    }
}
