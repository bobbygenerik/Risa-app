package p090;

import p013.C0907;
import p121.AbstractC2026;
import p126.InterfaceC2136;
import p316.AbstractC3906;
import p329.InterfaceC4102;
import p373.EnumC4532;

/* renamed from: ʿᵢ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1794 extends AbstractC3906 implements InterfaceC4102 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f7253;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public /* synthetic */ Object f7254;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f7255 = 1;

    public /* synthetic */ C1794(int i, InterfaceC2136 interfaceC2136) {
        super(i, interfaceC2136);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1794(C1791 c1791, InterfaceC2136 interfaceC2136) {
        super(3, interfaceC2136);
        this.f7254 = c1791;
    }

    @Override // p329.InterfaceC4102
    /* renamed from: ᵎﹶ */
    public final Object mo4346(Object obj, Object obj2, Object obj3) {
        switch (this.f7255) {
            case 0:
                return new C1794((C1791) this.f7254, (InterfaceC2136) obj3).mo3389(C0907.f3832);
            default:
                ((Boolean) obj2).getClass();
                C1794 c1794 = new C1794(3, (InterfaceC2136) obj3);
                c1794.f7254 = (InterfaceC1815) obj;
                return c1794.mo3389(C0907.f3832);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        switch (this.f7255) {
            case 0:
                int i = this.f7253;
                if (i == 0) {
                    AbstractC2026.m5044(obj);
                    C1791 c1791 = (C1791) this.f7254;
                    this.f7253 = 1;
                    Object m4736 = C1791.m4736(c1791, this);
                    EnumC4532 enumC4532 = EnumC4532.f16960;
                    if (m4736 == enumC4532) {
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
                int i2 = this.f7253;
                if (i2 != 0) {
                    if (i2 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    AbstractC2026.m5044(obj);
                    return obj;
                }
                AbstractC2026.m5044(obj);
                InterfaceC1815 interfaceC1815 = (InterfaceC1815) this.f7254;
                this.f7253 = 1;
                Object mo4749 = interfaceC1815.mo4749(this);
                EnumC4532 enumC45322 = EnumC4532.f16960;
                return mo4749 == enumC45322 ? enumC45322 : mo4749;
        }
    }
}
