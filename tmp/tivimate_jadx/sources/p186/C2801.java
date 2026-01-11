package p186;

import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
import ᴵˋ.ˊʻ;
import ﹳˋ.ʼˎ;

/* renamed from: ˋᵔ.ˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2801 extends ˊʻ {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final WindowInsetsController f10552;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Window f10553;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2801(Window window, ʼˎ r3) {
        super(10);
        WindowInsetsController insetsController = window.getInsetsController();
        this.f10552 = insetsController;
        this.f10553 = window;
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void m6231(boolean z) {
        Window window = this.f10553;
        if (z) {
            if (window != null) {
                View decorView = window.getDecorView();
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 8192);
            }
            this.f10552.setSystemBarsAppearance(8, 8);
            return;
        }
        if (window != null) {
            View decorView2 = window.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-8193));
        }
        this.f10552.setSystemBarsAppearance(0, 8);
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m6232(boolean z) {
        Window window = this.f10553;
        if (z) {
            if (window != null) {
                View decorView = window.getDecorView();
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 16);
            }
            this.f10552.setSystemBarsAppearance(16, 16);
            return;
        }
        if (window != null) {
            View decorView2 = window.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-17));
        }
        this.f10552.setSystemBarsAppearance(0, 16);
    }
}
