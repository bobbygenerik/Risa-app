package p312;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.media3.ui.DefaultTimeBar;

/* renamed from: ᐧⁱ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3864 extends AnimatorListenerAdapter {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C3840 f15044;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f15045;

    public /* synthetic */ C3864(C3840 c3840, int i) {
        this.f15045 = i;
        this.f15044 = c3840;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        switch (this.f15045) {
            case 0:
                C3840 c3840 = this.f15044;
                View view = c3840.f14873;
                if (view != null) {
                    view.setVisibility(4);
                }
                ViewGroup viewGroup = c3840.f14853;
                if (viewGroup != null) {
                    viewGroup.setVisibility(4);
                }
                ViewGroup viewGroup2 = c3840.f14863;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(4);
                    return;
                }
                return;
            case 1:
            default:
                super.onAnimationEnd(animator);
                return;
            case 2:
                this.f15044.m8004(0);
                return;
            case 3:
                this.f15044.m8004(0);
                return;
            case 4:
                ViewGroup viewGroup3 = this.f15044.f14877;
                if (viewGroup3 != null) {
                    viewGroup3.setVisibility(4);
                    return;
                }
                return;
            case 5:
                ViewGroup viewGroup4 = this.f15044.f14870;
                if (viewGroup4 != null) {
                    viewGroup4.setVisibility(4);
                    return;
                }
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        int i = this.f15045;
        C3840 c3840 = this.f15044;
        switch (i) {
            case 0:
                View view = c3840.f14858;
                if (!(view instanceof DefaultTimeBar) || c3840.f14856) {
                    return;
                }
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) view;
                ValueAnimator valueAnimator = defaultTimeBar.f1278;
                if (valueAnimator.isStarted()) {
                    valueAnimator.cancel();
                }
                valueAnimator.setFloatValues(defaultTimeBar.f1286, 0.0f);
                valueAnimator.setDuration(250L);
                valueAnimator.start();
                return;
            case 1:
                View view2 = c3840.f14873;
                if (view2 != null) {
                    view2.setVisibility(0);
                }
                ViewGroup viewGroup = c3840.f14853;
                if (viewGroup != null) {
                    viewGroup.setVisibility(0);
                }
                ViewGroup viewGroup2 = c3840.f14863;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(c3840.f14856 ? 0 : 4);
                }
                View view3 = c3840.f14858;
                if (!(view3 instanceof DefaultTimeBar) || c3840.f14856) {
                    return;
                }
                DefaultTimeBar defaultTimeBar2 = (DefaultTimeBar) view3;
                ValueAnimator valueAnimator2 = defaultTimeBar2.f1278;
                if (valueAnimator2.isStarted()) {
                    valueAnimator2.cancel();
                }
                defaultTimeBar2.f1271 = false;
                valueAnimator2.setFloatValues(defaultTimeBar2.f1286, 1.0f);
                valueAnimator2.setDuration(250L);
                valueAnimator2.start();
                return;
            case 2:
                c3840.m8004(4);
                return;
            case 3:
                c3840.m8004(4);
                return;
            case 4:
                ViewGroup viewGroup3 = c3840.f14870;
                if (viewGroup3 != null) {
                    viewGroup3.setVisibility(0);
                    c3840.f14870.setTranslationX(r9.getWidth());
                    ViewGroup viewGroup4 = c3840.f14870;
                    viewGroup4.scrollTo(viewGroup4.getWidth(), 0);
                    return;
                }
                return;
            default:
                ViewGroup viewGroup5 = c3840.f14877;
                if (viewGroup5 != null) {
                    viewGroup5.setVisibility(0);
                    return;
                }
                return;
        }
    }
}
