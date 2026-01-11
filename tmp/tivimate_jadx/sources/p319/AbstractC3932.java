package p319;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.util.concurrent.atomic.AtomicBoolean;
import p233.C3191;

/* renamed from: ᴵˈ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3932 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static boolean f15208;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final /* synthetic */ int f15210 = 0;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static boolean f15211;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final AtomicBoolean f15212 = new AtomicBoolean();

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final AtomicBoolean f15209 = new AtomicBoolean();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m8100(Context context) {
        if (!f15208) {
            try {
                PackageInfo m7016 = C3191.m7014(context).m7016(64, "com.google.android.gms");
                C3934.m8104(context);
                if (m7016 == null || C3934.m8103(m7016, false) || !C3934.m8103(m7016, true)) {
                    f15211 = false;
                } else {
                    f15211 = true;
                }
                f15208 = true;
            } catch (PackageManager.NameNotFoundException e) {
                f15208 = true;
            } catch (Throwable th) {
                f15208 = true;
                throw th;
            }
        }
        return f15211 || !"user".equals(Build.TYPE);
    }
}
