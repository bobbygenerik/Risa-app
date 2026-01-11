package p079;

import p171.AbstractC2625;
import p171.C2641;
import p171.C2647;
import p171.InterfaceC2626;

/* renamed from: ʿʽ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1682 extends AbstractC2625 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ C1681 f6830;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC2626 f6831;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1682(C1681 c1681, InterfaceC2626 interfaceC2626, InterfaceC2626 interfaceC26262) {
        super(interfaceC2626);
        this.f6830 = c1681;
        this.f6831 = interfaceC26262;
    }

    @Override // p171.AbstractC2625, p171.InterfaceC2626
    /* renamed from: ˆʾ */
    public final C2647 mo2901(long j) {
        C2647 mo2901 = this.f6831.mo2901(j);
        C2641 c2641 = mo2901.f10035;
        long j2 = c2641.f10027;
        long j3 = c2641.f10026;
        long j4 = this.f6830.f6829;
        C2641 c26412 = new C2641(j2, j3 + j4);
        C2641 c26413 = mo2901.f10034;
        return new C2647(c26412, new C2641(c26413.f10027, c26413.f10026 + j4));
    }
}
