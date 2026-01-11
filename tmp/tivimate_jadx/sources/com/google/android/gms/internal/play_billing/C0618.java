package com.google.android.gms.internal.play_billing;

import java.nio.charset.Charset;

/* renamed from: com.google.android.gms.internal.play_billing.ᵎʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0618 implements InterfaceC0636 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C0539 f2446 = new C0539(4);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f2447;

    public C0618() {
        C0637 c0637 = C0637.f2473;
        C0618 c0618 = new C0618(C0539.f2312, f2446);
        Charset charset = AbstractC0634.f2471;
        this.f2447 = c0618;
    }

    public C0618(C0606 c0606) {
        Charset charset = AbstractC0634.f2471;
        this.f2447 = c0606;
        c0606.f2415 = this;
    }

    public C0618(InterfaceC0636... interfaceC0636Arr) {
        this.f2447 = interfaceC0636Arr;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void m2218(int i, Object obj, InterfaceC0571 interfaceC0571) {
        C0606 c0606 = (C0606) this.f2447;
        c0606.m2206(i, 3);
        interfaceC0571.mo2147((AbstractC0601) obj, c0606.f2415);
        c0606.m2206(i, 4);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public void m2219(int i, Object obj, InterfaceC0571 interfaceC0571) {
        AbstractC0601 abstractC0601 = (AbstractC0601) obj;
        C0606 c0606 = (C0606) this.f2447;
        c0606.m2207((i << 3) | 2);
        c0606.m2207(abstractC0601.mo2048(interfaceC0571));
        interfaceC0571.mo2147(abstractC0601, c0606.f2415);
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0636
    /* renamed from: ⁱˊ */
    public boolean mo2087(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (((InterfaceC0636[]) this.f2447)[i].mo2087(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0636
    /* renamed from: ﹳٴ */
    public C0535 mo2088(Class cls) {
        for (int i = 0; i < 2; i++) {
            InterfaceC0636 interfaceC0636 = ((InterfaceC0636[]) this.f2447)[i];
            if (interfaceC0636.mo2087(cls)) {
                return interfaceC0636.mo2088(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }
}
