package p279;

import android.view.View;
import android.view.ViewTreeObserver;
import p087.AbstractC1746;
import p179.RunnableC2689;

/* renamed from: ٴʽ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewTreeObserverOnDrawListenerC3544 implements ViewTreeObserver.OnDrawListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ View f13892;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C3548 f13893;

    public ViewTreeObserverOnDrawListenerC3544(C3548 c3548, View view) {
        this.f13893 = c3548;
        this.f13892 = view;
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        AbstractC1746.m4705().post(new RunnableC2689(this, 12, this));
    }
}
