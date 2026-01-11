package androidx.leanback.widget;

import android.animation.ValueAnimator;
import p044.C1338;

/* renamed from: androidx.leanback.widget.ʻˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0081 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f836;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f837;

    public /* synthetic */ C0081(int i, Object obj) {
        this.f837 = i;
        this.f836 = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i = this.f837;
        Object obj = this.f836;
        switch (i) {
            case 0:
                SearchOrbView searchOrbView = (SearchOrbView) obj;
                int i2 = SearchOrbView.f743;
                searchOrbView.getClass();
                searchOrbView.setOrbViewColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
                return;
            case 1:
                SearchOrbView searchOrbView2 = (SearchOrbView) obj;
                int i3 = SearchOrbView.f743;
                searchOrbView2.getClass();
                searchOrbView2.setSearchOrbZ(valueAnimator.getAnimatedFraction());
                return;
            default:
                C1338 c1338 = (C1338) obj;
                c1338.getClass();
                c1338.f5181.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                return;
        }
    }
}
