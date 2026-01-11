package p039;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* renamed from: ʽʽ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewGroupOnHierarchyChangeListenerC1286 implements ViewGroup.OnHierarchyChangeListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ CoordinatorLayout f4968;

    public ViewGroupOnHierarchyChangeListenerC1286(CoordinatorLayout coordinatorLayout) {
        this.f4968 = coordinatorLayout;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewAdded(View view, View view2) {
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f4968.f286;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewAdded(view, view2);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewRemoved(View view, View view2) {
        CoordinatorLayout coordinatorLayout = this.f4968;
        coordinatorLayout.m101(2);
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = coordinatorLayout.f286;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewRemoved(view, view2);
        }
    }
}
