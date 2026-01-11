package p089;

import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p316.InterfaceC3903;

/* renamed from: ʿᵔ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1770 implements InterfaceC2136, InterfaceC3903 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC2136 f7157;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC2139 f7158;

    public C1770(InterfaceC2136 interfaceC2136, InterfaceC2139 interfaceC2139) {
        this.f7157 = interfaceC2136;
        this.f7158 = interfaceC2139;
    }

    @Override // p316.InterfaceC3903
    /* renamed from: ˈ */
    public final InterfaceC3903 mo4725() {
        InterfaceC2136 interfaceC2136 = this.f7157;
        if (interfaceC2136 instanceof InterfaceC3903) {
            return (InterfaceC3903) interfaceC2136;
        }
        return null;
    }

    @Override // p126.InterfaceC2136
    /* renamed from: ᵔᵢ */
    public final void mo3549(Object obj) {
        this.f7157.mo3549(obj);
    }

    @Override // p126.InterfaceC2136
    /* renamed from: ﾞᴵ */
    public final InterfaceC2139 mo3551() {
        return this.f7158;
    }
}
