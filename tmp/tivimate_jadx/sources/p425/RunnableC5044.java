package p425;

import ar.tvplayer.core.data.api.parse.ˈ;
import p003.C0779;
import p003.C0792;
import p223.C3056;
import p262.C3433;
import p305.AbstractC3712;
import p392.SurfaceHolderCallbackC4642;

/* renamed from: ﹶ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC5044 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f18975;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C3433 f18976;

    public /* synthetic */ RunnableC5044(C3433 c3433, int i, long j, long j2) {
        this.f18975 = 6;
        this.f18976 = c3433;
    }

    public /* synthetic */ RunnableC5044(C3433 c3433, long j) {
        this.f18975 = 1;
        this.f18976 = c3433;
    }

    public /* synthetic */ RunnableC5044(C3433 c3433, Object obj, int i) {
        this.f18975 = i;
        this.f18976 = c3433;
    }

    public /* synthetic */ RunnableC5044(C3433 c3433, String str, long j, long j2) {
        this.f18975 = 3;
        this.f18976 = c3433;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f18975;
        C3433 c3433 = this.f18976;
        switch (i) {
            case 0:
                InterfaceC5046 interfaceC5046 = (InterfaceC5046) c3433.f13456;
                String str = AbstractC3712.f14481;
                C0779 c0779 = ((SurfaceHolderCallbackC4642) interfaceC5046).f17344.f17373;
                c0779.m2848(c0779.m2841(), 1029, new ˈ(23));
                return;
            case 1:
                InterfaceC5046 interfaceC50462 = (InterfaceC5046) c3433.f13456;
                String str2 = AbstractC3712.f14481;
                C0779 c07792 = ((SurfaceHolderCallbackC4642) interfaceC50462).f17344.f17373;
                c07792.m2848(c07792.m2841(), 1010, new C0792(3));
                return;
            case 2:
                InterfaceC5046 interfaceC50463 = (InterfaceC5046) c3433.f13456;
                String str3 = AbstractC3712.f14481;
                C0779 c07793 = ((SurfaceHolderCallbackC4642) interfaceC50463).f17344.f17373;
                c07793.m2848(c07793.m2841(), 1032, new C0792(24));
                return;
            case 3:
                InterfaceC5046 interfaceC50464 = (InterfaceC5046) c3433.f13456;
                String str4 = AbstractC3712.f14481;
                C0779 c07794 = ((SurfaceHolderCallbackC4642) interfaceC50464).f17344.f17373;
                c07794.m2848(c07794.m2841(), 1008, new ˈ(10));
                return;
            case 4:
                InterfaceC5046 interfaceC50465 = (InterfaceC5046) c3433.f13456;
                String str5 = AbstractC3712.f14481;
                C0779 c07795 = ((SurfaceHolderCallbackC4642) interfaceC50465).f17344.f17373;
                c07795.m2848(c07795.m2841(), 1012, new C0792(20));
                return;
            case 5:
                InterfaceC5046 interfaceC50466 = (InterfaceC5046) c3433.f13456;
                String str6 = AbstractC3712.f14481;
                C0779 c07796 = ((SurfaceHolderCallbackC4642) interfaceC50466).f17344.f17373;
                c07796.m2848(c07796.m2841(), 1007, new C0792(0));
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                InterfaceC5046 interfaceC50467 = (InterfaceC5046) c3433.f13456;
                String str7 = AbstractC3712.f14481;
                C0779 c07797 = ((SurfaceHolderCallbackC4642) interfaceC50467).f17344.f17373;
                c07797.m2848(c07797.m2841(), 1011, new C0792(2));
                return;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                InterfaceC5046 interfaceC50468 = (InterfaceC5046) c3433.f13456;
                String str8 = AbstractC3712.f14481;
                C0779 c07798 = ((SurfaceHolderCallbackC4642) interfaceC50468).f17344.f17373;
                c07798.m2848(c07798.m2841(), 1031, new C0792(13));
                return;
            default:
                InterfaceC5046 interfaceC50469 = (InterfaceC5046) c3433.f13456;
                String str9 = AbstractC3712.f14481;
                C0779 c07799 = ((SurfaceHolderCallbackC4642) interfaceC50469).f17344.f17373;
                c07799.m2848(c07799.m2841(), 1014, new C0792(19));
                return;
        }
    }
}
