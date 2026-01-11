package p137;

import android.graphics.Insets;
import android.graphics.Rect;
import android.view.View;
import android.view.WindowInsets;

/* renamed from: ˉˆ.ˆﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2259 {
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m5286(View view, Rect rect, Rect rect2) {
        Insets systemWindowInsets = view.computeSystemWindowInsets(new WindowInsets.Builder().setSystemWindowInsets(Insets.of(rect)).build(), rect2).getSystemWindowInsets();
        rect.set(systemWindowInsets.left, systemWindowInsets.top, systemWindowInsets.right, systemWindowInsets.bottom);
    }
}
