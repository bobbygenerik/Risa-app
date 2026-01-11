package p044;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.behavior.HideViewOnScrollBehavior;
import java.util.WeakHashMap;
import p054.AccessibilityManagerTouchExplorationStateChangeListenerC1442;
import p186.AbstractC2780;
import p186.AbstractC2823;
import p353.ViewOnKeyListenerC4313;
import p353.ViewOnKeyListenerC4325;

/* renamed from: ʽˊ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnAttachStateChangeListenerC1333 implements View.OnAttachStateChangeListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f5126;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f5127;

    public /* synthetic */ ViewOnAttachStateChangeListenerC1333(int i, Object obj) {
        this.f5126 = i;
        this.f5127 = obj;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    private final void m3986(View view) {
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    private final void m3987(View view) {
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    private final void m3988(View view) {
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    private final void m3989(View view) {
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final void m3990(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        int i = this.f5126;
        Object obj = this.f5127;
        switch (i) {
            case 0:
                C1324 c1324 = (C1324) obj;
                AccessibilityManager accessibilityManager = c1324.f5088;
                if (c1324.f5097 == null || accessibilityManager == null || !c1324.isAttachedToWindow()) {
                    return;
                }
                accessibilityManager.addTouchExplorationStateChangeListener(c1324.f5097);
                return;
            case 1:
            case 2:
                return;
            case 3:
                View view2 = (View) obj;
                view2.removeOnAttachStateChangeListener(this);
                WeakHashMap weakHashMap = AbstractC2823.f10603;
                AbstractC2780.m6186(view2);
                return;
            case 4:
            default:
                return;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        AccessibilityManager accessibilityManager;
        AccessibilityManager accessibilityManager2;
        AccessibilityManager accessibilityManager3;
        switch (this.f5126) {
            case 0:
                C1324 c1324 = (C1324) this.f5127;
                AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener = c1324.f5097;
                if (touchExplorationStateChangeListener == null || (accessibilityManager = c1324.f5088) == null) {
                    return;
                }
                accessibilityManager.removeTouchExplorationStateChangeListener(touchExplorationStateChangeListener);
                return;
            case 1:
                HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior = (HideBottomViewOnScrollBehavior) this.f5127;
                AccessibilityManagerTouchExplorationStateChangeListenerC1442 accessibilityManagerTouchExplorationStateChangeListenerC1442 = hideBottomViewOnScrollBehavior.f2543;
                if (accessibilityManagerTouchExplorationStateChangeListenerC1442 == null || (accessibilityManager2 = hideBottomViewOnScrollBehavior.f2542) == null) {
                    return;
                }
                accessibilityManager2.removeTouchExplorationStateChangeListener(accessibilityManagerTouchExplorationStateChangeListenerC1442);
                hideBottomViewOnScrollBehavior.f2543 = null;
                return;
            case 2:
                HideViewOnScrollBehavior hideViewOnScrollBehavior = (HideViewOnScrollBehavior) this.f5127;
                AccessibilityManagerTouchExplorationStateChangeListenerC1442 accessibilityManagerTouchExplorationStateChangeListenerC14422 = hideViewOnScrollBehavior.f2548;
                if (accessibilityManagerTouchExplorationStateChangeListenerC14422 == null || (accessibilityManager3 = hideViewOnScrollBehavior.f2555) == null) {
                    return;
                }
                accessibilityManager3.removeTouchExplorationStateChangeListener(accessibilityManagerTouchExplorationStateChangeListenerC14422);
                hideViewOnScrollBehavior.f2548 = null;
                return;
            case 3:
                return;
            case 4:
                ViewOnKeyListenerC4313 viewOnKeyListenerC4313 = (ViewOnKeyListenerC4313) this.f5127;
                ViewTreeObserver viewTreeObserver = viewOnKeyListenerC4313.f15976;
                if (viewTreeObserver != null) {
                    if (!viewTreeObserver.isAlive()) {
                        viewOnKeyListenerC4313.f15976 = view.getViewTreeObserver();
                    }
                    viewOnKeyListenerC4313.f15976.removeGlobalOnLayoutListener(viewOnKeyListenerC4313.f15989);
                }
                view.removeOnAttachStateChangeListener(this);
                return;
            default:
                ViewOnKeyListenerC4325 viewOnKeyListenerC4325 = (ViewOnKeyListenerC4325) this.f5127;
                ViewTreeObserver viewTreeObserver2 = viewOnKeyListenerC4325.f16039;
                if (viewTreeObserver2 != null) {
                    if (!viewTreeObserver2.isAlive()) {
                        viewOnKeyListenerC4325.f16039 = view.getViewTreeObserver();
                    }
                    viewOnKeyListenerC4325.f16039.removeGlobalOnLayoutListener(viewOnKeyListenerC4325.f16041);
                }
                view.removeOnAttachStateChangeListener(this);
                return;
        }
    }
}
