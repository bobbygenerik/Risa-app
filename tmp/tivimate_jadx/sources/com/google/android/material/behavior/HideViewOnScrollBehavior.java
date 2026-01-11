package com.google.android.material.behavior;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityManager;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.leanback.widget.C0144;
import ar.tvplayer.tv.R;
import java.util.Iterator;
import java.util.LinkedHashSet;
import p035.AbstractC1220;
import p039.AbstractC1291;
import p039.C1287;
import p044.ViewOnAttachStateChangeListenerC1333;
import p054.AccessibilityManagerTouchExplorationStateChangeListenerC1442;
import p054.C1441;
import p137.AbstractC2305;
import p236.AbstractC3200;
import ﹳˋ.ʽʽ;
import ﹳٴ.ﹳٴ;

/* loaded from: classes.dex */
public class HideViewOnScrollBehavior<V extends View> extends AbstractC1291 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public AccessibilityManagerTouchExplorationStateChangeListenerC1442 f2548;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f2551;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public ViewPropertyAnimator f2552;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public TimeInterpolator f2553;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public TimeInterpolator f2554;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public AccessibilityManager f2555;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public ﹳٴ f2556;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f2557;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final LinkedHashSet f2550 = new LinkedHashSet();

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f2547 = 0;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f2549 = 2;

    public HideViewOnScrollBehavior() {
    }

    public HideViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
    }

    @Override // p039.AbstractC1291
    /* renamed from: ˉˆ */
    public final boolean mo2322(View view, int i, int i2) {
        return i == 2;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m2336(View view) {
        if (this.f2549 == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f2552;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.f2549 = 2;
        Iterator it = this.f2550.iterator();
        if (it.hasNext()) {
            throw AbstractC2305.m5372(it);
        }
        this.f2556.getClass();
        this.f2552 = this.f2556.ᴵˊ(view, 0).setInterpolator(this.f2553).setDuration(this.f2551).setListener(new C0144(4, this));
    }

    @Override // p039.AbstractC1291
    /* renamed from: ٴﹶ */
    public final void mo2323(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
        if (i <= 0) {
            if (i < 0) {
                m2336(view);
                return;
            }
            return;
        }
        if (this.f2549 == 1) {
            return;
        }
        AccessibilityManager accessibilityManager = this.f2555;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            ViewPropertyAnimator viewPropertyAnimator = this.f2552;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                view.clearAnimation();
            }
            this.f2549 = 1;
            Iterator it = this.f2550.iterator();
            if (it.hasNext()) {
                throw AbstractC2305.m5372(it);
            }
            this.f2552 = this.f2556.ᴵˊ(view, this.f2547).setInterpolator(this.f2554).setDuration(this.f2557).setListener(new C0144(4, this));
        }
    }

    @Override // p039.AbstractC1291
    /* renamed from: ᵎﹶ */
    public final boolean mo2324(CoordinatorLayout coordinatorLayout, View view, int i) {
        if (this.f2555 == null) {
            this.f2555 = (AccessibilityManager) view.getContext().getSystemService(AccessibilityManager.class);
        }
        AccessibilityManager accessibilityManager = this.f2555;
        if (accessibilityManager != null && this.f2548 == null) {
            AccessibilityManagerTouchExplorationStateChangeListenerC1442 accessibilityManagerTouchExplorationStateChangeListenerC1442 = new AccessibilityManagerTouchExplorationStateChangeListenerC1442(this, view, 1);
            this.f2548 = accessibilityManagerTouchExplorationStateChangeListenerC1442;
            accessibilityManager.addTouchExplorationStateChangeListener(accessibilityManagerTouchExplorationStateChangeListenerC1442);
            view.addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC1333(2, this));
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i2 = ((C1287) view.getLayoutParams()).f4970;
        if (i2 == 80 || i2 == 81) {
            m2337(1);
        } else {
            int absoluteGravity = Gravity.getAbsoluteGravity(i2, i);
            m2337((absoluteGravity == 3 || absoluteGravity == 19) ? 2 : 0);
        }
        this.f2547 = this.f2556.ʼʼ(view, marginLayoutParams);
        this.f2551 = ʽʽ.ʻٴ(view.getContext(), R.attr.589, 225);
        this.f2557 = ʽʽ.ʻٴ(view.getContext(), R.attr.4uq, 175);
        this.f2553 = ʽʽ.ـˆ(view.getContext(), R.attr.532, AbstractC3200.f12244);
        this.f2554 = ʽʽ.ـˆ(view.getContext(), R.attr.532, AbstractC3200.f12243);
        return false;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m2337(int i) {
        ﹳٴ r0 = this.f2556;
        if (r0 == null || r0.ʾˋ() != i) {
            if (i == 0) {
                this.f2556 = new C1441(2);
            } else if (i == 1) {
                this.f2556 = new C1441(0);
            } else {
                if (i != 2) {
                    throw new IllegalArgumentException(AbstractC1220.m3773(i, "Invalid view edge position value: ", ". Must be 0, 1 or 2."));
                }
                this.f2556 = new C1441(1);
            }
        }
    }
}
