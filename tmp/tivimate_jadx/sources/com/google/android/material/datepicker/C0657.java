package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import ar.tvplayer.tv.R;
import p259.AbstractC3399;
import ˈˋ.ʾˊ;

/* renamed from: com.google.android.material.datepicker.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0657 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ٴﾞ.ˆʾ f2692;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ٴﾞ.ˆʾ f2693;

    public C0657(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(ʾˊ.ʾˋ(R.attr.2h6, context, C0678.class.getCanonicalName()).data, AbstractC3399.f13293);
        ٴﾞ.ˆʾ.ʼᐧ(context, obtainStyledAttributes.getResourceId(4, 0));
        ٴﾞ.ˆʾ.ʼᐧ(context, obtainStyledAttributes.getResourceId(2, 0));
        ٴﾞ.ˆʾ.ʼᐧ(context, obtainStyledAttributes.getResourceId(3, 0));
        ٴﾞ.ˆʾ.ʼᐧ(context, obtainStyledAttributes.getResourceId(5, 0));
        ColorStateList colorStateList = ˉᵎ.ⁱˊ.ﹳᐧ(context, obtainStyledAttributes, 7);
        this.f2693 = ٴﾞ.ˆʾ.ʼᐧ(context, obtainStyledAttributes.getResourceId(9, 0));
        ٴﾞ.ˆʾ.ʼᐧ(context, obtainStyledAttributes.getResourceId(8, 0));
        this.f2692 = ٴﾞ.ˆʾ.ʼᐧ(context, obtainStyledAttributes.getResourceId(10, 0));
        new Paint().setColor(colorStateList.getDefaultColor());
        obtainStyledAttributes.recycle();
    }
}
