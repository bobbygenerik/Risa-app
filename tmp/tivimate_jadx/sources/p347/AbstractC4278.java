package p347;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import p233.C3191;
import p233.C3192;
import p319.AbstractC3932;
import p319.C3934;

/* renamed from: ᵎᴵ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4278 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static Boolean f15857;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static Boolean f15858;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static Boolean f15859;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static Boolean f15862;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final char[] f15861 = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final char[] f15860 = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: ʽ, reason: contains not printable characters */
    public static boolean m8654(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f15857 == null) {
            f15857 = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        if (f15857.booleanValue() && Build.VERSION.SDK_INT < 24) {
            return true;
        }
        if (f15858 == null) {
            f15858 = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
        }
        if (f15858.booleanValue()) {
            return !m8657() || Build.VERSION.SDK_INT >= 30;
        }
        return false;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static boolean m8655(int i, Context context, String str) {
        C3192 m7014 = C3191.m7014(context);
        m7014.getClass();
        try {
            AppOpsManager appOpsManager = (AppOpsManager) m7014.f12211.getSystemService("appops");
            if (appOpsManager == null) {
                throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
            }
            appOpsManager.checkPackage(i, str);
            return true;
        } catch (SecurityException unused) {
            return false;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static boolean m8656(Context context, int i) {
        if (m8655(i, context, "com.google.android.gms")) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.google.android.gms", 64);
                C3934 m8104 = C3934.m8104(context);
                m8104.getClass();
                return packageInfo != null && (C3934.m8103(packageInfo, false) || (C3934.m8103(packageInfo, true) && AbstractC3932.m8100((Context) m8104.f15215)));
            } catch (PackageManager.NameNotFoundException unused) {
                if (Log.isLoggable("UidVerifier", 3)) {
                }
            }
        }
        return false;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m8657() {
        return Build.VERSION.SDK_INT >= 26;
    }
}
