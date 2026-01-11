package p186;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import p230.AbstractC3143;
import p255.C3359;

/* renamed from: ˋᵔ.ˑٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2803 extends AnimatorListenerAdapter {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f10554;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f10555;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f10556;

    public /* synthetic */ C2803(Object obj, View view, int i) {
        this.f10556 = i;
        this.f10554 = obj;
        this.f10555 = view;
    }

    public C2803(AbstractC3143 abstractC3143, C3359 c3359) {
        this.f10556 = 2;
        this.f10555 = abstractC3143;
        this.f10554 = c3359;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f10556) {
            case 0:
                ((InterfaceC2796) this.f10554).m6218();
                return;
            default:
                super.onAnimationCancel(animator);
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f10556) {
            case 0:
                ((InterfaceC2796) this.f10554).m6216();
                return;
            case 1:
                C2783 c2783 = (C2783) this.f10554;
                c2783.f10541.mo6191(1.0f);
                C2834.m6295((View) this.f10555, c2783);
                return;
            default:
                ((C3359) this.f10554).remove(animator);
                ((AbstractC3143) this.f10555).f12035.remove(animator);
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f10556) {
            case 0:
                ((InterfaceC2796) this.f10554).m6217();
                return;
            case 1:
            default:
                super.onAnimationStart(animator);
                return;
            case 2:
                ((AbstractC3143) this.f10555).f12035.add(animator);
                return;
        }
    }
}
