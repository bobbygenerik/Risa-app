package p229;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import p404.C4790;
import ʽⁱ.ᵎﹶ;

/* renamed from: ˑʼ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3142 extends AbstractC3111 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3128 f12024;

    public C3142(C3128 c3128) {
        this.f12024 = c3128;
    }

    @Override // p229.AbstractC3111
    /* renamed from: ʽ */
    public final void mo6637(ViewGroup viewGroup) {
        C3128 c3128 = this.f12024;
        C3081 c3081 = (C3081) ((ᵎﹶ) c3128).ʾˋ;
        if (c3128.ʼـ()) {
            c3081.m6643(this);
            return;
        }
        Context context = viewGroup.getContext();
        View view = c3081.f11701.f11908;
        C4790 m6862 = c3128.m6862(context);
        if (m6862 == null) {
            throw new IllegalStateException("Required value was null.");
        }
        Animation animation = (Animation) m6862.f18036;
        if (animation == null) {
            throw new IllegalStateException("Required value was null.");
        }
        if (c3081.f11709 != 1) {
            view.startAnimation(animation);
            c3081.m6643(this);
            return;
        }
        viewGroup.startViewTransition(view);
        RunnableC3097 runnableC3097 = new RunnableC3097(animation, viewGroup, view);
        runnableC3097.setAnimationListener(new AnimationAnimationListenerC3106(c3081, viewGroup, view, this));
        view.startAnimation(runnableC3097);
        if (C3085.m6654(2)) {
            String str = "Animation from operation " + c3081 + " has started.";
        }
    }

    @Override // p229.AbstractC3111
    /* renamed from: ⁱˊ */
    public final void mo6640(ViewGroup viewGroup) {
        C3128 c3128 = this.f12024;
        C3081 c3081 = (C3081) ((ᵎﹶ) c3128).ʾˋ;
        View view = c3081.f11701.f11908;
        view.clearAnimation();
        viewGroup.endViewTransition(view);
        ((C3081) ((ᵎﹶ) c3128).ʾˋ).m6643(this);
        if (C3085.m6654(2)) {
            String str = "Animation from operation " + c3081 + " has been cancelled.";
        }
    }
}
