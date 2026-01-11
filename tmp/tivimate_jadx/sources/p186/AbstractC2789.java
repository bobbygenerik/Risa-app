package p186;

import android.view.View;
import android.view.WindowInsets;

/* renamed from: ˋᵔ.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2789 {
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m6199(View view, int i, int i2) {
        view.setScrollIndicators(i, i2);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C2816 m6200(View view) {
        WindowInsets rootWindowInsets = view.getRootWindowInsets();
        if (rootWindowInsets == null) {
            return null;
        }
        C2816 m6253 = C2816.m6253(null, rootWindowInsets);
        C2822 c2822 = m6253.f10589;
        c2822.mo6248(m6253);
        c2822.mo6165(view.getRootView());
        return m6253;
    }
}
