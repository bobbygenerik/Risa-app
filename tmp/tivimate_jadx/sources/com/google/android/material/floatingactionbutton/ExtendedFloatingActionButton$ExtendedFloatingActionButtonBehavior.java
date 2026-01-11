package com.google.android.material.floatingactionbutton;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import p039.AbstractC1291;
import p039.C1287;
import p259.AbstractC3399;

/* loaded from: classes.dex */
public class ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior<T> extends AbstractC1291 {
    public ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior() {
    }

    public ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC3399.f13301);
        obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.getBoolean(1, true);
        obtainStyledAttributes.recycle();
    }

    @Override // p039.AbstractC1291
    /* renamed from: ʽ */
    public final void mo2344(C1287 c1287) {
        if (c1287.f4979 == 0) {
            c1287.f4979 = 80;
        }
    }

    @Override // p039.AbstractC1291
    /* renamed from: ˈ */
    public final boolean mo2330(CoordinatorLayout coordinatorLayout, View view, View view2) {
        throw new ClassCastException();
    }

    @Override // p039.AbstractC1291
    /* renamed from: ᵎﹶ */
    public final boolean mo2324(CoordinatorLayout coordinatorLayout, View view, int i) {
        throw new ClassCastException();
    }

    @Override // p039.AbstractC1291
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ boolean mo2417(View view) {
        throw new ClassCastException();
    }
}
