package p137;

import android.content.Context;
import android.os.Build;
import android.view.MenuItem;
import android.widget.PopupWindow;
import java.lang.reflect.Method;
import p353.C4329;
import p353.MenuC4312;
import ᐧﹳ.ʽ;

/* renamed from: ˉˆ.ـᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2301 extends C2254 implements InterfaceC2340 {

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public static final Method f8985;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public ʽ f8986;

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                f8985 = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
        }
    }

    @Override // p137.InterfaceC2340
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo5350(MenuC4312 menuC4312, MenuItem menuItem) {
        ʽ r0 = this.f8986;
        if (r0 != null) {
            r0.ˈ(menuC4312, menuItem);
        }
    }

    @Override // p137.InterfaceC2340
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void mo5351(MenuC4312 menuC4312, C4329 c4329) {
        ʽ r0 = this.f8986;
        if (r0 != null) {
            r0.ᵔᵢ(menuC4312, c4329);
        }
    }

    @Override // p137.C2254
    /* renamed from: ᵔﹳ */
    public final C2249 mo5275(Context context, boolean z) {
        C2342 c2342 = new C2342(context, z);
        c2342.setHoverListener(this);
        return c2342;
    }
}
