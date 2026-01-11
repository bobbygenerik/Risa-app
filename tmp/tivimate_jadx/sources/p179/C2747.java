package p179;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import ʿי.ـᵎ;

/* renamed from: ˋˋ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2747 extends AnimatorListenerAdapter {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f10478;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ View f10479;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ int f10480;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final /* synthetic */ ـᵎ f10481;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC2673 f10482;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f10483;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final /* synthetic */ ViewPropertyAnimator f10484;

    public /* synthetic */ C2747(ـᵎ r1, AbstractC2673 abstractC2673, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator, int i3) {
        this.f10483 = i3;
        this.f10481 = r1;
        this.f10482 = abstractC2673;
        this.f10478 = i;
        this.f10479 = view;
        this.f10480 = i2;
        this.f10484 = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        switch (this.f10483) {
            case 0:
                int i = this.f10478;
                View view = this.f10479;
                if (i != 0) {
                    view.setTranslationX(0.0f);
                }
                if (this.f10480 != 0) {
                    view.setTranslationY(0.0f);
                    return;
                }
                return;
            default:
                int i2 = this.f10478;
                View view2 = this.f10479;
                if (i2 != 0) {
                    view2.setTranslationX(0.0f);
                }
                if (this.f10480 != 0) {
                    view2.setTranslationY(0.0f);
                    return;
                }
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f10483) {
            case 0:
                this.f10484.setListener(null);
                ـᵎ r3 = this.f10481;
                AbstractC2673 abstractC2673 = this.f10482;
                r3.m6102(abstractC2673);
                r3.ᵔﹳ.remove(abstractC2673);
                r3.ﾞʻ();
                return;
            default:
                this.f10484.setListener(null);
                ـᵎ r32 = this.f10481;
                AbstractC2673 abstractC26732 = this.f10482;
                r32.m6102(abstractC26732);
                r32.ᵔﹳ.remove(abstractC26732);
                r32.ﾞʻ();
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f10483) {
            case 0:
                this.f10481.getClass();
                return;
            default:
                this.f10481.getClass();
                return;
        }
    }
}
