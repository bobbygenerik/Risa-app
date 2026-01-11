package androidx.leanback.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.transition.Transition;
import android.view.View;
import ar.tvplayer.tv.R;

/* renamed from: androidx.leanback.transition.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0072 extends AnimatorListenerAdapter implements Transition.TransitionListener {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final float f562;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f563;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f564;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int[] f565;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public float f566;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final float f567;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final View f568;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final View f569;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public float f570;

    public C0072(View view, View view2, int i, int i2, float f, float f2) {
        this.f568 = view;
        this.f569 = view2;
        this.f563 = i - Math.round(view.getTranslationX());
        this.f564 = i2 - Math.round(view.getTranslationY());
        this.f567 = f;
        this.f562 = f2;
        int[] iArr = (int[]) view2.getTag(R.id.114);
        this.f565 = iArr;
        if (iArr != null) {
            view2.setTag(R.id.114, null);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        if (this.f565 == null) {
            this.f565 = new int[2];
        }
        int[] iArr = this.f565;
        float f = this.f563;
        View view = this.f568;
        iArr[0] = Math.round(view.getTranslationX() + f);
        this.f565[1] = Math.round(view.getTranslationY() + this.f564);
        this.f569.setTag(R.id.114, this.f565);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        View view = this.f568;
        this.f570 = view.getTranslationX();
        this.f566 = view.getTranslationY();
        view.setTranslationX(this.f567);
        view.setTranslationY(this.f562);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        float f = this.f570;
        View view = this.f568;
        view.setTranslationX(f);
        view.setTranslationY(this.f566);
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        float f = this.f567;
        View view = this.f568;
        view.setTranslationX(f);
        view.setTranslationY(this.f562);
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionStart(Transition transition) {
    }
}
