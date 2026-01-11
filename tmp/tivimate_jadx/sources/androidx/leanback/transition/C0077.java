package androidx.leanback.transition;

import android.transition.Transition;
import androidx.leanback.widget.C0117;

/* renamed from: androidx.leanback.transition.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0077 implements Transition.TransitionListener {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f581;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f582;

    public /* synthetic */ C0077(int i, Object obj) {
        this.f582 = i;
        this.f581 = obj;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    private final void m449(Transition transition) {
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    private final void m450(Transition transition) {
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    private final void m451(Transition transition) {
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final void m452(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionCancel(Transition transition) {
        switch (this.f582) {
            case 0:
                ((ﹳי.ʽ) this.f581).getClass();
                return;
            default:
                return;
        }
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        switch (this.f582) {
            case 0:
                ((C0117) ((ﹳי.ʽ) this.f581).ʾˋ).f938 = null;
                return;
            default:
                ((Runnable) this.f581).run();
                return;
        }
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionPause(Transition transition) {
        switch (this.f582) {
            case 0:
                ((ﹳי.ʽ) this.f581).getClass();
                return;
            default:
                return;
        }
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionResume(Transition transition) {
        switch (this.f582) {
            case 0:
                ((ﹳי.ʽ) this.f581).getClass();
                return;
            default:
                return;
        }
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionStart(Transition transition) {
        switch (this.f582) {
            case 0:
                ((ﹳי.ʽ) this.f581).getClass();
                return;
            default:
                return;
        }
    }
}
