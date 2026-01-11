package p137;

import android.view.View;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import j$.util.Objects;
import p036.C1258;

/* renamed from: ˉˆ.ᵔⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2327 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m5419(Object obj, Object obj2) {
        ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(1000000, (OnBackInvokedCallback) obj2);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m5420(Object obj, Object obj2) {
        ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static OnBackInvokedCallback m5421(Runnable runnable) {
        Objects.requireNonNull(runnable);
        return new C1258(1, runnable);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static OnBackInvokedDispatcher m5422(View view) {
        return view.findOnBackInvokedDispatcher();
    }
}
