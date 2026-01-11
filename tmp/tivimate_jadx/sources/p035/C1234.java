package p035;

import p013.C0907;
import p023.C1068;
import p126.InterfaceC2136;
import p316.AbstractC3906;
import p329.InterfaceC4087;

/* renamed from: ʼﾞ.ᴵˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1234 extends AbstractC3906 implements InterfaceC4087 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final /* synthetic */ C1232 f4795;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f4796;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public /* synthetic */ Object f4797;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f4798;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1234(C1232 c1232, InterfaceC2136 interfaceC2136, int i) {
        super(2, interfaceC2136);
        this.f4798 = i;
        this.f4795 = c1232;
    }

    @Override // p329.InterfaceC4087
    /* renamed from: ʼˎ */
    public final Object mo3749(Object obj, Object obj2) {
        switch (this.f4798) {
            case 0:
                return ((C1234) mo3750((C1068) obj, (InterfaceC2136) obj2)).mo3389(C0907.f3832);
            case 1:
                return ((C1234) mo3750((InterfaceC1221) obj, (InterfaceC2136) obj2)).mo3389(C0907.f3832);
            default:
                return ((C1234) mo3750((InterfaceC1221) obj, (InterfaceC2136) obj2)).mo3389(C0907.f3832);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ˉˆ */
    public final InterfaceC2136 mo3750(Object obj, InterfaceC2136 interfaceC2136) {
        switch (this.f4798) {
            case 0:
                C1234 c1234 = new C1234(this.f4795, interfaceC2136, 0);
                c1234.f4797 = obj;
                return c1234;
            case 1:
                C1234 c12342 = new C1234(this.f4795, interfaceC2136, 1);
                c12342.f4797 = obj;
                return c12342;
            default:
                C1234 c12343 = new C1234(this.f4795, interfaceC2136, 2);
                c12343.f4797 = obj;
                return c12343;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x003b, code lost:
    
        if (r6 == r5) goto L49;
     */
    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo3389(java.lang.Object r21) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p035.C1234.mo3389(java.lang.Object):java.lang.Object");
    }
}
