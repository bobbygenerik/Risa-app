package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import ar.tvplayer.tv.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p021.AbstractC1031;
import p065.C1596;
import p065.C1601;
import p065.C1607;
import p186.AbstractC2823;
import p259.AbstractC3399;

/* loaded from: classes.dex */
class ClockFaceView extends AbstractC0680 implements InterfaceC0687 {

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public final String[] f2918;

    /* renamed from: ʿ, reason: contains not printable characters */
    public final C0683 f2919;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final int[] f2920;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public C0686 f2921;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final RectF f2922;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final SparseArray f2923;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public float f2924;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public final int f2925;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final ClockHandView f2926;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public final ColorStateList f2927;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public final int f2928;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public final int f2929;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final int f2930;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final Rect f2931;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final float[] f2932;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final Rect f2933;

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2933 = new Rect();
        this.f2922 = new RectF();
        this.f2931 = new Rect();
        SparseArray sparseArray = new SparseArray();
        this.f2923 = sparseArray;
        this.f2932 = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC3399.f13280, R.attr.1o2, R.style.f268282cn);
        Resources resources = getResources();
        ColorStateList colorStateList = ˉᵎ.ⁱˊ.ﹳᐧ(context, obtainStyledAttributes, 1);
        this.f2927 = colorStateList;
        LayoutInflater.from(context).inflate(R.layout.2fd, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R.id.5b8);
        this.f2926 = clockHandView;
        this.f2929 = resources.getDimensionPixelSize(R.dimen.67d);
        int colorForState = colorStateList.getColorForState(new int[]{android.R.attr.state_selected}, colorStateList.getDefaultColor());
        this.f2920 = new int[]{colorForState, colorForState, colorStateList.getDefaultColor()};
        clockHandView.f2935.add(this);
        int defaultColor = AbstractC1031.m3358(context, R.color.21e).getDefaultColor();
        ColorStateList colorStateList2 = ˉᵎ.ⁱˊ.ﹳᐧ(context, obtainStyledAttributes, 0);
        setBackgroundColor(colorStateList2 != null ? colorStateList2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserverOnPreDrawListenerC0690(this));
        obtainStyledAttributes.recycle();
        setOutlineProvider(new ViewOutlineProvider());
        setFocusable(true);
        setClipToOutline(true);
        this.f2919 = new C0683(this);
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        this.f2918 = strArr;
        LayoutInflater from = LayoutInflater.from(getContext());
        int size = sparseArray.size();
        boolean z = false;
        for (int i = 0; i < Math.max(this.f2918.length, size); i++) {
            TextView textView = (TextView) sparseArray.get(i);
            if (i >= this.f2918.length) {
                removeView(textView);
                sparseArray.remove(i);
            } else {
                if (textView == null) {
                    textView = (TextView) from.inflate(R.layout.2fb, (ViewGroup) this, false);
                    sparseArray.put(i, textView);
                    addView(textView);
                }
                textView.setText(this.f2918[i]);
                textView.setTag(R.id.4a0, Integer.valueOf(i));
                int i2 = (i / 12) + 1;
                textView.setTag(R.id.18h, Integer.valueOf(i2));
                z = i2 > 1 ? true : z;
                AbstractC2823.m6273(textView, this.f2919);
                textView.setTextColor(this.f2927);
            }
        }
        ClockHandView clockHandView2 = this.f2926;
        if (clockHandView2.f2943 && !z) {
            clockHandView2.f2937 = 1;
        }
        clockHandView2.f2943 = z;
        clockHandView2.invalidate();
        this.f2928 = resources.getDimensionPixelSize(R.dimen.1m5);
        this.f2925 = resources.getDimensionPixelSize(R.dimen.4fs);
        this.f2930 = resources.getDimensionPixelSize(R.dimen.hk);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(1, this.f2918.length, false, 1));
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        int i2;
        int length;
        int i3 = 0;
        while (true) {
            SparseArray sparseArray = this.f2923;
            if (i3 >= sparseArray.size()) {
                i2 = -1;
                break;
            }
            TextView textView = (TextView) sparseArray.valueAt(i3);
            if (textView.isSelected()) {
                i2 = ((Integer) textView.getTag(R.id.4a0)).intValue();
                break;
            }
            i3++;
        }
        if (!isShown() || i2 == -1) {
            return super.onKeyDown(i, keyEvent);
        }
        if (i != 66) {
            switch (i) {
                case 19:
                case 22:
                    length = (i2 + 1) % this.f2918.length;
                    break;
                case 20:
                case 21:
                    String[] strArr = this.f2918;
                    length = ((i2 - 1) + strArr.length) % strArr.length;
                    break;
                case 23:
                    break;
                default:
                    return super.onKeyDown(i, keyEvent);
            }
            if (length == i2) {
                return super.onKeyDown(i, keyEvent);
            }
            int i4 = (length / 12) + 1;
            ClockHandView clockHandView = this.f2926;
            if (i4 != clockHandView.f2937) {
                clockHandView.f2937 = i4;
                clockHandView.invalidate();
            }
            clockHandView.m2458((length % 12) * 30.0f);
            m2456();
            return true;
        }
        C0686 c0686 = this.f2921;
        if (c0686 != null) {
            c0686.f2956.f2949.isChecked();
        }
        return true;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m2456();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int max = (int) (this.f2930 / Math.max(Math.max(this.f2928 / displayMetrics.heightPixels, this.f2925 / displayMetrics.widthPixels), 1.0f));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(max, 1073741824);
        setMeasuredDimension(max, max);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }

    @Override // com.google.android.material.timepicker.AbstractC0680
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void mo2455() {
        C1601 c1601 = new C1601();
        c1601.m4377(this);
        HashMap hashMap = new HashMap();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getId() != R.id.79c && !"skip".equals(childAt.getTag())) {
                int i2 = (Integer) childAt.getTag(R.id.18h);
                if (i2 == null) {
                    i2 = 1;
                }
                if (!hashMap.containsKey(i2)) {
                    hashMap.put(i2, new ArrayList());
                }
                ((List) hashMap.get(i2)).add(childAt);
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            List list = (List) entry.getValue();
            int round = ((Integer) entry.getKey()).intValue() == 2 ? Math.round(this.f2951 * 0.66f) : this.f2951;
            Iterator it = list.iterator();
            float f = 0.0f;
            while (it.hasNext()) {
                int id = ((View) it.next()).getId();
                Integer valueOf = Integer.valueOf(id);
                HashMap hashMap2 = c1601.f6375;
                if (!hashMap2.containsKey(valueOf)) {
                    hashMap2.put(Integer.valueOf(id), new C1607());
                }
                C1596 c1596 = ((C1607) hashMap2.get(Integer.valueOf(id))).f6403;
                c1596.f6274 = R.id.79c;
                c1596.f6226 = round;
                c1596.f6261 = f;
                f += 360.0f / list.size();
            }
        }
        c1601.m4378(this);
        setConstraintSet(null);
        requestLayout();
        int i3 = 0;
        while (true) {
            SparseArray sparseArray = this.f2923;
            if (i3 >= sparseArray.size()) {
                return;
            }
            ((TextView) sparseArray.get(i3)).setVisibility(0);
            i3++;
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m2456() {
        SparseArray sparseArray;
        Rect rect;
        RectF rectF;
        RectF rectF2 = this.f2926.f2942;
        float f = Float.MAX_VALUE;
        TextView textView = null;
        int i = 0;
        while (true) {
            sparseArray = this.f2923;
            int size = sparseArray.size();
            rect = this.f2933;
            rectF = this.f2922;
            if (i >= size) {
                break;
            }
            TextView textView2 = (TextView) sparseArray.get(i);
            if (textView2 != null) {
                textView2.getHitRect(rect);
                rectF.set(rect);
                rectF.union(rectF2);
                float height = rectF.height() * rectF.width();
                if (height < f) {
                    textView = textView2;
                    f = height;
                }
            }
            i++;
        }
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            TextView textView3 = (TextView) sparseArray.get(i2);
            if (textView3 != null) {
                textView3.setSelected(textView3 == textView);
                textView3.getHitRect(rect);
                rectF.set(rect);
                textView3.getLineBounds(0, this.f2931);
                rectF.inset(r8.left, r8.top);
                textView3.getPaint().setShader(!RectF.intersects(rectF2, rectF) ? null : new RadialGradient(rectF2.centerX() - rectF.left, rectF2.centerY() - rectF.top, 0.5f * rectF2.width(), this.f2920, this.f2932, Shader.TileMode.CLAMP));
                textView3.invalidate();
            }
        }
    }
}
