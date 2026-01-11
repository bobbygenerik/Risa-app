package p158;

import android.graphics.drawable.Icon;
import android.net.Uri;
import android.view.Surface;
import android.view.View;
import android.view.Window;
import android.view.accessibility.AccessibilityNodeInfo;
import p305.AbstractC3731;

/* renamed from: ˊˋ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2528 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m5647(Window window, boolean z) {
        View decorView = window.getDecorView();
        int systemUiVisibility = decorView.getSystemUiVisibility();
        decorView.setSystemUiVisibility(z ? systemUiVisibility & (-257) : systemUiVisibility | 256);
        window.setDecorFitsSystemWindows(z);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m5648(Window window, boolean z) {
        window.setDecorFitsSystemWindows(z);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static void m5649(AccessibilityNodeInfo accessibilityNodeInfo, CharSequence charSequence) {
        accessibilityNodeInfo.setStateDescription(charSequence);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static CharSequence m5650(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getStateDescription();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Icon m5651(Uri uri) {
        return Icon.createWithAdaptiveBitmapContentUri(uri);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m5652(Surface surface, float f) {
        try {
            surface.setFrameRate(f, f == 0.0f ? 0 : 1);
        } catch (IllegalStateException e) {
            AbstractC3731.m7863("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e);
        }
    }
}
