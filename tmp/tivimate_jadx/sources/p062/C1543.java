package p062;

import p013.C0907;
import p121.AbstractC2026;
import p126.InterfaceC2136;
import p316.AbstractC3906;
import p329.InterfaceC4102;
import p340.InterfaceC4256;
import p373.EnumC4532;

/* renamed from: ʾˈ.ʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1543 extends AbstractC3906 implements InterfaceC4102 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final /* synthetic */ C1573 f6063;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public /* synthetic */ InterfaceC4256 f6064;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public /* synthetic */ Throwable f6065;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f6066;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1543(C1573 c1573, InterfaceC2136 interfaceC2136) {
        super(3, interfaceC2136);
        this.f6063 = c1573;
    }

    @Override // p329.InterfaceC4102
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Object mo4346(Object obj, Object obj2, Object obj3) {
        C1543 c1543 = new C1543(this.f6063, (InterfaceC2136) obj3);
        c1543.f6064 = (InterfaceC4256) obj;
        c1543.f6065 = (Throwable) obj2;
        return c1543.mo3389(C0907.f3832);
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        int i = this.f6066;
        if (i == 0) {
            AbstractC2026.m5044(obj);
            InterfaceC4256 interfaceC4256 = this.f6064;
            Throwable th = this.f6065;
            C1583 m4366 = this.f6063.f6150.m4366(null);
            C1579 c1579 = new C1579(m4366, null, null);
            String str = "Init session datastore failed with exception message: " + th.getMessage() + ". Emit fallback session " + m4366.f6185;
            this.f6064 = null;
            this.f6066 = 1;
            Object mo3399 = interfaceC4256.mo3399(c1579, this);
            EnumC4532 enumC4532 = EnumC4532.f16960;
            if (mo3399 == enumC4532) {
                return enumC4532;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            AbstractC2026.m5044(obj);
        }
        return C0907.f3832;
    }
}
