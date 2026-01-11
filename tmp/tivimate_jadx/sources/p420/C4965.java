package p420;

import androidx.media3.exoplayer.source.ClippingMediaSource$IllegalClippingException;
import p055.AbstractC1445;
import p055.C1448;
import p055.C1466;
import p055.C1467;
import p305.AbstractC3712;

/* renamed from: ﹳᵢ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4965 extends AbstractC4940 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f18494;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f18495;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f18496;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean f18497;

    public C4965(AbstractC1445 abstractC1445, long j, long j2) {
        super(abstractC1445);
        if (j2 != Long.MIN_VALUE && j2 < j) {
            throw new ClippingMediaSource$IllegalClippingException(2, j, j2);
        }
        boolean z = false;
        if (abstractC1445.mo4227() != 1) {
            throw new ClippingMediaSource$IllegalClippingException(0);
        }
        C1466 mo4221 = abstractC1445.mo4221(0, new C1466(), 0L);
        long max = Math.max(0L, j);
        if (!mo4221.f5736 && max != 0 && !mo4221.f5739) {
            throw new ClippingMediaSource$IllegalClippingException(1);
        }
        long max2 = j2 == Long.MIN_VALUE ? mo4221.f5733 : Math.max(0L, j2);
        long j3 = mo4221.f5733;
        if (j3 != -9223372036854775807L) {
            max2 = max2 > j3 ? j3 : max2;
            if (max > max2) {
                max = max2;
            }
        }
        this.f18494 = max;
        this.f18495 = max2;
        this.f18496 = max2 != -9223372036854775807L ? max2 - max : -9223372036854775807L;
        if (mo4221.f5728 && (max2 == -9223372036854775807L || (j3 != -9223372036854775807L && max2 == j3))) {
            z = true;
        }
        this.f18497 = z;
    }

    @Override // p420.AbstractC4940, p055.AbstractC1445
    /* renamed from: ˉʿ */
    public final C1466 mo4221(int i, C1466 c1466, long j) {
        this.f18403.mo4221(0, c1466, 0L);
        long j2 = c1466.f5729;
        long j3 = this.f18494;
        c1466.f5729 = j2 + j3;
        c1466.f5733 = this.f18496;
        c1466.f5728 = this.f18497;
        long j4 = c1466.f5742;
        if (j4 != -9223372036854775807L) {
            long max = Math.max(j4, j3);
            c1466.f5742 = max;
            long j5 = this.f18495;
            if (j5 != -9223372036854775807L) {
                max = Math.min(max, j5);
            }
            c1466.f5742 = max - j3;
        }
        long m7755 = AbstractC3712.m7755(j3);
        long j6 = c1466.f5735;
        if (j6 != -9223372036854775807L) {
            c1466.f5735 = j6 + m7755;
        }
        long j7 = c1466.f5743;
        if (j7 != -9223372036854775807L) {
            c1466.f5743 = j7 + m7755;
        }
        return c1466;
    }

    @Override // p420.AbstractC4940, p055.AbstractC1445
    /* renamed from: ﾞᴵ */
    public final C1467 mo4231(int i, C1467 c1467, boolean z) {
        this.f18403.mo4231(0, c1467, z);
        long j = c1467.f5746 - this.f18494;
        long j2 = this.f18496;
        c1467.m4272(c1467.f5749, c1467.f5748, 0, j2 != -9223372036854775807L ? j2 - j : -9223372036854775807L, j, C1448.f5640, false);
        return c1467;
    }
}
