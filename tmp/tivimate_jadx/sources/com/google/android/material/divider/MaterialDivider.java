package com.google.android.material.divider;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import ar.tvplayer.tv.R;
import p129.AbstractC2185;
import p184.AbstractC2764;
import p188.C2844;
import p259.AbstractC3399;
import ˉᵎ.ⁱˊ;

/* loaded from: classes.dex */
public class MaterialDivider extends View {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f2783;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2844 f2784;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f2785;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f2786;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f2787;

    public MaterialDivider(Context context, AttributeSet attributeSet) {
        super(AbstractC2764.m6163(context, attributeSet, R.attr.191, R.style.f268065jh), attributeSet, R.attr.191);
        Context context2 = getContext();
        this.f2784 = new C2844();
        TypedArray m5186 = AbstractC2185.m5186(context2, attributeSet, AbstractC3399.f13295, R.attr.191, R.style.f268065jh, new int[0]);
        this.f2786 = m5186.getDimensionPixelSize(3, getResources().getDimensionPixelSize(R.dimen.5i3));
        this.f2785 = m5186.getDimensionPixelOffset(2, 0);
        this.f2787 = m5186.getDimensionPixelOffset(1, 0);
        setDividerColor(ⁱˊ.ﹳᐧ(context2, m5186, 0).getDefaultColor());
        m5186.recycle();
    }

    public int getDividerColor() {
        return this.f2783;
    }

    public int getDividerInsetEnd() {
        return this.f2787;
    }

    public int getDividerInsetStart() {
        return this.f2785;
    }

    public int getDividerThickness() {
        return this.f2786;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int width;
        int i;
        super.onDraw(canvas);
        boolean z = getLayoutDirection() == 1;
        int i2 = z ? this.f2787 : this.f2785;
        if (z) {
            width = getWidth();
            i = this.f2785;
        } else {
            width = getWidth();
            i = this.f2787;
        }
        int i3 = width - i;
        int bottom = getBottom() - getTop();
        C2844 c2844 = this.f2784;
        c2844.setBounds(i2, 0, i3, bottom);
        c2844.draw(canvas);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        int measuredHeight = getMeasuredHeight();
        if (mode == Integer.MIN_VALUE || mode == 0) {
            int i3 = this.f2786;
            if (i3 > 0 && measuredHeight != i3) {
                measuredHeight = i3;
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
    }

    public void setDividerColor(int i) {
        if (this.f2783 != i) {
            this.f2783 = i;
            this.f2784.m6321(ColorStateList.valueOf(i));
            invalidate();
        }
    }

    public void setDividerColorResource(int i) {
        setDividerColor(getContext().getColor(i));
    }

    public void setDividerInsetEnd(int i) {
        this.f2787 = i;
    }

    public void setDividerInsetEndResource(int i) {
        setDividerInsetEnd(getContext().getResources().getDimensionPixelOffset(i));
    }

    public void setDividerInsetStart(int i) {
        this.f2785 = i;
    }

    public void setDividerInsetStartResource(int i) {
        setDividerInsetStart(getContext().getResources().getDimensionPixelOffset(i));
    }

    public void setDividerThickness(int i) {
        if (this.f2786 != i) {
            this.f2786 = i;
            requestLayout();
        }
    }

    public void setDividerThicknessResource(int i) {
        setDividerThickness(getContext().getResources().getDimensionPixelSize(i));
    }
}
