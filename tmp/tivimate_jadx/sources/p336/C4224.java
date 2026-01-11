package p336;

import p013.C0907;
import p121.AbstractC2026;
import p126.InterfaceC2136;
import p316.AbstractC3906;
import p324.InterfaceC4023;
import p329.InterfaceC4087;
import p340.AbstractC4240;
import p340.InterfaceC4254;
import p373.EnumC4532;

/* renamed from: ᵎʽ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4224 extends AbstractC3906 implements InterfaceC4087 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f15702;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ C4220 f15703;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f15704;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C4224(C4220 c4220, InterfaceC2136 interfaceC2136, int i) {
        super(2, interfaceC2136);
        this.f15704 = i;
        this.f15703 = c4220;
    }

    @Override // p329.InterfaceC4087
    /* renamed from: ʼˎ */
    public final Object mo3749(Object obj, Object obj2) {
        InterfaceC4023 interfaceC4023 = (InterfaceC4023) obj;
        InterfaceC2136 interfaceC2136 = (InterfaceC2136) obj2;
        switch (this.f15704) {
            case 0:
                return ((C4224) mo3750(interfaceC4023, interfaceC2136)).mo3389(C0907.f3832);
            default:
                return ((C4224) mo3750(interfaceC4023, interfaceC2136)).mo3389(C0907.f3832);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ˉˆ */
    public final InterfaceC2136 mo3750(Object obj, InterfaceC2136 interfaceC2136) {
        switch (this.f15704) {
            case 0:
                return new C4224(this.f15703, interfaceC2136, 0);
            default:
                return new C4224(this.f15703, interfaceC2136, 1);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        switch (this.f15704) {
            case 0:
                int i = this.f15702;
                if (i == 0) {
                    AbstractC2026.m5044(obj);
                    C4220 c4220 = this.f15703;
                    InterfaceC4254 mo4745 = c4220.f15692.mo4745();
                    C4218 c4218 = new C4218(c4220.f15691);
                    this.f15702 = 1;
                    Object mo3411 = mo4745.mo3411(c4218, this);
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
                int i2 = this.f15702;
                if (i2 != 0) {
                    if (i2 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    AbstractC2026.m5044(obj);
                    return obj;
                }
                AbstractC2026.m5044(obj);
                InterfaceC4254 mo47452 = this.f15703.f15692.mo4745();
                this.f15702 = 1;
                Object m8641 = AbstractC4240.m8641(mo47452, this);
                EnumC4532 enumC45322 = EnumC4532.f16960;
                return m8641 == enumC45322 ? enumC45322 : m8641;
        }
    }
}
