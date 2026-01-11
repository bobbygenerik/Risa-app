package p194;

import android.util.Pair;
import p171.C2641;
import p171.C2647;
import p305.AbstractC3712;

/* renamed from: ˎʼ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2880 implements InterfaceC2887 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f10800;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long[] f10801;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long[] f10802;

    public C2880(long j, long[] jArr, long[] jArr2) {
        this.f10802 = jArr;
        this.f10801 = jArr2;
        this.f10800 = j == -9223372036854775807L ? AbstractC3712.m7757(jArr2[jArr2.length - 1]) : j;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Pair m6381(long j, long[] jArr, long[] jArr2) {
        int m7783 = AbstractC3712.m7783(jArr, j, true);
        long j2 = jArr[m7783];
        long j3 = jArr2[m7783];
        int i = m7783 + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((jArr[i] == j2 ? 0.0d : (j - j2) / (r6 - j2)) * (jArr2[i] - j3))) + j3));
    }

    @Override // p194.InterfaceC2887
    /* renamed from: ʽ, reason: contains not printable characters */
    public final long mo6382(long j) {
        return AbstractC3712.m7757(((Long) m6381(j, this.f10802, this.f10801).second).longValue());
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˆʾ */
    public final C2647 mo2901(long j) {
        Pair m6381 = m6381(AbstractC3712.m7755(AbstractC3712.m7767(j, 0L, this.f10800)), this.f10801, this.f10802);
        C2641 c2641 = new C2641(AbstractC3712.m7757(((Long) m6381.first).longValue()), ((Long) m6381.second).longValue());
        return new C2647(c2641, c2641);
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˉʿ */
    public final long mo2903() {
        return this.f10800;
    }

    @Override // p194.InterfaceC2887
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long mo6383() {
        return -1L;
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ᵔᵢ */
    public final boolean mo2907() {
        return true;
    }

    @Override // p194.InterfaceC2887
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final int mo6384() {
        return -2147483647;
    }
}
