package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import p039.AbstractC1291;
import p054.C1440;
import p142.C2381;
import p158.C2526;
import p186.AbstractC2823;
import ﹳי.ʽ;

/* loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends AbstractC1291 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f2558;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f2562;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C2381 f2563;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f2559 = 2;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public float f2560 = 0.0f;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public float f2564 = 0.5f;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C1440 f2561 = new C1440(this);

    @Override // p039.AbstractC1291
    /* renamed from: ᵎﹶ */
    public final boolean mo2324(CoordinatorLayout coordinatorLayout, View view, int i) {
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
            AbstractC2823.m6271(view, 1048576);
            AbstractC2823.m6279(view, 0);
            if (mo2338(view)) {
                AbstractC2823.m6276(view, C2526.f9616, new ʽ(this));
            }
        }
        return false;
    }

    @Override // p039.AbstractC1291
    /* renamed from: ᵔﹳ */
    public final boolean mo2327(View view, MotionEvent motionEvent) {
        if (this.f2563 == null) {
            return false;
        }
        if (this.f2558 && motionEvent.getActionMasked() == 3) {
            return true;
        }
        this.f2563.m5457(motionEvent);
        return true;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public boolean mo2338(View view) {
        return true;
    }

    @Override // p039.AbstractC1291
    /* renamed from: ﾞᴵ */
    public boolean mo2328(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z = this.f2562;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z = coordinatorLayout.m104(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f2562 = z;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f2562 = false;
        }
        if (z) {
            if (this.f2563 == null) {
                this.f2563 = new C2381(coordinatorLayout.getContext(), coordinatorLayout, this.f2561);
            }
            if (!this.f2558 && this.f2563.m5455(motionEvent)) {
                return true;
            }
        }
        return false;
    }
}
