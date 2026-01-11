package p186;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.WeakHashMap;

/* renamed from: ˋᵔ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnApplyWindowInsetsListenerC2819 implements View.OnApplyWindowInsetsListener {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC2792 f10590;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ View f10591;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C2816 f10592 = null;

    public ViewOnApplyWindowInsetsListenerC2819(View view, InterfaceC2792 interfaceC2792) {
        this.f10591 = view;
        this.f10590 = interfaceC2792;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        C2816 m6253 = C2816.m6253(view, windowInsets);
        int i = Build.VERSION.SDK_INT;
        InterfaceC2792 interfaceC2792 = this.f10590;
        if (i < 30) {
            AbstractC2776.m6181(windowInsets, this.f10591);
            if (m6253.equals(this.f10592)) {
                return interfaceC2792.mo2405(view, m6253).m6258();
            }
        }
        this.f10592 = m6253;
        C2816 mo2405 = interfaceC2792.mo2405(view, m6253);
        if (i >= 30) {
            return mo2405.m6258();
        }
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        AbstractC2780.m6186(view);
        return mo2405.m6258();
    }
}
