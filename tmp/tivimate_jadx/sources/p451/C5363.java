package p451;

import java.util.Date;
import java.util.concurrent.TimeUnit;

/* renamed from: ﾞʾ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5363 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f20403;

    public C5363(long j) {
        this.f20403 = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && C5363.class == obj.getClass() && this.f20403 == ((C5363) obj).f20403;
    }

    public final int hashCode() {
        long j = this.f20403;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        return new Date(TimeUnit.MILLISECONDS.convert((this.f20403 - 116444736000000000L) * 100, TimeUnit.NANOSECONDS)).toString();
    }
}
