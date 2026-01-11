package p062;

import p137.AbstractC2305;
import p152.AbstractC2444;

/* renamed from: ʾˈ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1576 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f6162;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean f6163;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f6164;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f6165;

    public C1576(int i, int i2, String str, boolean z) {
        this.f6165 = str;
        this.f6164 = i;
        this.f6162 = i2;
        this.f6163 = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1576)) {
            return false;
        }
        C1576 c1576 = (C1576) obj;
        return AbstractC2444.m5562(this.f6165, c1576.f6165) && this.f6164 == c1576.f6164 && this.f6162 == c1576.f6162 && this.f6163 == c1576.f6163;
    }

    public final int hashCode() {
        return (((((this.f6165.hashCode() * 31) + this.f6164) * 31) + this.f6162) * 31) + (this.f6163 ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ProcessDetails(processName=");
        sb.append(this.f6165);
        sb.append(", pid=");
        sb.append(this.f6164);
        sb.append(", importance=");
        sb.append(this.f6162);
        sb.append(", isDefaultProcess=");
        return AbstractC2305.m5377(sb, this.f6163, ')');
    }
}
