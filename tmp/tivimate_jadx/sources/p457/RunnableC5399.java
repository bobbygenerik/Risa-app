package p457;

import ar.tvplayer.core.data.api.parse.ˈ;
import p003.C0779;
import p003.C0792;
import p262.C3433;
import p305.AbstractC3712;
import p392.SurfaceHolderCallbackC4642;
import p420.C4987;

/* renamed from: ﾞˏ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC5399 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f20602;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C3433 f20603;

    public /* synthetic */ RunnableC5399(C3433 c3433, int i, long j) {
        this.f20602 = 3;
        this.f20603 = c3433;
    }

    public /* synthetic */ RunnableC5399(C3433 c3433, long j, int i) {
        this.f20602 = 4;
        this.f20603 = c3433;
    }

    public /* synthetic */ RunnableC5399(C3433 c3433, Object obj, int i) {
        this.f20602 = i;
        this.f20603 = c3433;
    }

    public /* synthetic */ RunnableC5399(C3433 c3433, String str, long j, long j2) {
        this.f20602 = 0;
        this.f20603 = c3433;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f20602;
        C3433 c3433 = this.f20603;
        switch (i) {
            case 0:
                InterfaceC5385 interfaceC5385 = (InterfaceC5385) c3433.f13456;
                String str = AbstractC3712.f14481;
                C0779 c0779 = ((SurfaceHolderCallbackC4642) interfaceC5385).f17344.f17373;
                c0779.m2848(c0779.m2841(), 1016, new ˈ(24));
                return;
            case 1:
                InterfaceC5385 interfaceC53852 = (InterfaceC5385) c3433.f13456;
                String str2 = AbstractC3712.f14481;
                C0779 c07792 = ((SurfaceHolderCallbackC4642) interfaceC53852).f17344.f17373;
                c07792.m2848(c07792.m2841(), 1030, new ˈ(5));
                return;
            case 2:
                InterfaceC5385 interfaceC53853 = (InterfaceC5385) c3433.f13456;
                String str3 = AbstractC3712.f14481;
                C0779 c07793 = ((SurfaceHolderCallbackC4642) interfaceC53853).f17344.f17373;
                c07793.m2848(c07793.m2841(), 1019, new ˈ(12));
                return;
            case 3:
                InterfaceC5385 interfaceC53854 = (InterfaceC5385) c3433.f13456;
                String str4 = AbstractC3712.f14481;
                C0779 c07794 = ((SurfaceHolderCallbackC4642) interfaceC53854).f17344.f17373;
                c07794.m2848(c07794.m2859((C4987) c07794.f3248.f18054), 1018, new C0792(4));
                return;
            case 4:
                InterfaceC5385 interfaceC53855 = (InterfaceC5385) c3433.f13456;
                String str5 = AbstractC3712.f14481;
                C0779 c07795 = ((SurfaceHolderCallbackC4642) interfaceC53855).f17344.f17373;
                c07795.m2848(c07795.m2859((C4987) c07795.f3248.f18054), 1021, new C0792(5));
                return;
            default:
                InterfaceC5385 interfaceC53856 = (InterfaceC5385) c3433.f13456;
                String str6 = AbstractC3712.f14481;
                C0779 c07796 = ((SurfaceHolderCallbackC4642) interfaceC53856).f17344.f17373;
                c07796.m2848(c07796.m2841(), 1015, new C0792(16));
                return;
        }
    }
}
