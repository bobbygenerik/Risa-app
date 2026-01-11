package p312;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* renamed from: ᐧⁱ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3848 extends AnimatorListenerAdapter {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ C3840 f14894;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C3860 f14895;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f14896;

    public /* synthetic */ C3848(C3840 c3840, C3860 c3860, int i) {
        this.f14896 = i;
        this.f14894 = c3840;
        this.f14895 = c3860;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f14896) {
            case 0:
                C3840 c3840 = this.f14894;
                c3840.m8004(1);
                if (c3840.f14867) {
                    this.f14895.post(c3840.f14864);
                    c3840.f14867 = false;
                    return;
                }
                return;
            case 1:
                C3840 c38402 = this.f14894;
                c38402.m8004(2);
                if (c38402.f14867) {
                    this.f14895.post(c38402.f14864);
                    c38402.f14867 = false;
                    return;
                }
                return;
            default:
                C3840 c38403 = this.f14894;
                c38403.m8004(2);
                if (c38403.f14867) {
                    this.f14895.post(c38403.f14864);
                    c38403.f14867 = false;
                    return;
                }
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f14896) {
            case 0:
                this.f14894.m8004(3);
                return;
            case 1:
                this.f14894.m8004(3);
                return;
            default:
                this.f14894.m8004(3);
                return;
        }
    }
}
