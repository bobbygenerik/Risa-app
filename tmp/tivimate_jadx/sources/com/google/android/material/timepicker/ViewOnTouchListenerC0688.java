package com.google.android.material.timepicker;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;

/* renamed from: com.google.android.material.timepicker.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnTouchListenerC0688 implements View.OnTouchListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ GestureDetector f2957;

    public ViewOnTouchListenerC0688(GestureDetector gestureDetector) {
        this.f2957 = gestureDetector;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (((Checkable) view).isChecked()) {
            return this.f2957.onTouchEvent(motionEvent);
        }
        return false;
    }
}
