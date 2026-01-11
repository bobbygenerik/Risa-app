package p186;

import android.view.View;
import android.view.ViewGroup;
import p013.C0907;
import p029.C1122;
import p029.C1126;
import p121.AbstractC2026;
import p126.InterfaceC2136;
import p152.AbstractC2443;
import p152.C2439;
import p152.C2457;
import p152.InterfaceC2455;
import p316.AbstractC3905;
import p329.InterfaceC4087;
import p373.EnumC4532;

/* renamed from: ˋᵔ.ᵔٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2829 extends AbstractC3905 implements InterfaceC4087, InterfaceC2455 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f10613;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public /* synthetic */ Object f10614;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f10615;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ View f10616;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2829(View view, InterfaceC2136 interfaceC2136) {
        super(interfaceC2136);
        this.f10616 = view;
        this.f10615 = 2;
    }

    @Override // p316.AbstractC3908
    public final String toString() {
        if (this.f15169 != null) {
            return super.toString();
        }
        AbstractC2443.f9400.getClass();
        return C2439.m5555(this);
    }

    @Override // p329.InterfaceC4087
    /* renamed from: ʼˎ */
    public final Object mo3749(Object obj, Object obj2) {
        return ((C2829) mo3750((C1126) obj, (InterfaceC2136) obj2)).mo3389(C0907.f3832);
    }

    @Override // p316.AbstractC3908
    /* renamed from: ˉˆ */
    public final InterfaceC2136 mo3750(Object obj, InterfaceC2136 interfaceC2136) {
        C2829 c2829 = new C2829(this.f10616, interfaceC2136);
        c2829.f10614 = obj;
        return c2829;
    }

    @Override // p152.InterfaceC2455
    /* renamed from: ˑﹳ */
    public final int mo5556() {
        return this.f10615;
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        Object obj2;
        int i = this.f10613;
        View view = this.f10616;
        Object obj3 = EnumC4532.f16960;
        if (i == 0) {
            AbstractC2026.m5044(obj);
            C1126 c1126 = (C1126) this.f10614;
            this.f10614 = c1126;
            this.f10613 = 1;
            c1126.f4394 = view;
            c1126.f4392 = 3;
            c1126.f4393 = this;
            return obj3;
        }
        Object obj4 = C0907.f3832;
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            AbstractC2026.m5044(obj);
            return obj4;
        }
        C1126 c11262 = (C1126) this.f10614;
        AbstractC2026.m5044(obj);
        if (view instanceof ViewGroup) {
            this.f10614 = null;
            this.f10613 = 2;
            c11262.getClass();
            C1122 c1122 = new C1122(new C2457(1, (ViewGroup) view));
            if (c1122.f4382.hasNext()) {
                c11262.f4391 = c1122;
                c11262.f4392 = 2;
                c11262.f4393 = this;
                obj2 = obj3;
            } else {
                obj2 = obj4;
            }
            if (obj2 != obj3) {
                obj2 = obj4;
            }
            if (obj2 == obj3) {
                return obj3;
            }
        }
        return obj4;
    }
}
