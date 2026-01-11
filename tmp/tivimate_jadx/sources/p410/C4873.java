package p410;

import p173.C2656;
import p197.AbstractC2901;
import p451.C5363;
import ﹳٴ.ﹳٴ;

/* renamed from: ﹳˋ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4873 implements InterfaceC4861, InterfaceC4870 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f18219;

    /* JADX WARN: Type inference failed for: r0v3, types: [ﹳˋ.ᵔﹳ, java.lang.Object, ﹳˋ.ʼʼ] */
    /* JADX WARN: Type inference failed for: r9v2, types: [ﹳˋ.ᵔﹳ, ﹳˋ.ˈ, java.lang.Object] */
    @Override // p410.InterfaceC4870
    /* renamed from: ʽ */
    public final InterfaceC4880 mo9673(AbstractC2901 abstractC2901) {
        switch (this.f18219) {
            case 0:
                int m6402 = (int) abstractC2901.f10939.m6402(abstractC2901);
                ?? obj = new Object();
                obj.f18205 = m6402;
                return obj;
            case 1:
                long m6407 = abstractC2901.f10939.m6407(abstractC2901);
                ?? obj2 = new Object();
                obj2.f18210 = m6407;
                return obj2;
            default:
                C5363 c5363 = ﹳٴ.ٴʼ(abstractC2901);
                C5363 c53632 = ﹳٴ.ٴʼ(abstractC2901);
                C5363 c53633 = ﹳٴ.ٴʼ(abstractC2901);
                C5363 c53634 = ﹳٴ.ٴʼ(abstractC2901);
                long m64022 = abstractC2901.f10939.m6402(abstractC2901);
                abstractC2901.m6414(4);
                return new C4872(c5363, c53632, c53633, c53634, m64022);
        }
    }

    @Override // p410.InterfaceC4861
    /* renamed from: ⁱˊ */
    public final void mo9670(ʼˎ r5, C2656 c2656) {
        switch (this.f18219) {
            case 0:
                c2656.m6419(((C4860) r5).f18205 & 4294967295L);
                return;
            case 1:
                c2656.f10939.m6408(c2656, ((C4867) r5).f18210);
                return;
            default:
                C4872 c4872 = (C4872) r5;
                ﹳٴ.ˊʻ(c4872.f18215, c2656);
                ﹳٴ.ˊʻ(c4872.f18217, c2656);
                ﹳٴ.ˊʻ(c4872.f18214, c2656);
                ﹳٴ.ˊʻ(c4872.f18216, c2656);
                c2656.m6419(c4872.f18218);
                c2656.m6419(0L);
                return;
        }
    }

    @Override // p410.InterfaceC4861
    /* renamed from: ﹳٴ */
    public final int mo9671() {
        switch (this.f18219) {
            case 0:
                return 16;
            case 1:
                return 19;
            default:
                return 4;
        }
    }
}
