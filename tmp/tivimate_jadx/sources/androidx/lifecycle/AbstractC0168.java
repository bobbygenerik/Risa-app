package androidx.lifecycle;

import android.app.Activity;
import android.app.FragmentManager;
import android.os.Build;
import androidx.lifecycle.FragmentC0170;
import p137.AbstractC2305;

/* renamed from: androidx.lifecycle.ˆﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0168 {
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m695(Activity activity) {
        if (Build.VERSION.SDK_INT >= 29) {
            FragmentC0170.C0171.Companion.getClass();
            C0201.m735(activity);
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new FragmentC0170(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m696(Activity activity, EnumC0174 enumC0174) {
        if (activity instanceof InterfaceC0162) {
            C0184 mo691 = ((InterfaceC0162) activity).mo691();
            if (AbstractC2305.m5366(mo691)) {
                mo691.m710(enumC0174);
            }
        }
    }
}
