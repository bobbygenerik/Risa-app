package p137;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import p021.AbstractC1031;
import p349.AbstractC4293;
import p350.AbstractC4295;

/* renamed from: ˉˆ.ˎˉ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2281 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final ThreadLocal f8922 = new ThreadLocal();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final int[] f8921 = {-16842910};

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final int[] f8917 = {R.attr.state_focused};

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final int[] f8918 = {R.attr.state_pressed};

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final int[] f8919 = {R.attr.state_checked};

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final int[] f8923 = new int[0];

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final int[] f8920 = new int[1];

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m5323(Context context, int i) {
        int[] iArr = f8920;
        iArr[0] = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.getColor(0, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static ColorStateList m5324(Context context, int i) {
        ColorStateList colorStateList;
        int resourceId;
        int[] iArr = f8920;
        iArr[0] = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            if (!obtainStyledAttributes.hasValue(0) || (resourceId = obtainStyledAttributes.getResourceId(0, 0)) == 0 || (colorStateList = AbstractC1031.m3358(context, resourceId)) == null) {
                colorStateList = obtainStyledAttributes.getColorStateList(0);
            }
            return colorStateList;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m5325(Context context, int i) {
        ColorStateList m5324 = m5324(context, i);
        if (m5324 != null && m5324.isStateful()) {
            return m5324.getColorForState(f8921, m5324.getDefaultColor());
        }
        ThreadLocal threadLocal = f8922;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, typedValue, true);
        float f = typedValue.getFloat();
        return AbstractC4293.m8697(m5323(context, i), Math.round(Color.alpha(r4) * f));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m5326(Context context, View view) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(AbstractC4295.f15906);
        try {
            if (!obtainStyledAttributes.hasValue(117)) {
                String str = "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).";
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
