package p177;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import ar.tvplayer.tv.R;
import p137.C2312;
import p259.AbstractC3399;
import ˈˋ.ʾˊ;

/* renamed from: ˋˈ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2660 extends C2312 {
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static int m5941(Context context, TypedArray typedArray, int... iArr) {
        int i = -1;
        for (int i2 = 0; i2 < iArr.length && i < 0; i2++) {
            int i3 = iArr[i2];
            TypedValue typedValue = new TypedValue();
            if (typedArray.getValue(i3, typedValue) && typedValue.type == 2) {
                TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
                int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, -1);
                obtainStyledAttributes.recycle();
                i = dimensionPixelSize;
            } else {
                i = typedArray.getDimensionPixelSize(i3, -1);
            }
        }
        return i;
    }

    @Override // p137.C2312, android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (ʾˊ.ᵢˏ(context, R.attr.4k4, true)) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(i, AbstractC3399.f13276);
            int m5941 = m5941(getContext(), obtainStyledAttributes, 2, 4);
            obtainStyledAttributes.recycle();
            if (m5941 >= 0) {
                setLineHeight(m5941);
            }
        }
    }
}
