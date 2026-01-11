package p179;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import ʿי.ـᵎ;

/* renamed from: ˋˋ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2720 extends AnimatorListenerAdapter {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ View f10352;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ ViewPropertyAnimator f10353;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ ـᵎ f10354;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC2673 f10355;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f10356 = 1;

    public C2720(ـᵎ r2, AbstractC2673 abstractC2673, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f10354 = r2;
        this.f10355 = abstractC2673;
        this.f10352 = view;
        this.f10353 = viewPropertyAnimator;
    }

    public C2720(ـᵎ r2, AbstractC2673 abstractC2673, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f10354 = r2;
        this.f10355 = abstractC2673;
        this.f10353 = viewPropertyAnimator;
        this.f10352 = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f10356) {
            case 1:
                this.f10352.setAlpha(1.0f);
                return;
            default:
                super.onAnimationCancel(animator);
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f10356) {
            case 0:
                this.f10353.setListener(null);
                this.f10352.setAlpha(1.0f);
                ـᵎ r4 = this.f10354;
                AbstractC2673 abstractC2673 = this.f10355;
                r4.m6102(abstractC2673);
                r4.ﹳᐧ.remove(abstractC2673);
                r4.ﾞʻ();
                return;
            default:
                AbstractC2673 abstractC26732 = this.f10355;
                ـᵎ r0 = this.f10354;
                try {
                    this.f10353.setListener(null);
                    r0.m6102(abstractC26732);
                    r0.ʼᐧ.remove(abstractC26732);
                    r0.ﾞʻ();
                    return;
                } catch (Exception unused) {
                    return;
                }
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f10356) {
            case 0:
                this.f10354.getClass();
                return;
            default:
                this.f10354.getClass();
                return;
        }
    }
}
