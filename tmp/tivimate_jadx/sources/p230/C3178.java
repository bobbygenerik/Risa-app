package p230;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import ar.tvplayer.tv.R;

/* renamed from: ˑʿ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3178 extends AnimatorListenerAdapter implements InterfaceC3165 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f12132 = false;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final View f12133;

    public C3178(View view) {
        this.f12133 = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        AbstractC3168.f12105.mo5068(this.f12133, 1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        onAnimationEnd(animator, false);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator, boolean z) {
        boolean z2 = this.f12132;
        View view = this.f12133;
        if (z2) {
            view.setLayerType(0, null);
        }
        if (z) {
            return;
        }
        C3176 c3176 = AbstractC3168.f12105;
        c3176.mo5068(view, 1.0f);
        c3176.getClass();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        View view = this.f12133;
        if (view.hasOverlappingRendering() && view.getLayerType() == 0) {
            this.f12132 = true;
            view.setLayerType(2, null);
        }
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ʽ */
    public final void mo6946(AbstractC3143 abstractC3143) {
        throw null;
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ˈ */
    public final void mo6941(AbstractC3143 abstractC3143) {
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ˑﹳ */
    public final void mo6942(AbstractC3143 abstractC3143) {
        throw null;
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ᵎﹶ */
    public final void mo6950(AbstractC3143 abstractC3143) {
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ⁱˊ */
    public final void mo6943() {
        this.f12133.setTag(R.id.5e4, null);
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ﹳٴ */
    public final void mo6944() {
        View view = this.f12133;
        view.setTag(R.id.5e4, Float.valueOf(view.getVisibility() == 0 ? AbstractC3168.f12105.mo5067(view) : 0.0f));
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ﾞᴵ */
    public final void mo6952(AbstractC3143 abstractC3143) {
    }
}
