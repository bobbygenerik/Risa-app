package p428;

import p055.C1474;
import p055.C1495;
import p307.AbstractC3740;

/* renamed from: ﹶʽ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5072 extends AbstractC5059 implements Comparable {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int f19082;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f19083;

    public C5072(int i, C1474 c1474, int i2, C5063 c5063, int i3) {
        super(i, c1474, i2);
        int i4;
        this.f19083 = AbstractC3740.m7940(i3, c5063.f19058) ? 1 : 0;
        C1495 c1495 = this.f19044;
        int i5 = c1495.f5905;
        int i6 = -1;
        if (i5 != -1 && (i4 = c1495.f5899) != -1) {
            i6 = i5 * i4;
        }
        this.f19082 = i6;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Integer.compare(this.f19082, ((C5072) obj).f19082);
    }

    @Override // p428.AbstractC5059
    /* renamed from: ⁱˊ */
    public final /* bridge */ /* synthetic */ boolean mo9966(AbstractC5059 abstractC5059) {
        return false;
    }

    @Override // p428.AbstractC5059
    /* renamed from: ﹳٴ */
    public final int mo9967() {
        return this.f19083;
    }
}
