package p396;

import p137.AbstractC2305;

/* renamed from: ⁱᵎ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4739 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean f17889;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean f17890;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f17891;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean f17892;

    public C4739(boolean z, boolean z2, boolean z3, boolean z4) {
        this.f17892 = z;
        this.f17891 = z2;
        this.f17889 = z3;
        this.f17890 = z4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4739)) {
            return false;
        }
        C4739 c4739 = (C4739) obj;
        return this.f17892 == c4739.f17892 && this.f17891 == c4739.f17891 && this.f17889 == c4739.f17889 && this.f17890 == c4739.f17890;
    }

    public final int hashCode() {
        return ((((((this.f17892 ? 1231 : 1237) * 31) + (this.f17891 ? 1231 : 1237)) * 31) + (this.f17889 ? 1231 : 1237)) * 31) + (this.f17890 ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NetworkState(isConnected=");
        sb.append(this.f17892);
        sb.append(", isValidated=");
        sb.append(this.f17891);
        sb.append(", isMetered=");
        sb.append(this.f17889);
        sb.append(", isNotRoaming=");
        return AbstractC2305.m5377(sb, this.f17890, ')');
    }
}
