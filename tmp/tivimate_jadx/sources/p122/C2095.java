package p122;

import android.support.v4.media.session.AbstractC0001;

/* renamed from: ˈˋ.ᴵʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2095 extends AbstractC2113 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f8190;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f8191;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f8192;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC2118 f8193;

    public C2095(C2038 c2038, String str, String str2, long j) {
        this.f8193 = c2038;
        this.f8192 = str;
        this.f8190 = str2;
        this.f8191 = j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2113) {
            C2095 c2095 = (C2095) ((AbstractC2113) obj);
            if (this.f8193.equals(c2095.f8193) && this.f8192.equals(c2095.f8192) && this.f8190.equals(c2095.f8190) && this.f8191 == c2095.f8191) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (((((this.f8193.hashCode() ^ 1000003) * 1000003) ^ this.f8192.hashCode()) * 1000003) ^ this.f8190.hashCode()) * 1000003;
        long j = this.f8191;
        return hashCode ^ ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RolloutAssignment{rolloutVariant=");
        sb.append(this.f8193);
        sb.append(", parameterKey=");
        sb.append(this.f8192);
        sb.append(", parameterValue=");
        sb.append(this.f8190);
        sb.append(", templateVersion=");
        return AbstractC0001.m8(sb, this.f8191, "}");
    }
}
