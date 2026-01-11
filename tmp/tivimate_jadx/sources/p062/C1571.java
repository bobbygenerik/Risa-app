package p062;

import p013.C0907;
import p126.InterfaceC2136;
import p316.AbstractC3906;
import p329.InterfaceC4087;

/* renamed from: ʾˈ.ᐧᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1571 extends AbstractC3906 implements InterfaceC4087 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public /* synthetic */ Object f6137;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ C1573 f6138;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f6139;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1571(C1573 c1573, InterfaceC2136 interfaceC2136, int i) {
        super(2, interfaceC2136);
        this.f6139 = i;
        this.f6138 = c1573;
    }

    @Override // p329.InterfaceC4087
    /* renamed from: ʼˎ */
    public final Object mo3749(Object obj, Object obj2) {
        C1579 c1579 = (C1579) obj;
        InterfaceC2136 interfaceC2136 = (InterfaceC2136) obj2;
        switch (this.f6139) {
            case 0:
                return ((C1571) mo3750(c1579, interfaceC2136)).mo3389(C0907.f3832);
            default:
                return ((C1571) mo3750(c1579, interfaceC2136)).mo3389(C0907.f3832);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ˉˆ */
    public final InterfaceC2136 mo3750(Object obj, InterfaceC2136 interfaceC2136) {
        switch (this.f6139) {
            case 0:
                C1571 c1571 = new C1571(this.f6138, interfaceC2136, 0);
                c1571.f6137 = obj;
                return c1571;
            default:
                C1571 c15712 = new C1571(this.f6138, interfaceC2136, 1);
                c15712.f6137 = obj;
                return c15712;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x009f  */
    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo3389(java.lang.Object r17) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p062.C1571.mo3389(java.lang.Object):java.lang.Object");
    }
}
