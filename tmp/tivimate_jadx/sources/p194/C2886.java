package p194;

import p171.C2641;
import p171.C2647;
import p171.InterfaceC2626;

/* renamed from: ˎʼ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2886 implements InterfaceC2887, InterfaceC2626 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final int f10835;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f10836;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final int f10837;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f10838;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f10839;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean f10840;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean f10841;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final long f10842;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f10843;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f10844;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final long f10845;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f10846;

    public C2886(long j, long j2, int i, int i2, boolean z) {
        this.f10844 = j;
        this.f10843 = j2;
        this.f10836 = i2 == -1 ? 1 : i2;
        this.f10839 = i;
        this.f10841 = z;
        if (j == -1) {
            this.f10838 = -1L;
            this.f10846 = -9223372036854775807L;
        } else {
            long j3 = j - j2;
            this.f10838 = j3;
            this.f10846 = (Math.max(0L, j3) * 8000000) / i;
        }
        this.f10842 = j2;
        this.f10835 = i;
        this.f10837 = i2;
        this.f10840 = z;
        this.f10845 = j == -1 ? -1L : j;
    }

    @Override // p194.InterfaceC2887
    /* renamed from: ʽ */
    public final long mo6382(long j) {
        return (Math.max(0L, j - this.f10843) * 8000000) / this.f10839;
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˆʾ */
    public final C2647 mo2901(long j) {
        long j2 = this.f10838;
        long j3 = this.f10843;
        if (j2 == -1 && !this.f10841) {
            C2641 c2641 = new C2641(0L, j3);
            return new C2647(c2641, c2641);
        }
        int i = this.f10839;
        long j4 = this.f10836;
        long j5 = (((i * j) / 8000000) / j4) * j4;
        if (j2 != -1) {
            j5 = Math.min(j5, j2 - j4);
        }
        long max = Math.max(j5, 0L) + j3;
        long max2 = (Math.max(0L, max - j3) * 8000000) / i;
        C2641 c26412 = new C2641(max2, max);
        if (j2 != -1 && max2 < j) {
            long j6 = max + j4;
            if (j6 < this.f10844) {
                return new C2647(c26412, new C2641((Math.max(0L, j6 - j3) * 8000000) / i, j6));
            }
        }
        return new C2647(c26412, c26412);
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˉʿ */
    public final long mo2903() {
        return this.f10846;
    }

    @Override // p194.InterfaceC2887
    /* renamed from: ˑﹳ */
    public final long mo6383() {
        return this.f10845;
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ᵔᵢ */
    public final boolean mo2907() {
        return this.f10838 != -1 || this.f10841;
    }

    @Override // p194.InterfaceC2887
    /* renamed from: ﾞʻ */
    public final int mo6384() {
        return this.f10835;
    }
}
