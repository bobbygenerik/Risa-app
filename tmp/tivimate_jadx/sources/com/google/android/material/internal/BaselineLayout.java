package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class BaselineLayout extends ViewGroup {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f2788;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f2789;

    public BaselineLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f2788 = -1;
    }

    @Override // android.view.View
    public int getBaseline() {
        return this.f2788;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingRight = ((i3 - i) - getPaddingRight()) - paddingLeft;
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((paddingRight - measuredWidth) / 2) + paddingLeft;
                int baseline = (this.f2788 == -1 || childAt.getBaseline() == -1) ? paddingTop : (this.f2788 + paddingTop) - childAt.getBaseline();
                childAt.layout(i6, baseline, measuredWidth + i6, measuredHeight + baseline);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = -1;
        int i8 = -1;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i, i2);
                i3 = Math.max(i3, childAt.getMeasuredHeight());
                int baseline = childAt.getBaseline();
                if (baseline != -1) {
                    i7 = Math.max(i7, baseline);
                    i8 = Math.max(i8, childAt.getMeasuredHeight() - baseline);
                }
                i5 = Math.max(i5, childAt.getMeasuredWidth());
                i4 = Math.max(i4, childAt.getMeasuredHeight());
                i6 = View.combineMeasuredStates(i6, childAt.getMeasuredState());
            }
        }
        if (i7 != -1) {
            if (this.f2789) {
                i4 = Math.max(i4, Math.max(i8, getPaddingBottom()) + i7);
            }
            this.f2788 = i7;
        }
        if (!this.f2789) {
            i4 = getPaddingBottom() + i3;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i5, getSuggestedMinimumWidth()), i, i6), View.resolveSizeAndState(Math.max(i4, getSuggestedMinimumHeight()), i2, i6 << 16));
    }

    public void setMeasurePaddingFromBaseline(boolean z) {
        this.f2789 = z;
    }
}
