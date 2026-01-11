package p151;

import android.app.Notification;
import android.app.NotificationManager;

/* renamed from: ˊʻ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2426 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m5531(Notification.Builder builder) {
        builder.setRemoteInputHistory(null);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m5532(Notification.Action.Builder builder, boolean z) {
        builder.setAllowGeneratedReplies(z);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m5533(NotificationManager notificationManager) {
        return notificationManager.areNotificationsEnabled();
    }
}
