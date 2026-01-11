package p158;

import android.app.job.JobScheduler;
import android.graphics.Rect;
import android.view.SurfaceView;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;

/* renamed from: ˊˋ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2541 {
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static void m5684(TextView textView, int i, float f) {
        textView.setLineHeight(i, f);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static float m5685(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getAxisVelocity(i);
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static void m5686(SurfaceView surfaceView) {
        surfaceView.setSurfaceLifecycle(2);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m5687(AccessibilityNodeInfo accessibilityNodeInfo, Rect rect) {
        accessibilityNodeInfo.getBoundsInWindow(rect);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static CharSequence m5688(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getContainerTitle();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static int m5689(ViewConfiguration viewConfiguration, int i, int i2, int i3) {
        return viewConfiguration.getScaledMinimumFlingVelocity(i, i2, i3);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static boolean m5690(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.isAccessibilityDataSensitive();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static AccessibilityNodeInfo.AccessibilityAction m5691() {
        return AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_IN_DIRECTION;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static JobScheduler m5692(JobScheduler jobScheduler) {
        return jobScheduler.forNamespace("androidx.work.systemjobscheduler");
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static int m5693(ViewConfiguration viewConfiguration, int i, int i2, int i3) {
        return viewConfiguration.getScaledMaximumFlingVelocity(i, i2, i3);
    }
}
