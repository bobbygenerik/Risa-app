package p322;

import p307.AbstractC3740;

/* renamed from: ᴵˋ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3955 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f15264;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f15265;

    public C3955(long j, long j2) {
        this.f15265 = j;
        this.f15264 = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C3955.class.equals(obj.getClass())) {
            C3955 c3955 = (C3955) obj;
            if (c3955.f15265 == this.f15265 && c3955.f15264 == this.f15264) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f15265;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        long j2 = this.f15264;
        return i + ((int) ((j2 >>> 32) ^ j2));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PeriodicityInfo{repeatIntervalMillis=");
        sb.append(this.f15265);
        sb.append(", flexIntervalMillis=");
        return AbstractC3740.m7941(sb, this.f15264, '}');
    }
}
