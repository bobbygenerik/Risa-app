package p186;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import ar.tvplayer.tv.R;

/* renamed from: ˋᵔ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2776 {
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static void m6171(View view, float f) {
        view.setElevation(f);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static ColorStateList m6172(View view) {
        return view.getBackgroundTintList();
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static void m6173(View view, InterfaceC2792 interfaceC2792) {
        ViewOnApplyWindowInsetsListenerC2819 viewOnApplyWindowInsetsListenerC2819 = interfaceC2792 != null ? new ViewOnApplyWindowInsetsListenerC2819(view, interfaceC2792) : null;
        if (Build.VERSION.SDK_INT < 30) {
            view.setTag(R.id.2ko, viewOnApplyWindowInsetsListenerC2819);
        }
        if (view.getTag(R.id.3mu) != null) {
            return;
        }
        if (viewOnApplyWindowInsetsListenerC2819 != null) {
            view.setOnApplyWindowInsetsListener(viewOnApplyWindowInsetsListenerC2819);
        } else {
            view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R.id.rl));
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static PorterDuff.Mode m6174(View view) {
        return view.getBackgroundTintMode();
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static void m6175(View view) {
        view.stopNestedScroll();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static String m6176(View view) {
        return view.getTransitionName();
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static void m6177(View view, String str) {
        view.setTransitionName(str);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static void m6178(View view, ColorStateList colorStateList) {
        view.setBackgroundTintList(colorStateList);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static void m6179(View view, PorterDuff.Mode mode) {
        view.setBackgroundTintMode(mode);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C2816 m6180(View view, C2816 c2816, Rect rect) {
        WindowInsets m6258 = c2816.m6258();
        if (m6258 != null) {
            return C2816.m6253(view, view.computeSystemWindowInsets(m6258, rect));
        }
        rect.setEmpty();
        return c2816;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m6181(WindowInsets windowInsets, View view) {
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(R.id.rl);
        if (onApplyWindowInsetsListener != null) {
            onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static void m6182(View view, float f) {
        view.setZ(f);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static float m6183(View view) {
        return view.getZ();
    }
}
