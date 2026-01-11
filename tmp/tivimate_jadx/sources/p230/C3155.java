package p230;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import ar.tvplayer.tv.R;

/* renamed from: ˑʿ.ˈʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3155 extends AnimatorListenerAdapter implements InterfaceC3165 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final View f12077;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f12078 = true;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC3161 f12079;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final View f12080;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ViewGroup f12081;

    public C3155(AbstractC3161 abstractC3161, ViewGroup viewGroup, View view, View view2) {
        this.f12079 = abstractC3161;
        this.f12081 = viewGroup;
        this.f12080 = view;
        this.f12077 = view2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        m6951();
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator, boolean z) {
        if (z) {
            return;
        }
        m6951();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        this.f12081.getOverlay().remove(this.f12080);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        View view = this.f12080;
        if (view.getParent() == null) {
            this.f12081.getOverlay().add(view);
        } else {
            this.f12079.cancel();
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator, boolean z) {
        if (z) {
            View view = this.f12077;
            View view2 = this.f12080;
            view.setTag(R.id.1ju, view2);
            this.f12081.getOverlay().add(view2);
            this.f12078 = true;
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
        if (this.f12078) {
            m6951();
        }
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ˑﹳ */
    public final void mo6942(AbstractC3143 abstractC3143) {
        abstractC3143.mo6908(this);
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void mo6950(AbstractC3143 abstractC3143) {
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m6951() {
        this.f12077.setTag(R.id.1ju, null);
        this.f12081.getOverlay().remove(this.f12080);
        this.f12078 = false;
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ⁱˊ */
    public final void mo6943() {
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ﹳٴ */
    public final void mo6944() {
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void mo6952(AbstractC3143 abstractC3143) {
        abstractC3143.mo6908(this);
    }
}
