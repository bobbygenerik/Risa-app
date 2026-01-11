package p216;

import p013.C0907;
import p023.C1068;
import p121.AbstractC2026;
import p126.InterfaceC2136;
import p315.C3899;
import p316.AbstractC3906;
import p329.InterfaceC4087;
import p329.InterfaceC4106;

/* renamed from: ˏˊ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3012 extends AbstractC3906 implements InterfaceC4087 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public /* synthetic */ Object f11511;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC4106 f11512;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f11513;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3012(InterfaceC2136 interfaceC2136, InterfaceC4106 interfaceC4106, int i) {
        super(2, interfaceC2136);
        this.f11513 = i;
        this.f11512 = interfaceC4106;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3012(InterfaceC4106 interfaceC4106, InterfaceC2136 interfaceC2136) {
        super(2, interfaceC2136);
        this.f11513 = 0;
        this.f11512 = interfaceC4106;
    }

    @Override // p329.InterfaceC4087
    /* renamed from: ʼˎ */
    public final Object mo3749(Object obj, Object obj2) {
        switch (this.f11513) {
            case 0:
                C3012 c3012 = (C3012) mo3750((C3899) obj, (InterfaceC2136) obj2);
                C0907 c0907 = C0907.f3832;
                c3012.mo3389(c0907);
                return c0907;
            case 1:
                return ((C3012) mo3750((C1068) obj, (InterfaceC2136) obj2)).mo3389(C0907.f3832);
            default:
                return ((C3012) mo3750((C1068) obj, (InterfaceC2136) obj2)).mo3389(C0907.f3832);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ˉˆ */
    public final InterfaceC2136 mo3750(Object obj, InterfaceC2136 interfaceC2136) {
        switch (this.f11513) {
            case 0:
                C3012 c3012 = new C3012(this.f11512, interfaceC2136);
                c3012.f11511 = obj;
                return c3012;
            case 1:
                C3012 c30122 = new C3012(interfaceC2136, this.f11512, 1);
                c30122.f11511 = obj;
                return c30122;
            default:
                C3012 c30123 = new C3012(interfaceC2136, this.f11512, 2);
                c30123.f11511 = obj;
                return c30123;
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        switch (this.f11513) {
            case 0:
                AbstractC2026.m5044(obj);
                this.f11512.mo3844((C3899) this.f11511);
                return C0907.f3832;
            case 1:
                AbstractC2026.m5044(obj);
                return this.f11512.mo3844(((C1068) this.f11511).mo3398());
            default:
                AbstractC2026.m5044(obj);
                return this.f11512.mo3844(((C1068) this.f11511).mo3398());
        }
    }
}
