package p039;

import android.graphics.Matrix;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* renamed from: ʽʽ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1289 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final ThreadLocal f4986 = new ThreadLocal();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final ThreadLocal f4985 = new ThreadLocal();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m3887(CoordinatorLayout coordinatorLayout, View view, Matrix matrix) {
        Object parent = view.getParent();
        if ((parent instanceof View) && parent != coordinatorLayout) {
            m3887(coordinatorLayout, (View) parent, matrix);
            matrix.preTranslate(-r0.getScrollX(), -r0.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (view.getMatrix().isIdentity()) {
            return;
        }
        matrix.preConcat(view.getMatrix());
    }
}
