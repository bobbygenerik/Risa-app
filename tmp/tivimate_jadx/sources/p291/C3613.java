package p291;

import android.support.v4.media.session.AbstractC0001;
import p305.AbstractC3731;

/* renamed from: ٴᴵ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3613 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f14137;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f14138;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f14139;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f14140;

    public C3613(long j, long j2, String str) {
        this.f14137 = str == null ? "" : str;
        this.f14140 = j;
        this.f14139 = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C3613.class == obj.getClass()) {
            C3613 c3613 = (C3613) obj;
            if (this.f14140 == c3613.f14140 && this.f14139 == c3613.f14139 && this.f14137.equals(c3613.f14137)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f14138 == 0) {
            this.f14138 = this.f14137.hashCode() + ((((527 + ((int) this.f14140)) * 31) + ((int) this.f14139)) * 31);
        }
        return this.f14138;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RangedUri(referenceUri=");
        sb.append(this.f14137);
        sb.append(", start=");
        sb.append(this.f14140);
        sb.append(", length=");
        return AbstractC0001.m8(sb, this.f14139, ")");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3613 m7576(C3613 c3613, String str) {
        C3613 c36132;
        long j;
        String m7846 = AbstractC3731.m7846(str, this.f14137);
        if (c3613 != null) {
            long j2 = c3613.f14139;
            if (m7846.equals(AbstractC3731.m7846(str, c3613.f14137))) {
                long j3 = this.f14139;
                if (j3 != -1) {
                    j = j2;
                    long j4 = this.f14140;
                    c36132 = null;
                    if (j4 + j3 == c3613.f14140) {
                        return new C3613(j4, j != -1 ? j3 + j : -1L, m7846);
                    }
                } else {
                    c36132 = null;
                    j = j2;
                }
                if (j == -1) {
                    return c36132;
                }
                long j5 = c3613.f14140;
                if (j5 + j == this.f14140) {
                    return new C3613(j5, j3 != -1 ? j + j3 : -1L, m7846);
                }
                return c36132;
            }
        }
        return null;
    }
}
