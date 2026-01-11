package p186;

import android.view.View;
import android.view.WindowInsets;

/* renamed from: ˋᵔ.ˉٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2794 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m6207(View view, CharSequence charSequence) {
        view.setStateDescription(charSequence);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static CharSequence m6208(View view) {
        return view.getStateDescription();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static WindowInsets m6209(View view, WindowInsets windowInsets) {
        return view.dispatchApplyWindowInsets(windowInsets);
    }
}
