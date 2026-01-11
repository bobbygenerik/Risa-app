package p413;

import android.support.v4.media.session.AbstractC0001;
import p010.AbstractC0844;

/* renamed from: ﹳˑ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4915 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f18336;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f18337;

    public C4915(int i, long j) {
        if (i == 0) {
            throw new NullPointerException("Null status");
        }
        this.f18337 = i;
        this.f18336 = j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C4915)) {
            return false;
        }
        C4915 c4915 = (C4915) obj;
        return AbstractC0844.m3021(this.f18337, c4915.f18337) && this.f18336 == c4915.f18336;
    }

    public final int hashCode() {
        int m3018 = (AbstractC0844.m3018(this.f18337) ^ 1000003) * 1000003;
        long j = this.f18336;
        return m3018 ^ ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BackendResponse{status=");
        int i = this.f18337;
        sb.append(i != 1 ? i != 2 ? i != 3 ? i != 4 ? "null" : "INVALID_PAYLOAD" : "FATAL_ERROR" : "TRANSIENT_ERROR" : "OK");
        sb.append(", nextRequestWaitMillis=");
        return AbstractC0001.m8(sb, this.f18336, "}");
    }
}
