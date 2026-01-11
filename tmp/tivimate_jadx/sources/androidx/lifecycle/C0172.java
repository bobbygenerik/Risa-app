package androidx.lifecycle;

/* renamed from: androidx.lifecycle.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0172 implements InterfaceC0187 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f1060 = -1;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AbstractC0161 f1061;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC0187 f1062;

    public C0172(AbstractC0161 abstractC0161, InterfaceC0187 interfaceC0187) {
        this.f1061 = abstractC0161;
        this.f1062 = interfaceC0187;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m700() {
        this.f1061.m683(this);
    }

    @Override // androidx.lifecycle.InterfaceC0187
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo701(Object obj) {
        int i = this.f1060;
        int i2 = this.f1061.f1044;
        if (i != i2) {
            this.f1060 = i2;
            this.f1062.mo701(obj);
        }
    }
}
