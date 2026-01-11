package p186;

import android.view.View;
import android.view.Window;
import ᴵˋ.ˊʻ;
import ﹳˋ.ʼˎ;

/* renamed from: ˋᵔ.י, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2805 extends ˊʻ {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Window f10563;

    public C2805(Window window, ʼˎ r2) {
        super(10);
        this.f10563 = window;
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final void m6233(int i) {
        View decorView = this.f10563.getDecorView();
        decorView.setSystemUiVisibility((~i) & decorView.getSystemUiVisibility());
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void m6234(boolean z) {
        if (!z) {
            m6233(8192);
            return;
        }
        Window window = this.f10563;
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        View decorView = window.getDecorView();
        decorView.setSystemUiVisibility(8192 | decorView.getSystemUiVisibility());
    }
}
