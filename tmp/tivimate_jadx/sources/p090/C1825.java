package p090;

import p013.C0907;
import p121.AbstractC2026;
import p126.InterfaceC2136;
import p316.AbstractC3906;
import p329.InterfaceC4087;

/* renamed from: ʿᵢ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1825 extends AbstractC3906 implements InterfaceC4087 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public /* synthetic */ Object f7359;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f7360;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1825(int i, InterfaceC2136 interfaceC2136, int i2) {
        super(i, interfaceC2136);
        this.f7360 = i2;
    }

    @Override // p329.InterfaceC4087
    /* renamed from: ʼˎ */
    public final Object mo3749(Object obj, Object obj2) {
        switch (this.f7360) {
            case 0:
                return ((C1825) mo3750((AbstractC1790) obj, (InterfaceC2136) obj2)).mo3389(C0907.f3832);
            default:
                C1825 c1825 = (C1825) mo3750((String) obj, (InterfaceC2136) obj2);
                C0907 c0907 = C0907.f3832;
                c1825.mo3389(c0907);
                return c0907;
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ˉˆ */
    public final InterfaceC2136 mo3750(Object obj, InterfaceC2136 interfaceC2136) {
        switch (this.f7360) {
            case 0:
                C1825 c1825 = new C1825(2, interfaceC2136, 0);
                c1825.f7359 = obj;
                return c1825;
            default:
                C1825 c18252 = new C1825(2, interfaceC2136, 1);
                c18252.f7359 = obj;
                return c18252;
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        switch (this.f7360) {
            case 0:
                AbstractC2026.m5044(obj);
                return Boolean.valueOf(!(((AbstractC1790) this.f7359) instanceof C1789));
            default:
                AbstractC2026.m5044(obj);
                String str = "Error failed to fetch the remote configs: " + ((String) this.f7359);
                return C0907.f3832;
        }
    }
}
