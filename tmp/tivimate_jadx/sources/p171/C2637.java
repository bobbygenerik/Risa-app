package p171;

import p224.C3062;
import p224.C3065;
import p305.AbstractC3712;
import p305.AbstractC3731;
import ﹶﾞ.ⁱי;

/* renamed from: ˊﾞ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2637 implements InterfaceC2626 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f10006;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f10007;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f10008;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C2637(long j) {
        this(j, 0L);
        this.f10008 = 1;
    }

    public C2637(long j, long j2) {
        this.f10008 = 1;
        this.f10007 = j;
        C2641 c2641 = j2 == 0 ? C2641.f10025 : new C2641(0L, j2);
        this.f10006 = new C2647(c2641, c2641);
    }

    public /* synthetic */ C2637(Object obj, long j, int i) {
        this.f10008 = i;
        this.f10006 = obj;
        this.f10007 = j;
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˆʾ */
    public final C2647 mo2901(long j) {
        switch (this.f10008) {
            case 0:
                C2635 c2635 = (C2635) this.f10006;
                AbstractC3731.m7868(c2635.f9993);
                ⁱי r1 = c2635.f9993;
                long[] jArr = (long[]) r1.ᴵˊ;
                long[] jArr2 = (long[]) r1.ʽʽ;
                int m7783 = AbstractC3712.m7783(jArr, AbstractC3712.m7767((c2635.f9992 * j) / 1000000, 0L, c2635.f9990 - 1), false);
                long j2 = m7783 == -1 ? 0L : jArr[m7783];
                long j3 = m7783 != -1 ? jArr2[m7783] : 0L;
                int i = c2635.f9992;
                long j4 = (j2 * 1000000) / i;
                long j5 = this.f10007;
                C2641 c2641 = new C2641(j4, j3 + j5);
                if (j4 == j || m7783 == jArr.length - 1) {
                    return new C2647(c2641, c2641);
                }
                int i2 = m7783 + 1;
                return new C2647(c2641, new C2641((jArr[i2] * 1000000) / i, j5 + jArr2[i2]));
            case 1:
                return (C2647) this.f10006;
            default:
                C3065 c3065 = (C3065) this.f10006;
                C2647 m6611 = c3065.f11635[0].m6611(j);
                int i3 = 1;
                while (true) {
                    C3062[] c3062Arr = c3065.f11635;
                    if (i3 >= c3062Arr.length) {
                        return m6611;
                    }
                    C2647 m66112 = c3062Arr[i3].m6611(j);
                    if (m66112.f10035.f10026 < m6611.f10035.f10026) {
                        m6611 = m66112;
                    }
                    i3++;
                }
        }
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˉʿ */
    public final long mo2903() {
        switch (this.f10008) {
            case 0:
                return ((C2635) this.f10006).m5894();
            case 1:
                return this.f10007;
            default:
                return this.f10007;
        }
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ᵔᵢ */
    public final boolean mo2907() {
        switch (this.f10008) {
            case 0:
                return true;
            case 1:
                return false;
            default:
                return true;
        }
    }
}
