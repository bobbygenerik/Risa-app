package p044;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* renamed from: ʽˊ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1345 extends AnimatorListenerAdapter {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C1325 f5186;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f5187;

    public /* synthetic */ C1345(C1325 c1325, int i) {
        this.f5187 = i;
        this.f5186 = c1325;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        switch (this.f5187) {
            case 1:
                this.f5186.f5182.m3951(false);
                return;
            default:
                super.onAnimationEnd(animator);
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f5187) {
            case 0:
                this.f5186.f5182.m3951(true);
                return;
            default:
                super.onAnimationStart(animator);
                return;
        }
    }
}
