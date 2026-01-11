package p137;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;

/* renamed from: ˉˆ.ᵔי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2324 implements PopupWindow.OnDismissListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ ViewTreeObserverOnGlobalLayoutListenerC2270 f9059;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C2260 f9060;

    public C2324(C2260 c2260, ViewTreeObserverOnGlobalLayoutListenerC2270 viewTreeObserverOnGlobalLayoutListenerC2270) {
        this.f9060 = c2260;
        this.f9059 = viewTreeObserverOnGlobalLayoutListenerC2270;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.f9060.f8877.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f9059);
        }
    }
}
