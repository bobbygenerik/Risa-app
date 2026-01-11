package p035;

import p013.C0907;
import p121.AbstractC2026;
import p126.InterfaceC2136;
import p316.AbstractC3906;
import p324.InterfaceC4023;
import p329.InterfaceC4087;
import p373.EnumC4532;

/* renamed from: ʼﾞ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1209 extends AbstractC3906 implements InterfaceC4087 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f4680;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ C1230 f4681;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f4682;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1209(C1230 c1230, InterfaceC2136 interfaceC2136, int i) {
        super(2, interfaceC2136);
        this.f4682 = i;
        this.f4681 = c1230;
    }

    @Override // p329.InterfaceC4087
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final Object mo3749(Object obj, Object obj2) {
        InterfaceC4023 interfaceC4023 = (InterfaceC4023) obj;
        InterfaceC2136 interfaceC2136 = (InterfaceC2136) obj2;
        switch (this.f4682) {
            case 0:
                return ((C1209) mo3750(interfaceC4023, interfaceC2136)).mo3389(C0907.f3832);
            case 1:
                return ((C1209) mo3750(interfaceC4023, interfaceC2136)).mo3389(C0907.f3832);
            default:
                return ((C1209) mo3750(interfaceC4023, interfaceC2136)).mo3389(C0907.f3832);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final InterfaceC2136 mo3750(Object obj, InterfaceC2136 interfaceC2136) {
        switch (this.f4682) {
            case 0:
                return new C1209(this.f4681, interfaceC2136, 0);
            case 1:
                return new C1209(this.f4681, interfaceC2136, 1);
            default:
                return new C1209(this.f4681, interfaceC2136, 2);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        switch (this.f4682) {
            case 0:
                int i = this.f4680;
                if (i == 0) {
                    AbstractC2026.m5044(obj);
                    C1232 c1232 = this.f4681.f4763;
                    this.f4680 = 1;
                    Object m3809 = c1232.m3809(this);
                    EnumC4532 enumC4532 = EnumC4532.f16960;
                    if (m3809 == enumC4532) {
                        return enumC4532;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    AbstractC2026.m5044(obj);
                }
                return C0907.f3832;
            case 1:
                int i2 = this.f4680;
                if (i2 == 0) {
                    AbstractC2026.m5044(obj);
                    C1232 c12322 = this.f4681.f4763;
                    this.f4680 = 1;
                    Object m38092 = c12322.m3809(this);
                    EnumC4532 enumC45322 = EnumC4532.f16960;
                    if (m38092 == enumC45322) {
                        return enumC45322;
                    }
                } else {
                    if (i2 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    AbstractC2026.m5044(obj);
                }
                return C0907.f3832;
            default:
                int i3 = this.f4680;
                if (i3 == 0) {
                    AbstractC2026.m5044(obj);
                    this.f4680 = 1;
                    Object m3800 = this.f4681.m3800(this);
                    EnumC4532 enumC45323 = EnumC4532.f16960;
                    if (m3800 == enumC45323) {
                        return enumC45323;
                    }
                } else {
                    if (i3 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    AbstractC2026.m5044(obj);
                }
                return C0907.f3832;
        }
    }
}
