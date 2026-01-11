package androidx.lifecycle;

/* renamed from: androidx.lifecycle.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0163 extends AbstractC0192 implements InterfaceC0183 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0161 f1049;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final InterfaceC0162 f1050;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0163(AbstractC0161 abstractC0161, InterfaceC0162 interfaceC0162, InterfaceC0187 interfaceC0187) {
        super(abstractC0161, interfaceC0187);
        this.f1049 = abstractC0161;
        this.f1050 = interfaceC0162;
    }

    @Override // androidx.lifecycle.AbstractC0192
    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean mo692(InterfaceC0162 interfaceC0162) {
        return this.f1050 == interfaceC0162;
    }

    @Override // androidx.lifecycle.AbstractC0192
    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean mo693() {
        return this.f1050.mo691().f1076.m733(EnumC0199.f1102);
    }

    @Override // androidx.lifecycle.InterfaceC0183
    /* renamed from: ᵎﹶ */
    public final void mo679(InterfaceC0162 interfaceC0162, EnumC0174 enumC0174) {
        InterfaceC0162 interfaceC01622 = this.f1050;
        EnumC0199 enumC0199 = interfaceC01622.mo691().f1076;
        if (enumC0199 == EnumC0199.f1101) {
            this.f1049.m683(this.f1089);
            return;
        }
        EnumC0199 enumC01992 = null;
        while (enumC01992 != enumC0199) {
            m725(mo693());
            enumC01992 = enumC0199;
            enumC0199 = interfaceC01622.mo691().f1076;
        }
    }

    @Override // androidx.lifecycle.AbstractC0192
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo694() {
        this.f1050.mo691().m715(this);
    }
}
