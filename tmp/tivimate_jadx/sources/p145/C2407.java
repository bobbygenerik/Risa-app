package p145;

import android.support.v4.media.session.AbstractC0001;

/* renamed from: ˉᵎ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2407 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f9303;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f9304;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f9305;

    public C2407(long j, long j2, long j3) {
        this.f9305 = j;
        this.f9304 = j2;
        this.f9303 = j3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2407) {
            C2407 c2407 = (C2407) obj;
            if (this.f9305 == c2407.f9305 && this.f9304 == c2407.f9304 && this.f9303 == c2407.f9303) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f9305;
        long j2 = this.f9304;
        int i = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        long j3 = this.f9303;
        return i ^ ((int) ((j3 >>> 32) ^ j3));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("StartupTime{epochMillis=");
        sb.append(this.f9305);
        sb.append(", elapsedRealtime=");
        sb.append(this.f9304);
        sb.append(", uptimeMillis=");
        return AbstractC0001.m8(sb, this.f9303, "}");
    }
}
