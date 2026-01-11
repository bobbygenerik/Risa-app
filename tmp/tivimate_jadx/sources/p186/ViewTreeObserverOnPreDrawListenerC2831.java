package p186;

import android.view.View;
import android.view.ViewTreeObserver;

/* renamed from: ˋᵔ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewTreeObserverOnPreDrawListenerC2831 implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Runnable f10625;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final View f10626;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public ViewTreeObserver f10627;

    public ViewTreeObserverOnPreDrawListenerC2831(View view, Runnable runnable) {
        this.f10626 = view;
        this.f10627 = view.getViewTreeObserver();
        this.f10625 = runnable;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m6289(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        ViewTreeObserverOnPreDrawListenerC2831 viewTreeObserverOnPreDrawListenerC2831 = new ViewTreeObserverOnPreDrawListenerC2831(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC2831);
        view.addOnAttachStateChangeListener(viewTreeObserverOnPreDrawListenerC2831);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        boolean isAlive = this.f10627.isAlive();
        View view = this.f10626;
        if (isAlive) {
            this.f10627.removeOnPreDrawListener(this);
        } else {
            view.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view.removeOnAttachStateChangeListener(this);
        this.f10625.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f10627 = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        boolean isAlive = this.f10627.isAlive();
        View view2 = this.f10626;
        if (isAlive) {
            this.f10627.removeOnPreDrawListener(this);
        } else {
            view2.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view2.removeOnAttachStateChangeListener(this);
    }
}
