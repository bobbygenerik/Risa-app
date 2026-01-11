package p054;

import android.view.View;
import android.view.accessibility.AccessibilityManager;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.behavior.HideViewOnScrollBehavior;
import p039.AbstractC1291;

/* renamed from: ʽᵢ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class AccessibilityManagerTouchExplorationStateChangeListenerC1442 implements AccessibilityManager.TouchExplorationStateChangeListener {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC1291 f5622;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ View f5623;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f5624;

    public /* synthetic */ AccessibilityManagerTouchExplorationStateChangeListenerC1442(AbstractC1291 abstractC1291, View view, int i) {
        this.f5624 = i;
        this.f5622 = abstractC1291;
        this.f5623 = view;
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z) {
        switch (this.f5624) {
            case 0:
                HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior = (HideBottomViewOnScrollBehavior) this.f5622;
                if (z && hideBottomViewOnScrollBehavior.f2538 == 1) {
                    hideBottomViewOnScrollBehavior.m2335(this.f5623);
                    return;
                }
                return;
            default:
                HideViewOnScrollBehavior hideViewOnScrollBehavior = (HideViewOnScrollBehavior) this.f5622;
                if (z && hideViewOnScrollBehavior.f2549 == 1) {
                    hideViewOnScrollBehavior.m2336(this.f5623);
                    return;
                }
                return;
        }
    }
}
