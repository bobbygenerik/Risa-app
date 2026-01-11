package p230;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import ˈˆ.ﾞᴵ;

/* renamed from: ˑʿ.ᵔٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3177 extends AnimatorListenerAdapter implements InterfaceC3165 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ViewGroup f12126;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f12128;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f12129;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final View f12130;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f12131 = false;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean f12127 = true;

    public C3177(View view, int i) {
        this.f12130 = view;
        this.f12129 = i;
        this.f12126 = (ViewGroup) view.getParent();
        m6993(true);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f12131 = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (!this.f12131) {
            AbstractC3168.m6979(this.f12130, this.f12129);
            ViewGroup viewGroup = this.f12126;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        m6993(false);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator, boolean z) {
        if (z) {
            return;
        }
        if (!this.f12131) {
            AbstractC3168.m6979(this.f12130, this.f12129);
            ViewGroup viewGroup = this.f12126;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        m6993(false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator, boolean z) {
        if (z) {
            AbstractC3168.m6979(this.f12130, 0);
            ViewGroup viewGroup = this.f12126;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
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
        abstractC3143.mo6908(this);
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ᵎﹶ */
    public final void mo6950(AbstractC3143 abstractC3143) {
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m6993(boolean z) {
        ViewGroup viewGroup;
        if (!this.f12127 || this.f12128 == z || (viewGroup = this.f12126) == null) {
            return;
        }
        this.f12128 = z;
        ﾞᴵ.ᴵˑ(viewGroup, z);
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ⁱˊ */
    public final void mo6943() {
        m6993(true);
        if (this.f12131) {
            return;
        }
        AbstractC3168.m6979(this.f12130, 0);
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ﹳٴ */
    public final void mo6944() {
        m6993(false);
        if (this.f12131) {
            return;
        }
        AbstractC3168.m6979(this.f12130, this.f12129);
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ﾞᴵ */
    public final void mo6952(AbstractC3143 abstractC3143) {
        abstractC3143.mo6908(this);
    }
}
