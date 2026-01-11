package p363;

import android.view.ViewGroup;
import p186.AbstractC2823;
import p186.C2798;

/* renamed from: ᵔᵢ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC4414 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f16424;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ LayoutInflaterFactory2C4430 f16425;

    public /* synthetic */ RunnableC4414(LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430, int i) {
        this.f16424 = i;
        this.f16425 = layoutInflaterFactory2C4430;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ViewGroup viewGroup;
        switch (this.f16424) {
            case 0:
                LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = this.f16425;
                if ((layoutInflaterFactory2C4430.f16532 & 1) != 0) {
                    layoutInflaterFactory2C4430.m8954(0);
                }
                if ((layoutInflaterFactory2C4430.f16532 & 4096) != 0) {
                    layoutInflaterFactory2C4430.m8954(108);
                }
                layoutInflaterFactory2C4430.f16495 = false;
                layoutInflaterFactory2C4430.f16532 = 0;
                return;
            default:
                LayoutInflaterFactory2C4430 layoutInflaterFactory2C44302 = this.f16425;
                layoutInflaterFactory2C44302.f16525.showAtLocation(layoutInflaterFactory2C44302.f16502, 55, 0, 0);
                C2798 c2798 = layoutInflaterFactory2C44302.f16496;
                if (c2798 != null) {
                    c2798.m6229();
                }
                if (!layoutInflaterFactory2C44302.f16529 || (viewGroup = layoutInflaterFactory2C44302.f16523) == null || !viewGroup.isLaidOut()) {
                    layoutInflaterFactory2C44302.f16502.setAlpha(1.0f);
                    layoutInflaterFactory2C44302.f16502.setVisibility(0);
                    return;
                }
                layoutInflaterFactory2C44302.f16502.setAlpha(0.0f);
                C2798 m6281 = AbstractC2823.m6281(layoutInflaterFactory2C44302.f16502);
                m6281.m6230(1.0f);
                layoutInflaterFactory2C44302.f16496 = m6281;
                m6281.m6227(new C4433(0, this));
                return;
        }
    }
}
