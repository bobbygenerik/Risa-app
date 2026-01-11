package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p039.C1287;
import p147.AbstractC2412;
import p186.AbstractC2823;
import p259.AbstractC3399;
import ᴵˋ.ˊʻ;

/* loaded from: classes.dex */
public class AppBarLayout$ScrollingViewBehavior extends AbstractC2412 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f2529;

    public AppBarLayout$ScrollingViewBehavior() {
        new Rect();
        new Rect();
    }

    public AppBarLayout$ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        new Rect();
        new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC3399.f13271);
        this.f2529 = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static void m2329(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
        }
    }

    @Override // p039.AbstractC1291
    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean mo2330(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (((C1287) view2.getLayoutParams()).f4981 instanceof AppBarLayout$BaseBehavior) {
            int bottom = view2.getBottom() - view.getTop();
            int i = this.f2529;
            int i2 = bottom - (i == 0 ? 0 : ˊʻ.ˑﹳ((int) (0.0f * i), 0, i));
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            view.offsetTopAndBottom(i2);
        }
        return false;
    }

    @Override // p039.AbstractC1291
    /* renamed from: ᵔᵢ */
    public final boolean mo2326(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        int i4 = view.getLayoutParams().height;
        if (i4 != -1 && i4 != -2) {
            return false;
        }
        m2329(coordinatorLayout.m102(view));
        return false;
    }

    @Override // p039.AbstractC1291
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo2331(View view) {
    }

    @Override // p147.AbstractC2412
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void mo2332(CoordinatorLayout coordinatorLayout, View view, int i) {
        m2329(coordinatorLayout.m102(view));
        coordinatorLayout.m110(view, i);
    }

    @Override // p039.AbstractC1291
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void mo2333(CoordinatorLayout coordinatorLayout, View view) {
        m2329(coordinatorLayout.m102(view));
    }
}
