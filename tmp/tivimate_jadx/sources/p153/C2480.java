package p153;

import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p316.InterfaceC3903;
import p324.AbstractC3999;
import p324.AbstractC4051;
import ˉᵎ.ⁱˊ;

/* renamed from: ˊʽ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2480 extends AbstractC4051 implements InterfaceC3903 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final InterfaceC2136 f9462;

    public C2480(InterfaceC2136 interfaceC2136, InterfaceC2139 interfaceC2139) {
        super(interfaceC2139, true, true);
        this.f9462 = interfaceC2136;
    }

    @Override // p316.InterfaceC3903
    /* renamed from: ˈ */
    public final InterfaceC3903 mo4725() {
        InterfaceC2136 interfaceC2136 = this.f9462;
        if (interfaceC2136 instanceof InterfaceC3903) {
            return (InterfaceC3903) interfaceC2136;
        }
        return null;
    }

    @Override // p324.C4031
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void mo5614(Object obj) {
        AbstractC2481.m5626(AbstractC3999.m8177(obj), ⁱˊ.ˈٴ(this.f9462));
    }

    @Override // p324.C4031
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public void mo5615(Object obj) {
        this.f9462.mo3549(AbstractC3999.m8177(obj));
    }

    @Override // p324.C4031
    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final boolean mo5616() {
        return true;
    }

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public void mo5617() {
    }
}
