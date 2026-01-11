package com.google.android.material.timepicker;

import android.view.ViewTreeObserver;

/* renamed from: com.google.android.material.timepicker.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewTreeObserverOnPreDrawListenerC0690 implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ ClockFaceView f2959;

    public ViewTreeObserverOnPreDrawListenerC0690(ClockFaceView clockFaceView) {
        this.f2959 = clockFaceView;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        ClockFaceView clockFaceView = this.f2959;
        if (!clockFaceView.isShown()) {
            return true;
        }
        clockFaceView.getViewTreeObserver().removeOnPreDrawListener(this);
        int height = ((clockFaceView.getHeight() / 2) - clockFaceView.f2926.f2938) - clockFaceView.f2929;
        if (height != clockFaceView.f2951) {
            clockFaceView.f2951 = height;
            clockFaceView.mo2455();
            ClockHandView clockHandView = clockFaceView.f2926;
            clockHandView.f2947 = clockFaceView.f2951;
            clockHandView.invalidate();
        }
        return true;
    }
}
