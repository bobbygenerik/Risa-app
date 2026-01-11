package p171;

import p027.C1090;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ˊﾞ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2627 implements InterfaceC2626 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public long f9947;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1090 f9948;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1090 f9949;

    public C2627(long j, long[] jArr, long[] jArr2) {
        AbstractC3731.m7849(jArr.length == jArr2.length);
        int length = jArr2.length;
        if (length <= 0 || jArr2[0] <= 0) {
            this.f9949 = new C1090(length);
            this.f9948 = new C1090(length);
        } else {
            int i = length + 1;
            C1090 c1090 = new C1090(i);
            this.f9949 = c1090;
            C1090 c10902 = new C1090(i);
            this.f9948 = c10902;
            c1090.m3474(0L);
            c10902.m3474(0L);
        }
        this.f9949.m3478(jArr);
        this.f9948.m3478(jArr2);
        this.f9947 = j;
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˆʾ */
    public final C2647 mo2901(long j) {
        C1090 c1090 = this.f9948;
        if (c1090.f4254 == 0) {
            C2641 c2641 = C2641.f10025;
            return new C2647(c2641, c2641);
        }
        int m7760 = AbstractC3712.m7760(c1090, j);
        long m3469 = c1090.m3469(m7760);
        C1090 c10902 = this.f9949;
        C2641 c26412 = new C2641(m3469, c10902.m3469(m7760));
        if (m3469 == j || m7760 == c1090.f4254 - 1) {
            return new C2647(c26412, c26412);
        }
        int i = m7760 + 1;
        return new C2647(c26412, new C2641(c1090.m3469(i), c10902.m3469(i)));
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˉʿ */
    public final long mo2903() {
        return this.f9947;
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ᵔᵢ */
    public final boolean mo2907() {
        return this.f9948.f4254 > 0;
    }
}
