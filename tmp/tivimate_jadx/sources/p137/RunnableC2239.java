package p137;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;

/* renamed from: ˉˆ.ʼـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC2239 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f8775;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ AbstractViewOnTouchListenerC2283 f8776;

    public /* synthetic */ RunnableC2239(AbstractViewOnTouchListenerC2283 abstractViewOnTouchListenerC2283, int i) {
        this.f8775 = i;
        this.f8776 = abstractViewOnTouchListenerC2283;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f8775) {
            case 0:
                ViewParent parent = this.f8776.f8933.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                    return;
                }
                return;
            default:
                AbstractViewOnTouchListenerC2283 abstractViewOnTouchListenerC2283 = this.f8776;
                abstractViewOnTouchListenerC2283.m5328();
                View view = abstractViewOnTouchListenerC2283.f8933;
                if (view.isEnabled() && !view.isLongClickable() && abstractViewOnTouchListenerC2283.mo5239()) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    view.onTouchEvent(obtain);
                    obtain.recycle();
                    abstractViewOnTouchListenerC2283.f8936 = true;
                    return;
                }
                return;
        }
    }
}
