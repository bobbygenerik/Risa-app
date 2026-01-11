package p122;

import android.support.v4.media.session.AbstractC0001;

/* renamed from: ˈˋ.ﹳـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2115 extends AbstractC2047 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f8283;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f8284;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f8285;

    public C2115(long j, String str, String str2) {
        this.f8285 = str;
        this.f8284 = str2;
        this.f8283 = j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2047) {
            C2115 c2115 = (C2115) ((AbstractC2047) obj);
            if (this.f8285.equals(c2115.f8285) && this.f8284.equals(c2115.f8284) && this.f8283 == c2115.f8283) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (((this.f8285.hashCode() ^ 1000003) * 1000003) ^ this.f8284.hashCode()) * 1000003;
        long j = this.f8283;
        return hashCode ^ ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Signal{name=");
        sb.append(this.f8285);
        sb.append(", code=");
        sb.append(this.f8284);
        sb.append(", address=");
        return AbstractC0001.m8(sb, this.f8283, "}");
    }
}
