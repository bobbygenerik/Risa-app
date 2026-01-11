package p311;

import p126.InterfaceC2136;
import p208.InterfaceC2947;
import p373.EnumC4532;

/* renamed from: ᐧᵢ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3836 extends AbstractC3815 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final InterfaceC3838 f14845;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean f14846;

    public C3836(C3810 c3810, InterfaceC2947 interfaceC2947, InterfaceC3837 interfaceC3837, InterfaceC3838 interfaceC3838, boolean z) {
        super(c3810, interfaceC2947, interfaceC3837);
        this.f14845 = interfaceC3838;
        this.f14846 = z;
    }

    @Override // p311.AbstractC3815
    /* renamed from: ﹳٴ */
    public final Object mo7993(C3821 c3821, Object[] objArr) {
        InterfaceC3801 interfaceC3801 = (InterfaceC3801) this.f14845.mo6853(c3821);
        InterfaceC2136 interfaceC2136 = (InterfaceC2136) objArr[objArr.length - 1];
        try {
            return this.f14846 ? AbstractC3798.m7961(interfaceC3801, interfaceC2136) : AbstractC3798.m7972(interfaceC3801, interfaceC2136);
        } catch (LinkageError e) {
            throw e;
        } catch (ThreadDeath e2) {
            throw e2;
        } catch (VirtualMachineError e3) {
            throw e3;
        } catch (Throwable th) {
            AbstractC3798.m7960(th, interfaceC2136);
            return EnumC4532.f16960;
        }
    }
}
