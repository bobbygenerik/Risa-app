package p076;

import android.os.Looper;
import android.view.View;
import ar.tvplayer.core.data.api.parse.ˈ;
import com.google.android.material.sidesheet.SideSheetBehavior;
import p003.C0779;
import p003.C0782;
import p003.RunnableC0786;
import p012.C0882;
import p143.AbstractC2392;
import p262.C3433;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3711;
import p392.AbstractC4671;
import p392.C4683;
import p392.SurfaceHolderCallbackC4642;
import p425.InterfaceC5046;

/* renamed from: ʾﾞ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC1663 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f6763;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f6764;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ int f6765;

    public /* synthetic */ RunnableC1663(int i, int i2, Object obj) {
        this.f6764 = i2;
        this.f6763 = obj;
        this.f6765 = i;
    }

    public /* synthetic */ RunnableC1663(C4683 c4683, int i, boolean z) {
        this.f6764 = 3;
        this.f6763 = c4683;
        this.f6765 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f6764;
        int i2 = this.f6765;
        Object obj = this.f6763;
        switch (i) {
            case 0:
                ((C1656) obj).f6710.onAudioFocusChange(i2);
                return;
            case 1:
                ((AbstractC2392) obj).mo5307(i2);
                return;
            case 2:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) obj;
                View view = (View) sideSheetBehavior.f2811.get();
                if (view != null) {
                    sideSheetBehavior.m2419(i2, view, false);
                    return;
                }
                return;
            case 3:
                C4683 c4683 = (C4683) obj;
                C0779 c0779 = c4683.f17640;
                int i3 = ((AbstractC4671) c4683.f17605[i2].f12094).f17515;
                c0779.m2848(c0779.m2841(), 1033, new ˈ(16));
                return;
            default:
                InterfaceC5046 interfaceC5046 = (InterfaceC5046) ((C3433) obj).f13456;
                String str = AbstractC3712.f14481;
                C0882 c0882 = ((SurfaceHolderCallbackC4642) interfaceC5046).f17344.f17397;
                C0782 c0782 = new C0782(i2, 3);
                c0882.getClass();
                AbstractC3731.m7857(Looper.myLooper() == ((C3711) c0882.f3740).f14471.getLooper());
                c0882.f3744++;
                c0882.m3125(new RunnableC0786(c0882, 26, c0782));
                c0882.m3134(Integer.valueOf(i2));
                return;
        }
    }
}
