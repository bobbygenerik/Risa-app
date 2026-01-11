package p305;

import android.content.Context;
import android.telephony.TelephonyManager;

/* renamed from: ᐧˎ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3720 {
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m7819(Context context, C3729 c3729) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            telephonyManager.getClass();
            C3727 c3727 = new C3727(c3729);
            telephonyManager.registerTelephonyCallback(c3729.f14523, c3727);
            telephonyManager.unregisterTelephonyCallback(c3727);
        } catch (RuntimeException unused) {
            c3729.m7837(5);
        }
    }
}
