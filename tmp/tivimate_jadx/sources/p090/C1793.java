package p090;

import p013.C0907;
import p126.InterfaceC2136;
import p316.AbstractC3906;
import p324.InterfaceC4023;
import p329.InterfaceC4087;
import p340.InterfaceC4256;

/* renamed from: ʿᵢ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1793 extends AbstractC3906 implements InterfaceC4087 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f7250;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ C1791 f7251;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f7252;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1793(C1791 c1791, InterfaceC2136 interfaceC2136, int i) {
        super(2, interfaceC2136);
        this.f7252 = i;
        this.f7251 = c1791;
    }

    @Override // p329.InterfaceC4087
    /* renamed from: ʼˎ */
    public final Object mo3749(Object obj, Object obj2) {
        switch (this.f7252) {
            case 0:
                return ((C1793) mo3750((InterfaceC4256) obj, (InterfaceC2136) obj2)).mo3389(C0907.f3832);
            case 1:
                return ((C1793) mo3750((InterfaceC4023) obj, (InterfaceC2136) obj2)).mo3389(C0907.f3832);
            default:
                return ((C1793) mo3750((InterfaceC4023) obj, (InterfaceC2136) obj2)).mo3389(C0907.f3832);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ˉˆ */
    public final InterfaceC2136 mo3750(Object obj, InterfaceC2136 interfaceC2136) {
        switch (this.f7252) {
            case 0:
                return new C1793(this.f7251, interfaceC2136, 0);
            case 1:
                return new C1793(this.f7251, interfaceC2136, 1);
            default:
                return new C1793(this.f7251, interfaceC2136, 2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0088, code lost:
    
        if (r7 == r5) goto L43;
     */
    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo3389(java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p090.C1793.mo3389(java.lang.Object):java.lang.Object");
    }
}
