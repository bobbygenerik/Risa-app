package com.google.android.material.snackbar;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import p237.C3202;
import p325.AbstractC4058;
import ٴﾞ.ˆʾ;

/* loaded from: classes.dex */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final ˆʾ f2831;

    public BaseTransientBottomBar$Behavior() {
        ˆʾ r0 = new ˆʾ(28);
        this.f2560 = Math.min(Math.max(0.0f, 0.1f), 1.0f);
        this.f2564 = Math.min(Math.max(0.0f, 0.6f), 1.0f);
        this.f2559 = 0;
        this.f2831 = r0;
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    /* renamed from: ﹳᐧ */
    public final boolean mo2338(View view) {
        this.f2831.getClass();
        return view instanceof AbstractC4058;
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, p039.AbstractC1291
    /* renamed from: ﾞᴵ */
    public final boolean mo2328(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        this.f2831.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                if (C3202.f12253 == null) {
                    C3202.f12253 = new C3202();
                }
                synchronized (C3202.f12253.f12254) {
                }
            }
        } else if (coordinatorLayout.m104(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            if (C3202.f12253 == null) {
                C3202.f12253 = new C3202();
            }
            C3202.f12253.m7042();
        }
        return super.mo2328(coordinatorLayout, view, motionEvent);
    }
}
