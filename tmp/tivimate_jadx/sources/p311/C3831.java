package p311;

import p126.InterfaceC2136;
import p208.InterfaceC2947;
import p324.C4030;
import p373.EnumC4532;
import ˉᵎ.ⁱˊ;

/* renamed from: ᐧᵢ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3831 extends AbstractC3815 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ int f14832;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final InterfaceC3838 f14833;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3831(C3810 c3810, InterfaceC2947 interfaceC2947, InterfaceC3837 interfaceC3837, InterfaceC3838 interfaceC3838, int i) {
        super(c3810, interfaceC2947, interfaceC3837);
        this.f14832 = i;
        this.f14833 = interfaceC3838;
    }

    @Override // p311.AbstractC3815
    /* renamed from: ﹳٴ */
    public final Object mo7993(C3821 c3821, Object[] objArr) {
        switch (this.f14832) {
            case 0:
                return this.f14833.mo6853(c3821);
            default:
                InterfaceC3801 interfaceC3801 = (InterfaceC3801) this.f14833.mo6853(c3821);
                InterfaceC2136 interfaceC2136 = (InterfaceC2136) objArr[objArr.length - 1];
                try {
                    C4030 c4030 = new C4030(1, ⁱˊ.ˈٴ(interfaceC2136));
                    c4030.m8206();
                    c4030.m8211(new C3794(interfaceC3801, 2));
                    interfaceC3801.mo7978(new C3787(c4030, 1));
                    return c4030.m8209();
                } catch (Exception e) {
                    AbstractC3798.m7960(e, interfaceC2136);
                    return EnumC4532.f16960;
                }
        }
    }
}
