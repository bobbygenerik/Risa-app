package p286;

import p013.C0907;
import p035.AbstractC1219;
import p121.AbstractC2026;
import p126.InterfaceC2136;
import p316.AbstractC3906;
import p324.InterfaceC4023;
import p329.InterfaceC4087;
import p329.InterfaceC4106;
import p373.EnumC4532;

/* renamed from: ٴˑ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3584 extends AbstractC3906 implements InterfaceC4087 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final /* synthetic */ boolean f13999;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f14000;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC4106 f14001;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC1219 f14002;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f14003 = 0;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final /* synthetic */ boolean f14004;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3584(AbstractC1219 abstractC1219, boolean z, boolean z2, InterfaceC4106 interfaceC4106, InterfaceC2136 interfaceC2136) {
        super(2, interfaceC2136);
        this.f14002 = abstractC1219;
        this.f13999 = z;
        this.f14004 = z2;
        this.f14001 = interfaceC4106;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3584(InterfaceC2136 interfaceC2136, AbstractC1219 abstractC1219, boolean z, boolean z2, InterfaceC4106 interfaceC4106) {
        super(2, interfaceC2136);
        this.f14002 = abstractC1219;
        this.f13999 = z;
        this.f14004 = z2;
        this.f14001 = interfaceC4106;
    }

    @Override // p329.InterfaceC4087
    /* renamed from: ʼˎ */
    public final Object mo3749(Object obj, Object obj2) {
        InterfaceC4023 interfaceC4023 = (InterfaceC4023) obj;
        InterfaceC2136 interfaceC2136 = (InterfaceC2136) obj2;
        switch (this.f14003) {
            case 0:
                return ((C3584) mo3750(interfaceC4023, interfaceC2136)).mo3389(C0907.f3832);
            default:
                return ((C3584) mo3750(interfaceC4023, interfaceC2136)).mo3389(C0907.f3832);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ˉˆ */
    public final InterfaceC2136 mo3750(Object obj, InterfaceC2136 interfaceC2136) {
        switch (this.f14003) {
            case 0:
                return new C3584(this.f14002, this.f13999, this.f14004, this.f14001, interfaceC2136);
            default:
                return new C3584(interfaceC2136, this.f14002, this.f13999, this.f14004, this.f14001);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        switch (this.f14003) {
            case 0:
                int i = this.f14000;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    AbstractC2026.m5044(obj);
                    return obj;
                }
                AbstractC2026.m5044(obj);
                AbstractC1219 abstractC1219 = this.f14002;
                boolean z = !(abstractC1219.m3760() && abstractC1219.m3762()) && this.f13999;
                boolean z2 = this.f14004;
                AbstractC1219 abstractC12192 = this.f14002;
                C3585 c3585 = new C3585(z, z2, abstractC12192, null, this.f14001, 0);
                this.f14000 = 1;
                Object m3768 = abstractC12192.m3768(z2, c3585, this);
                EnumC4532 enumC4532 = EnumC4532.f16960;
                return m3768 == enumC4532 ? enumC4532 : m3768;
            default:
                int i2 = this.f14000;
                if (i2 != 0) {
                    if (i2 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    AbstractC2026.m5044(obj);
                    return obj;
                }
                AbstractC2026.m5044(obj);
                boolean z3 = this.f14004;
                boolean z4 = this.f13999;
                AbstractC1219 abstractC12193 = this.f14002;
                C3585 c35852 = new C3585(z3, z4, abstractC12193, null, this.f14001, 1);
                this.f14000 = 1;
                Object m37682 = abstractC12193.m3768(z4, c35852, this);
                EnumC4532 enumC45322 = EnumC4532.f16960;
                return m37682 == enumC45322 ? enumC45322 : m37682;
        }
    }
}
