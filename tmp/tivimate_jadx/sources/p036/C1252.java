package p036;

import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import p329.InterfaceC4104;

/* renamed from: ʽ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1252 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C1252 f4865 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3837(Object obj, Object obj2) {
        ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m3838(Object obj, int i, Object obj2) {
        ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(i, (OnBackInvokedCallback) obj2);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final OnBackInvokedCallback m3839(InterfaceC4104 interfaceC4104) {
        return new C1258(0, interfaceC4104);
    }
}
