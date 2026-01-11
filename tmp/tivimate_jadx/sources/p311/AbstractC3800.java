package p311;

import android.os.Build;
import p179.ExecutorC2748;

/* renamed from: ᐧᵢ.ˆﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3800 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C3835 f14718;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C3835 f14719;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final ExecutorC2748 f14720;

    static {
        String property = System.getProperty("java.vm.name");
        property.getClass();
        if (property.equals("RoboVM")) {
            f14720 = null;
            f14719 = new C3835(7);
            f14718 = new C3835(6);
        } else {
            if (!property.equals("Dalvik")) {
                f14720 = null;
                f14719 = new C3835(7);
                f14718 = new C3835(6);
                return;
            }
            f14720 = new ExecutorC2748(2);
            if (Build.VERSION.SDK_INT >= 24) {
                f14719 = new C3835(7);
                f14718 = new C3835(6);
            } else {
                f14719 = new C3835(7);
                f14718 = new C3835(6);
            }
        }
    }
}
