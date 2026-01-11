package p305;

import java.math.RoundingMode;

/* renamed from: ᐧˎ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3724 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public long f14502;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ThreadLocal f14503 = new ThreadLocal();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public long f14504;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public long f14505;

    public C3724(long j) {
        m7829(j);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final synchronized long m7826(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j2 = this.f14502;
        if (j2 != -9223372036854775807L) {
            String str = AbstractC3712.f14481;
            long m7797 = AbstractC3712.m7797(j2, 90000L, 1000000L, RoundingMode.DOWN);
            long j3 = m7797 / 8589934592L;
            Long.signum(j3);
            long j4 = (j3 * 8589934592L) + j;
            j = j4 >= m7797 ? j4 : ((j3 + 1) * 8589934592L) + j;
        }
        long j5 = j;
        String str2 = AbstractC3712.f14481;
        return m7832(AbstractC3712.m7797(j5, 1000000L, 90000L, RoundingMode.DOWN));
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final synchronized long m7827() {
        long j;
        j = this.f14505;
        if (j == Long.MAX_VALUE || j == 9223372036854775806L) {
            j = -9223372036854775807L;
        }
        return j;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final synchronized long m7828() {
        return this.f14504;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final synchronized void m7829(long j) {
        this.f14505 = j;
        this.f14504 = j == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.f14502 = -9223372036854775807L;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final synchronized void m7830(boolean z, long j) {
        try {
            AbstractC3731.m7857(this.f14505 == 9223372036854775806L);
            if (m7833()) {
                return;
            }
            if (z) {
                this.f14503.set(Long.valueOf(j));
            } else {
                while (!m7833()) {
                    wait();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final synchronized long m7831(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            long j2 = this.f14502;
            if (j2 != -9223372036854775807L) {
                String str = AbstractC3712.f14481;
                long m7797 = AbstractC3712.m7797(j2, 90000L, 1000000L, RoundingMode.DOWN);
                long j3 = (4294967296L + m7797) / 8589934592L;
                long j4 = ((j3 - 1) * 8589934592L) + j;
                long j5 = (j3 * 8589934592L) + j;
                j = Math.abs(j4 - m7797) < Math.abs(j5 - m7797) ? j4 : j5;
            }
            long j6 = j;
            String str2 = AbstractC3712.f14481;
            return m7832(AbstractC3712.m7797(j6, 1000000L, 90000L, RoundingMode.DOWN));
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized long m7832(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            if (!m7833()) {
                long j2 = this.f14505;
                if (j2 == 9223372036854775806L) {
                    Long l = (Long) this.f14503.get();
                    l.getClass();
                    j2 = l.longValue();
                }
                this.f14504 = j2 - j;
                notifyAll();
            }
            this.f14502 = j;
            return j + this.f14504;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final synchronized boolean m7833() {
        return this.f14504 != -9223372036854775807L;
    }
}
