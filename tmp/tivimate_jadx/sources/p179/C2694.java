package p179;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import ʿי.ـᵎ;

/* renamed from: ˋˋ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2694 extends AnimatorListenerAdapter {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ ViewPropertyAnimator f10260;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ View f10261;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ ـᵎ f10262;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C2734 f10263;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f10264;

    public /* synthetic */ C2694(ـᵎ r1, C2734 c2734, ViewPropertyAnimator viewPropertyAnimator, View view, int i) {
        this.f10264 = i;
        this.f10262 = r1;
        this.f10263 = c2734;
        this.f10260 = viewPropertyAnimator;
        this.f10261 = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f10264) {
            case 0:
                this.f10260.setListener(null);
                View view = this.f10261;
                view.setAlpha(1.0f);
                view.setTranslationX(0.0f);
                view.setTranslationY(0.0f);
                C2734 c2734 = this.f10263;
                AbstractC2673 abstractC2673 = c2734.f10443;
                ـᵎ r1 = this.f10262;
                r1.m6102(abstractC2673);
                r1.יـ.remove(c2734.f10443);
                r1.ﾞʻ();
                return;
            default:
                this.f10260.setListener(null);
                View view2 = this.f10261;
                view2.setAlpha(1.0f);
                view2.setTranslationX(0.0f);
                view2.setTranslationY(0.0f);
                C2734 c27342 = this.f10263;
                AbstractC2673 abstractC26732 = c27342.f10442;
                ـᵎ r12 = this.f10262;
                r12.m6102(abstractC26732);
                r12.יـ.remove(c27342.f10442);
                r12.ﾞʻ();
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f10264) {
            case 0:
                AbstractC2673 abstractC2673 = this.f10263.f10443;
                this.f10262.getClass();
                return;
            default:
                AbstractC2673 abstractC26732 = this.f10263.f10442;
                this.f10262.getClass();
                return;
        }
    }
}
