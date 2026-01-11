package p179;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import ʿי.ـᵎ;

/* renamed from: ˋˋ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2703 extends AnimatorListenerAdapter {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ ViewPropertyAnimator f10287;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ View f10288;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ ـᵎ f10289;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C2679 f10290;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f10291;

    public /* synthetic */ C2703(ـᵎ r1, C2679 c2679, ViewPropertyAnimator viewPropertyAnimator, View view, int i) {
        this.f10291 = i;
        this.f10289 = r1;
        this.f10290 = c2679;
        this.f10287 = viewPropertyAnimator;
        this.f10288 = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f10291) {
            case 0:
                this.f10287.setListener(null);
                View view = this.f10288;
                view.setAlpha(1.0f);
                view.setTranslationX(0.0f);
                view.setTranslationY(0.0f);
                C2679 c2679 = this.f10290;
                AbstractC2673 abstractC2673 = c2679.f10206;
                ـᵎ r1 = this.f10289;
                r1.m6102(abstractC2673);
                r1.יـ.remove(c2679.f10206);
                r1.ﾞʻ();
                return;
            default:
                this.f10287.setListener(null);
                View view2 = this.f10288;
                view2.setAlpha(1.0f);
                view2.setTranslationX(0.0f);
                view2.setTranslationY(0.0f);
                C2679 c26792 = this.f10290;
                AbstractC2673 abstractC26732 = c26792.f10205;
                ـᵎ r12 = this.f10289;
                r12.m6102(abstractC26732);
                r12.יـ.remove(c26792.f10205);
                r12.ﾞʻ();
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f10291) {
            case 0:
                AbstractC2673 abstractC2673 = this.f10290.f10206;
                this.f10289.getClass();
                return;
            default:
                AbstractC2673 abstractC26732 = this.f10290.f10205;
                this.f10289.getClass();
                return;
        }
    }
}
