package p179;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import ʿי.ـᵎ;

/* renamed from: ˋˋ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2710 extends AnimatorListenerAdapter {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ View f10304;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ ViewPropertyAnimator f10305;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ ـᵎ f10306;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC2673 f10307;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f10308 = 1;

    public C2710(ـᵎ r2, AbstractC2673 abstractC2673, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f10306 = r2;
        this.f10307 = abstractC2673;
        this.f10304 = view;
        this.f10305 = viewPropertyAnimator;
    }

    public C2710(ـᵎ r2, AbstractC2673 abstractC2673, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f10306 = r2;
        this.f10307 = abstractC2673;
        this.f10305 = viewPropertyAnimator;
        this.f10304 = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f10308) {
            case 1:
                this.f10304.setAlpha(1.0f);
                return;
            default:
                super.onAnimationCancel(animator);
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f10308) {
            case 0:
                this.f10305.setListener(null);
                this.f10304.setAlpha(1.0f);
                ـᵎ r3 = this.f10306;
                AbstractC2673 abstractC2673 = this.f10307;
                r3.m6102(abstractC2673);
                r3.ﹳᐧ.remove(abstractC2673);
                r3.ﾞʻ();
                return;
            default:
                this.f10305.setListener(null);
                ـᵎ r32 = this.f10306;
                AbstractC2673 abstractC26732 = this.f10307;
                r32.m6102(abstractC26732);
                r32.ʼᐧ.remove(abstractC26732);
                r32.ﾞʻ();
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f10308) {
            case 0:
                this.f10306.getClass();
                return;
            default:
                this.f10306.getClass();
                return;
        }
    }
}
