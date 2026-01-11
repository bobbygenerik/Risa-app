package p290;

import java.util.Set;

/* renamed from: ٴᐧ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3607 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Set f14108;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f14109;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f14110;

    public C3607(long j, long j2, Set set) {
        this.f14110 = j;
        this.f14109 = j2;
        this.f14108 = set;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C3607) {
            C3607 c3607 = (C3607) obj;
            if (this.f14110 == c3607.f14110 && this.f14109 == c3607.f14109 && this.f14108.equals(c3607.f14108)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f14110;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        long j2 = this.f14109;
        return ((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f14108.hashCode();
    }

    public final String toString() {
        return "ConfigValue{delta=" + this.f14110 + ", maxAllowedDelay=" + this.f14109 + ", flags=" + this.f14108 + "}";
    }
}
