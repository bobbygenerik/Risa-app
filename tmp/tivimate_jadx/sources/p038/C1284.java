package p038;

import android.support.v4.media.session.AbstractC0001;

/* renamed from: ʽʼ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1284 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f4963;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f4964;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f4965;

    public C1284(long j, long j2, String str) {
        this.f4965 = str;
        this.f4964 = j;
        this.f4963 = j2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C1284) {
            C1284 c1284 = (C1284) obj;
            if (this.f4965.equals(c1284.f4965) && this.f4964 == c1284.f4964 && this.f4963 == c1284.f4963) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.f4965.hashCode() ^ 1000003) * 1000003;
        long j = this.f4964;
        long j2 = this.f4963;
        return ((hashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("InstallationTokenResult{token=");
        sb.append(this.f4965);
        sb.append(", tokenExpirationTimestamp=");
        sb.append(this.f4964);
        sb.append(", tokenCreationTimestamp=");
        return AbstractC0001.m8(sb, this.f4963, "}");
    }
}
