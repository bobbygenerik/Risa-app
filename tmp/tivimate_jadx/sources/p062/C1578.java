package p062;

import p013.C0907;
import p035.C1239;
import p090.InterfaceC1824;
import p121.AbstractC2026;
import p126.InterfaceC2136;
import p316.AbstractC3906;
import p324.InterfaceC4023;
import p329.InterfaceC4087;
import p373.EnumC4532;

/* renamed from: ʾˈ.ᵎᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1578 extends AbstractC3906 implements InterfaceC4087 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f6168;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ C1573 f6169;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f6170;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1578(C1573 c1573, InterfaceC2136 interfaceC2136, int i) {
        super(2, interfaceC2136);
        this.f6170 = i;
        this.f6169 = c1573;
    }

    @Override // p329.InterfaceC4087
    /* renamed from: ʼˎ */
    public final Object mo3749(Object obj, Object obj2) {
        InterfaceC4023 interfaceC4023 = (InterfaceC4023) obj;
        InterfaceC2136 interfaceC2136 = (InterfaceC2136) obj2;
        switch (this.f6170) {
            case 0:
                return ((C1578) mo3750(interfaceC4023, interfaceC2136)).mo3389(C0907.f3832);
            default:
                return ((C1578) mo3750(interfaceC4023, interfaceC2136)).mo3389(C0907.f3832);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ˉˆ */
    public final InterfaceC2136 mo3750(Object obj, InterfaceC2136 interfaceC2136) {
        switch (this.f6170) {
            case 0:
                return new C1578(this.f6169, interfaceC2136, 0);
            default:
                return new C1578(this.f6169, interfaceC2136, 1);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        switch (this.f6170) {
            case 0:
                int i = this.f6168;
                if (i == 0) {
                    AbstractC2026.m5044(obj);
                    C1573 c1573 = this.f6169;
                    C1239 c1239 = new C1239(c1573.f6147.mo4745(), new C1543(c1573, null), 2);
                    C1544 c1544 = new C1544(0, c1573);
                    this.f6168 = 1;
                    Object mo3411 = c1239.mo3411(c1544, this);
                    EnumC4532 enumC4532 = EnumC4532.f16960;
                    if (mo3411 == enumC4532) {
                        return enumC4532;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    AbstractC2026.m5044(obj);
                }
                return C0907.f3832;
            default:
                int i2 = this.f6168;
                InterfaceC2136 interfaceC2136 = null;
                C1573 c15732 = this.f6169;
                try {
                    if (i2 == 0) {
                        AbstractC2026.m5044(obj);
                        InterfaceC1824 interfaceC1824 = c15732.f6147;
                        C1571 c1571 = new C1571(c15732, interfaceC2136, 0);
                        this.f6168 = 1;
                        Object mo4746 = interfaceC1824.mo4746(c1571, this);
                        EnumC4532 enumC45322 = EnumC4532.f16960;
                        if (mo4746 == enumC45322) {
                            return enumC45322;
                        }
                    } else {
                        if (i2 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        AbstractC2026.m5044(obj);
                    }
                } catch (Exception e) {
                    String str = "App backgrounded, failed to update data. Message: " + e.getMessage();
                    C1579 c1579 = c15732.f6149;
                    if (c1579 == null) {
                        c1579 = null;
                    }
                    c15732.f6149 = C1579.m4365(c1579, null, c15732.f6146.m4347(), null, 5);
                }
                return C0907.f3832;
        }
    }
}
