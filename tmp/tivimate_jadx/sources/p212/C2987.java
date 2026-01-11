package p212;

import p003.C0778;
import p074.InterfaceC1650;
import p074.InterfaceC1651;
import p158.C2537;

/* renamed from: ˏ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2987 implements InterfaceC1650 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C2537 f11400 = new C2537(19);

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C2989 f11401 = new C2989(1);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public volatile InterfaceC1650 f11402;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public InterfaceC1651 f11403;

    public C2987(C2537 c2537, InterfaceC1650 interfaceC1650) {
        this.f11403 = c2537;
        this.f11402 = interfaceC1650;
    }

    @Override // p074.InterfaceC1650
    public final Object get() {
        return this.f11402.get();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6518(InterfaceC1651 interfaceC1651) {
        InterfaceC1650 interfaceC1650;
        InterfaceC1650 interfaceC16502;
        InterfaceC1650 interfaceC16503 = this.f11402;
        C2989 c2989 = f11401;
        if (interfaceC16503 != c2989) {
            interfaceC1651.mo2818(interfaceC16503);
            return;
        }
        synchronized (this) {
            interfaceC1650 = this.f11402;
            if (interfaceC1650 != c2989) {
                interfaceC16502 = interfaceC1650;
            } else {
                this.f11403 = new C0778(this.f11403, 3, interfaceC1651);
                interfaceC16502 = null;
            }
        }
        if (interfaceC16502 != null) {
            interfaceC1651.mo2818(interfaceC1650);
        }
    }
}
