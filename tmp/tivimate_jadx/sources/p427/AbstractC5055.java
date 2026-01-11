package p427;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;

/* renamed from: ﹶʼ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5055 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final int[] f19020 = {R.attr.state_enabled, R.attr.state_pressed};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final String f19019 = AbstractC5055.class.getSimpleName();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static ColorStateList m9959(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        if (Build.VERSION.SDK_INT <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(f19020, 0)) != 0) {
            String str = f19019;
        }
        return colorStateList;
    }
}
