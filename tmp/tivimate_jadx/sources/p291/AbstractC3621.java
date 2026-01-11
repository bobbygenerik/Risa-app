package p291;

import java.math.RoundingMode;
import java.util.List;
import p305.AbstractC3712;

/* renamed from: ٴᴵ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3621 extends AbstractC3618 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final long f14167;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f14168;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f14169;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long f14170;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final long f14171;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final List f14172;

    public AbstractC3621(C3613 c3613, long j, long j2, long j3, long j4, List list, long j5, long j6, long j7) {
        super(c3613, j, j2);
        this.f14168 = j3;
        this.f14169 = j4;
        this.f14172 = list;
        this.f14167 = j5;
        this.f14170 = j6;
        this.f14171 = j7;
    }

    /* renamed from: ʼˎ */
    public boolean mo7580() {
        return this.f14172 != null;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long m7601(long j, long j2) {
        long mo7570 = mo7570(j);
        long j3 = this.f14168;
        if (mo7570 == -1) {
            long j4 = this.f14170;
            if (j4 != -9223372036854775807L) {
                return Math.max(j3, m7605((j2 - this.f14171) - j4, j));
            }
        }
        return j3;
    }

    /* renamed from: ˈ */
    public abstract long mo7570(long j);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long m7602(long j, long j2) {
        long j3 = this.f14160;
        long j4 = this.f14168;
        List list = this.f14172;
        if (list != null) {
            return (((C3623) list.get((int) (j - j4))).f14177 * 1000000) / j3;
        }
        long mo7570 = mo7570(j2);
        return (mo7570 == -1 || j != (j4 + mo7570) - 1) ? (this.f14169 * 1000000) / j3 : j2 - m7603(j);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long m7603(long j) {
        long j2 = this.f14168;
        List list = this.f14172;
        long j3 = list != null ? ((C3623) list.get((int) (j - j2))).f14178 - this.f14159 : (j - j2) * this.f14169;
        String str = AbstractC3712.f14481;
        return AbstractC3712.m7797(j3, 1000000L, this.f14160, RoundingMode.DOWN);
    }

    /* renamed from: ᵔᵢ */
    public abstract C3613 mo7571(C3619 c3619, long j);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long m7604(long j, long j2) {
        long mo7570 = mo7570(j);
        return mo7570 != -1 ? mo7570 : (int) (m7605((j2 - this.f14171) + this.f14167, j) - m7601(j, j2));
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long m7605(long j, long j2) {
        long mo7570 = mo7570(j2);
        long j3 = this.f14168;
        if (mo7570 != 0) {
            if (this.f14172 != null) {
                long j4 = (mo7570 + j3) - 1;
                long j5 = j3;
                while (j5 <= j4) {
                    long j6 = ((j4 - j5) / 2) + j5;
                    long m7603 = m7603(j6);
                    if (m7603 < j) {
                        j5 = j6 + 1;
                    } else {
                        if (m7603 <= j) {
                            return j6;
                        }
                        j4 = j6 - 1;
                    }
                }
                return j5 == j3 ? j5 : j4;
            }
            long j7 = (j / ((this.f14169 * 1000000) / this.f14160)) + j3;
            if (j7 >= j3) {
                return mo7570 == -1 ? j7 : Math.min(j7, (j3 + mo7570) - 1);
            }
        }
        return j3;
    }
}
