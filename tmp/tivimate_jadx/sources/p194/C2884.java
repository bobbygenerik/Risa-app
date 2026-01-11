package p194;

import p171.C2641;
import p171.C2647;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ˎʼ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2884 implements InterfaceC2887 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f10828;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f10829;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f10830;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long[] f10831;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f10832;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f10833;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f10834;

    public C2884(long j, int i, long j2, int i2, long j3, long[] jArr) {
        this.f10833 = j;
        this.f10832 = i;
        this.f10828 = j2;
        this.f10829 = i2;
        this.f10830 = j3;
        this.f10831 = jArr;
        this.f10834 = j3 != -1 ? j + j3 : -1L;
    }

    @Override // p194.InterfaceC2887
    /* renamed from: ʽ */
    public final long mo6382(long j) {
        long j2 = j - this.f10833;
        if (!mo2907() || j2 <= this.f10832) {
            return 0L;
        }
        long[] jArr = this.f10831;
        AbstractC3731.m7868(jArr);
        double d = (j2 * 256.0d) / this.f10830;
        int m7783 = AbstractC3712.m7783(jArr, (long) d, true);
        long j3 = this.f10828;
        long j4 = (m7783 * j3) / 100;
        long j5 = jArr[m7783];
        int i = m7783 + 1;
        long j6 = (j3 * i) / 100;
        return Math.round((j5 == (m7783 == 99 ? 256L : jArr[i]) ? 0.0d : (d - j5) / (r0 - j5)) * (j6 - j4)) + j4;
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˆʾ */
    public final C2647 mo2901(long j) {
        double d;
        double d2;
        boolean mo2907 = mo2907();
        int i = this.f10832;
        long j2 = this.f10833;
        if (!mo2907) {
            C2641 c2641 = new C2641(0L, j2 + i);
            return new C2647(c2641, c2641);
        }
        long m7767 = AbstractC3712.m7767(j, 0L, this.f10828);
        double d3 = (m7767 * 100.0d) / this.f10828;
        double d4 = 0.0d;
        if (d3 <= 0.0d) {
            d = 256.0d;
        } else if (d3 >= 100.0d) {
            d = 256.0d;
            d4 = 256.0d;
        } else {
            int i2 = (int) d3;
            long[] jArr = this.f10831;
            AbstractC3731.m7868(jArr);
            double d5 = jArr[i2];
            if (i2 == 99) {
                d = 256.0d;
                d2 = 256.0d;
            } else {
                d = 256.0d;
                d2 = jArr[i2 + 1];
            }
            d4 = ((d2 - d5) * (d3 - i2)) + d5;
        }
        long j3 = this.f10830;
        C2641 c26412 = new C2641(m7767, j2 + AbstractC3712.m7767(Math.round((d4 / d) * j3), i, j3 - 1));
        return new C2647(c26412, c26412);
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˉʿ */
    public final long mo2903() {
        return this.f10828;
    }

    @Override // p194.InterfaceC2887
    /* renamed from: ˑﹳ */
    public final long mo6383() {
        return this.f10834;
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ᵔᵢ */
    public final boolean mo2907() {
        return this.f10831 != null;
    }

    @Override // p194.InterfaceC2887
    /* renamed from: ﾞʻ */
    public final int mo6384() {
        return this.f10829;
    }
}
