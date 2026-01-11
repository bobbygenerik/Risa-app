package p028;

import android.app.job.JobParameters;
import android.graphics.drawable.Icon;
import android.icu.text.DecimalFormatSymbols;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.PrecomputedText;
import android.view.DisplayCutout;
import android.view.ViewConfiguration;
import android.widget.TextView;
import p137.C2312;

/* renamed from: ʼᐧ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1116 {
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static int m3528(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetRight();
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static boolean m3529(ViewConfiguration viewConfiguration) {
        return viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static String[] m3530(DecimalFormatSymbols decimalFormatSymbols) {
        return decimalFormatSymbols.getDigitStrings();
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static int m3531(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetTop();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m3532(JobParameters jobParameters) {
        jobParameters.getNetwork();
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static int m3533(Object obj) {
        return ((Icon) obj).getType();
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static void m3534(TextView textView, int i) {
        textView.setFirstBaselineToTopHeight(i);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static int m3535(Object obj) {
        return ((Icon) obj).getResId();
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static int m3536(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledHoverSlop();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static int m3537(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetBottom();
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static Uri m3538(Object obj) {
        return ((Icon) obj).getUri();
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static int m3539(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetLeft();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static Handler m3540(Looper looper) {
        return Handler.createAsync(looper);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Handler m3541(Looper looper) {
        return Handler.createAsync(looper);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static PrecomputedText.Params m3542(C2312 c2312) {
        return c2312.getTextMetricsParams();
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static String m3543(Object obj) {
        return ((Icon) obj).getResPackage();
    }
}
