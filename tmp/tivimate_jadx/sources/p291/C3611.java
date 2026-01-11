package p291;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.List;
import p055.C1495;
import p358.AbstractC4353;
import ˑי.ʽ;

/* renamed from: ٴᴵ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3611 extends AbstractC3621 {

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final ʽ f14121;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final ʽ f14122;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final long f14123;

    public C3611(C3613 c3613, long j, long j2, long j3, long j4, long j5, List list, long j6, ʽ r32, ʽ r33, long j7, long j8) {
        super(c3613, j, j2, j3, j5, list, j6, j7, j8);
        this.f14121 = r32;
        this.f14122 = r33;
        this.f14123 = j4;
    }

    @Override // p291.AbstractC3621
    /* renamed from: ˈ, reason: contains not printable characters */
    public final long mo7570(long j) {
        if (this.f14172 != null) {
            return r0.size();
        }
        long j2 = this.f14123;
        if (j2 != -1) {
            return (j2 - this.f14168) + 1;
        }
        if (j == -9223372036854775807L) {
            return -1L;
        }
        BigInteger multiply = BigInteger.valueOf(j).multiply(BigInteger.valueOf(this.f14160));
        BigInteger multiply2 = BigInteger.valueOf(this.f14169).multiply(BigInteger.valueOf(1000000L));
        RoundingMode roundingMode = RoundingMode.CEILING;
        int i = AbstractC4353.f16176;
        return new BigDecimal(multiply).divide(new BigDecimal(multiply2), 0, roundingMode).toBigIntegerExact().longValue();
    }

    @Override // p291.AbstractC3621
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C3613 mo7571(C3619 c3619, long j) {
        long j2 = this.f14168;
        List list = this.f14172;
        long j3 = list != null ? ((C3623) list.get((int) (j - j2))).f14178 : (j - j2) * this.f14169;
        C1495 c1495 = c3619.f14148;
        return new C3613(0L, -1L, this.f14122.ˏי(c1495.f5937, j, c1495.f5908, j3));
    }

    @Override // p291.AbstractC3618
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3613 mo7572(AbstractC3615 abstractC3615) {
        ʽ r0 = this.f14121;
        if (r0 == null) {
            return this.f14161;
        }
        C1495 c1495 = abstractC3615.f14148;
        return new C3613(0L, -1L, r0.ˏי(c1495.f5937, 0L, c1495.f5908, 0L));
    }
}
