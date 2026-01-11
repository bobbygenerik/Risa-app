package p229;

import android.view.View;
import android.view.ViewGroup;
import ar.tvplayer.tv.R;

/* renamed from: ˑʼ.ᵎⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnAttachStateChangeListenerC3127 implements View.OnAttachStateChangeListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C3120 f11951;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ LayoutInflaterFactory2C3113 f11952;

    public ViewOnAttachStateChangeListenerC3127(LayoutInflaterFactory2C3113 layoutInflaterFactory2C3113, C3120 c3120) {
        this.f11952 = layoutInflaterFactory2C3113;
        this.f11951 = c3120;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        C3133 c3133;
        C3120 c3120 = this.f11951;
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = c3120.f11861;
        c3120.m6769();
        ViewGroup viewGroup = (ViewGroup) abstractComponentCallbacksC3123.f11908.getParent();
        this.f11952.f11848.m6704();
        Object tag = viewGroup.getTag(R.id.qp);
        if (tag instanceof C3133) {
            c3133 = (C3133) tag;
        } else {
            c3133 = new C3133(viewGroup);
            viewGroup.setTag(R.id.qp, c3133);
        }
        c3133.m6866();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
