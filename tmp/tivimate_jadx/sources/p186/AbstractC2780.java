package p186;

import android.view.View;
import android.view.WindowInsets;

/* renamed from: ˋᵔ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2780 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m6186(View view) {
        view.requestApplyInsets();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static WindowInsets m6187(View view, WindowInsets windowInsets) {
        return view.onApplyWindowInsets(windowInsets);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static WindowInsets m6188(View view, WindowInsets windowInsets) {
        int i = AbstractC2785.f10543;
        return view.dispatchApplyWindowInsets(windowInsets);
    }
}
