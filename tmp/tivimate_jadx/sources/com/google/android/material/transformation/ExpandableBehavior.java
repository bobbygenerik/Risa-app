package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.ArrayList;
import p039.AbstractC1291;

@Deprecated
/* loaded from: classes.dex */
public abstract class ExpandableBehavior extends AbstractC1291 {
    public ExpandableBehavior() {
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
    }

    @Override // p039.AbstractC1291
    /* renamed from: ˈ */
    public final boolean mo2330(CoordinatorLayout coordinatorLayout, View view, View view2) {
        view2.getClass();
        throw new ClassCastException();
    }

    @Override // p039.AbstractC1291
    /* renamed from: ᵎﹶ */
    public final boolean mo2324(CoordinatorLayout coordinatorLayout, View view, int i) {
        if (!view.isLaidOut()) {
            ArrayList m102 = coordinatorLayout.m102(view);
            int size = m102.size();
            for (int i2 = 0; i2 < size; i2++) {
                mo2331(view);
            }
        }
        return false;
    }

    @Override // p039.AbstractC1291
    /* renamed from: ⁱˊ */
    public abstract void mo2331(View view);
}
