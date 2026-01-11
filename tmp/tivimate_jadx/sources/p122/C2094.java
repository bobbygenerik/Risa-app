package p122;

import android.support.v4.media.session.AbstractC0001;

/* renamed from: ˈˋ.ᐧﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2094 extends AbstractC2100 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean f8184;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f8185;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f8186;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f8187;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Double f8188;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f8189;

    public C2094(Double d, int i, boolean z, int i2, long j, long j2) {
        this.f8188 = d;
        this.f8187 = i;
        this.f8184 = z;
        this.f8185 = i2;
        this.f8186 = j;
        this.f8189 = j2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2100) {
            AbstractC2100 abstractC2100 = (AbstractC2100) obj;
            Double d = this.f8188;
            if (d != null ? d.equals(((C2094) abstractC2100).f8188) : ((C2094) abstractC2100).f8188 == null) {
                C2094 c2094 = (C2094) abstractC2100;
                if (this.f8187 == c2094.f8187 && this.f8184 == c2094.f8184 && this.f8185 == c2094.f8185 && this.f8186 == c2094.f8186 && this.f8189 == c2094.f8189) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        Double d = this.f8188;
        int hashCode = ((((((((d == null ? 0 : d.hashCode()) ^ 1000003) * 1000003) ^ this.f8187) * 1000003) ^ (this.f8184 ? 1231 : 1237)) * 1000003) ^ this.f8185) * 1000003;
        long j = this.f8186;
        long j2 = this.f8189;
        return ((hashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Device{batteryLevel=");
        sb.append(this.f8188);
        sb.append(", batteryVelocity=");
        sb.append(this.f8187);
        sb.append(", proximityOn=");
        sb.append(this.f8184);
        sb.append(", orientation=");
        sb.append(this.f8185);
        sb.append(", ramUsed=");
        sb.append(this.f8186);
        sb.append(", diskUsed=");
        return AbstractC0001.m8(sb, this.f8189, "}");
    }
}
