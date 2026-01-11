package p363;

import android.app.Activity;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import j$.util.Objects;
import p036.C1258;
import p275.C3507;

/* renamed from: ᵔᵢ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4407 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m8906(Object obj, Object obj2) {
        C3507.m7458(obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static OnBackInvokedCallback m8907(Object obj, LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430) {
        Objects.requireNonNull(layoutInflaterFactory2C4430);
        C1258 c1258 = new C1258(2, layoutInflaterFactory2C4430);
        C3507.m7458(obj).registerOnBackInvokedCallback(1000000, c1258);
        return c1258;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static OnBackInvokedDispatcher m8908(Activity activity) {
        return activity.getOnBackInvokedDispatcher();
    }
}
