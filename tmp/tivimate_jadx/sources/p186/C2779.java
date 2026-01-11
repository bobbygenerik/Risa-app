package p186;

import android.view.View;
import android.view.Window;

/* renamed from: ˋᵔ.ʾˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2779 extends C2805 {
    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m6185(boolean z) {
        if (!z) {
            m6233(16);
            return;
        }
        Window window = this.f10563;
        window.clearFlags(134217728);
        window.addFlags(Integer.MIN_VALUE);
        View decorView = window.getDecorView();
        decorView.setSystemUiVisibility(16 | decorView.getSystemUiVisibility());
    }
}
