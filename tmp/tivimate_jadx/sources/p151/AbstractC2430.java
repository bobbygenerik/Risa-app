package p151;

import android.app.Notification;
import android.content.Context;
import ar.tvplayer.tv.base.ScreenOnService;

/* renamed from: ˊʻ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2430 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m5540(Notification.Builder builder) {
        builder.setBubbleMetadata(null);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m5541(Notification.Action.Builder builder) {
        builder.setContextual(false);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static void m5542(ScreenOnService screenOnService, Notification notification) {
        screenOnService.startForeground(1, notification, -1);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m5543(Notification.Builder builder, boolean z) {
        builder.setAllowSystemGeneratedContextualActions(z);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m5544(Context context) {
        return context.getOpPackageName();
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m5545(ScreenOnService screenOnService, Notification notification) {
        screenOnService.startForeground(1, notification, -1);
    }
}
