package p208;

import p052.AbstractC1430;
import p052.C1425;
import p164.C2571;
import p164.InterfaceC2590;
import p423.C5012;

/* renamed from: ˎᵢ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2938 extends AbstractC2944 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f11148;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f11149;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f11150;

    public /* synthetic */ C2938(Object obj, int i, Object obj2) {
        this.f11150 = i;
        this.f11149 = obj;
        this.f11148 = obj2;
    }

    public C2938(AbstractC2944 abstractC2944, C2968 c2968) {
        this.f11150 = 1;
        this.f11148 = abstractC2944;
        this.f11149 = c2968;
    }

    @Override // p208.AbstractC2944
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo6463(InterfaceC2590 interfaceC2590) {
        switch (this.f11150) {
            case 0:
                interfaceC2590.mo5742((C2571) this.f11148);
                return;
            case 1:
                ((AbstractC2944) this.f11148).mo6463(interfaceC2590);
                return;
            default:
                ((AbstractC1430) this.f11149).mo4119(new C1425(interfaceC2590), this.f11148);
                return;
        }
    }

    @Override // p208.AbstractC2944
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2968 mo6464() {
        switch (this.f11150) {
            case 0:
                return (C2968) this.f11149;
            case 1:
                return (C2968) this.f11149;
            default:
                return C5012.f18753;
        }
    }

    @Override // p208.AbstractC2944
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public long mo6465() {
        switch (this.f11150) {
            case 0:
                return ((C2571) this.f11148).mo5749();
            case 1:
                return ((AbstractC2944) this.f11148).mo6465();
            default:
                return super.mo6465();
        }
    }
}
