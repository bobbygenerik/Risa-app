package androidx.leanback.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Property;
import android.view.View;
import ar.tvplayer.tv.R;

/* renamed from: androidx.leanback.transition.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0076 extends AnimatorListenerAdapter {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final View f574;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final float f575;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final float f576;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Property f577;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public float f578;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean f579 = false;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f580;

    public C0076(View view, Property property, float f, float f2, int i) {
        this.f577 = property;
        this.f574 = view;
        this.f576 = f;
        this.f575 = f2;
        this.f580 = i;
        view.setVisibility(0);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        View view = this.f574;
        view.setTag(R.id.12o, new float[]{view.getTranslationX(), view.getTranslationY()});
        this.f577.set(view, Float.valueOf(this.f576));
        this.f579 = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        boolean z = this.f579;
        View view = this.f574;
        if (!z) {
            this.f577.set(view, Float.valueOf(this.f576));
        }
        view.setVisibility(this.f580);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        Property property = this.f577;
        View view = this.f574;
        this.f578 = ((Float) property.get(view)).floatValue();
        property.set(view, Float.valueOf(this.f575));
        view.setVisibility(this.f580);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        Float valueOf = Float.valueOf(this.f578);
        Property property = this.f577;
        View view = this.f574;
        property.set(view, valueOf);
        view.setVisibility(0);
    }
}
