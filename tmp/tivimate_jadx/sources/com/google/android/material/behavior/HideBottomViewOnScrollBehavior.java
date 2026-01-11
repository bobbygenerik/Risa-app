package com.google.android.material.behavior;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityManager;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.leanback.widget.C0144;
import ar.tvplayer.tv.R;
import java.util.Iterator;
import java.util.LinkedHashSet;
import p039.AbstractC1291;
import p044.ViewOnAttachStateChangeListenerC1333;
import p054.AccessibilityManagerTouchExplorationStateChangeListenerC1442;
import p137.AbstractC2305;
import p236.AbstractC3200;
import ﹳˋ.ʽʽ;

@Deprecated
/* loaded from: classes.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends AbstractC1291 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f2537;

    /* renamed from: ˈ, reason: contains not printable characters */
    public TimeInterpolator f2539;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public TimeInterpolator f2540;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public ViewPropertyAnimator f2541;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public AccessibilityManager f2542;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public AccessibilityManagerTouchExplorationStateChangeListenerC1442 f2543;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f2544;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final LinkedHashSet f2545 = new LinkedHashSet();

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f2546 = 0;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean f2536 = true;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f2538 = 2;

    public HideBottomViewOnScrollBehavior() {
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
    }

    @Override // p039.AbstractC1291
    /* renamed from: ˉˆ */
    public boolean mo2322(View view, int i, int i2) {
        return i == 2;
    }

    @Override // p039.AbstractC1291
    /* renamed from: ٴﹶ */
    public final void mo2323(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
        AccessibilityManager accessibilityManager;
        if (i <= 0) {
            if (i < 0) {
                m2335(view);
                return;
            }
            return;
        }
        if (this.f2538 == 1) {
            return;
        }
        if (this.f2536 && (accessibilityManager = this.f2542) != null && accessibilityManager.isTouchExplorationEnabled()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f2541;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.f2538 = 1;
        Iterator it = this.f2545.iterator();
        if (it.hasNext()) {
            throw AbstractC2305.m5372(it);
        }
        this.f2541 = view.animate().translationY(this.f2546).setInterpolator(this.f2540).setDuration(this.f2537).setListener(new C0144(3, this));
    }

    @Override // p039.AbstractC1291
    /* renamed from: ᵎﹶ */
    public boolean mo2324(CoordinatorLayout coordinatorLayout, View view, int i) {
        this.f2546 = view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
        this.f2544 = ʽʽ.ʻٴ(view.getContext(), R.attr.589, 225);
        this.f2537 = ʽʽ.ʻٴ(view.getContext(), R.attr.4uq, 175);
        this.f2539 = ʽʽ.ـˆ(view.getContext(), R.attr.532, AbstractC3200.f12244);
        this.f2540 = ʽʽ.ـˆ(view.getContext(), R.attr.532, AbstractC3200.f12243);
        if (this.f2542 == null) {
            this.f2542 = (AccessibilityManager) view.getContext().getSystemService(AccessibilityManager.class);
        }
        AccessibilityManager accessibilityManager = this.f2542;
        if (accessibilityManager == null || this.f2543 != null) {
            return false;
        }
        AccessibilityManagerTouchExplorationStateChangeListenerC1442 accessibilityManagerTouchExplorationStateChangeListenerC1442 = new AccessibilityManagerTouchExplorationStateChangeListenerC1442(this, view, 0);
        this.f2543 = accessibilityManagerTouchExplorationStateChangeListenerC1442;
        accessibilityManager.addTouchExplorationStateChangeListener(accessibilityManagerTouchExplorationStateChangeListenerC1442);
        view.addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC1333(1, this));
        return false;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m2335(View view) {
        if (this.f2538 == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f2541;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.f2538 = 2;
        Iterator it = this.f2545.iterator();
        if (it.hasNext()) {
            throw AbstractC2305.m5372(it);
        }
        this.f2541 = view.animate().translationY(0).setInterpolator(this.f2539).setDuration(this.f2544).setListener(new C0144(3, this));
    }
}
