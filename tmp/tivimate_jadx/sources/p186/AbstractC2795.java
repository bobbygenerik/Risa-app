package p186;

import android.view.View;

/* renamed from: ˋᵔ.ˊʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2795 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public static boolean m6210(View view) {
        return view.isScreenReaderFocusable();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m6211(View view, boolean z) {
        view.setAccessibilityHeading(z);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static void m6212(View view, CharSequence charSequence) {
        view.setAccessibilityPaneTitle(charSequence);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static boolean m6213(View view) {
        return view.isAccessibilityHeading();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static CharSequence m6214(View view) {
        return view.getAccessibilityPaneTitle();
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m6215(View view, boolean z) {
        view.setScreenReaderFocusable(z);
    }
}
