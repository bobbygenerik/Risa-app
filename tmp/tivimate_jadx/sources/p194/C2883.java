package p194;

import p171.C2641;
import p171.C2647;
import p305.AbstractC3712;

/* renamed from: ˎʼ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2883 implements InterfaceC2887 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f10823;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f10824;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f10825;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long[] f10826;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long[] f10827;

    public C2883(long[] jArr, long[] jArr2, long j, long j2, long j3, int i) {
        this.f10827 = jArr;
        this.f10826 = jArr2;
        this.f10823 = j;
        this.f10824 = j3;
        this.f10825 = i;
    }

    @Override // p194.InterfaceC2887
    /* renamed from: ʽ */
    public final long mo6382(long j) {
        return this.f10827[AbstractC3712.m7783(this.f10826, j, true)];
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˆʾ */
    public final C2647 mo2901(long j) {
        long[] jArr = this.f10827;
        int m7783 = AbstractC3712.m7783(jArr, j, true);
        long j2 = jArr[m7783];
        long[] jArr2 = this.f10826;
        C2641 c2641 = new C2641(j2, jArr2[m7783]);
        if (j2 >= j || m7783 == jArr.length - 1) {
            return new C2647(c2641, c2641);
        }
        int i = m7783 + 1;
        return new C2647(c2641, new C2641(jArr[i], jArr2[i]));
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˉʿ */
    public final long mo2903() {
        return this.f10823;
    }

    @Override // p194.InterfaceC2887
    /* renamed from: ˑﹳ */
    public final long mo6383() {
        return this.f10824;
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ᵔᵢ */
    public final boolean mo2907() {
        return true;
    }

    @Override // p194.InterfaceC2887
    /* renamed from: ﾞʻ */
    public final int mo6384() {
        return this.f10825;
    }
}
