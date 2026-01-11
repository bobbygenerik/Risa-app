package androidx.lifecycle;

import p126.InterfaceC2139;
import p324.C3997;
import p324.InterfaceC4023;
import p324.InterfaceC4036;

/* renamed from: androidx.lifecycle.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0159 implements InterfaceC0183, InterfaceC4023 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C0184 f1034;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC2139 f1035;

    public C0159(C0184 c0184, InterfaceC2139 interfaceC2139) {
        InterfaceC4036 interfaceC4036;
        this.f1034 = c0184;
        this.f1035 = interfaceC2139;
        if (c0184.f1076 != EnumC0199.f1101 || (interfaceC4036 = (InterfaceC4036) interfaceC2139.mo3419(C3997.f15367)) == null) {
            return;
        }
        interfaceC4036.mo3899(null);
    }

    @Override // p324.InterfaceC4023
    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC2139 mo678() {
        return this.f1035;
    }

    @Override // androidx.lifecycle.InterfaceC0183
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void mo679(InterfaceC0162 interfaceC0162, EnumC0174 enumC0174) {
        C0184 c0184 = this.f1034;
        if (c0184.f1076.compareTo(EnumC0199.f1101) <= 0) {
            c0184.m715(this);
            InterfaceC4036 interfaceC4036 = (InterfaceC4036) this.f1035.mo3419(C3997.f15367);
            if (interfaceC4036 != null) {
                interfaceC4036.mo3899(null);
            }
        }
    }
}
