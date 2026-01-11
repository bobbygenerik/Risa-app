package p129;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import com.google.android.material.textfield.TextInputLayout;

/* renamed from: ˈᐧ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2183 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final ThreadLocal f8620 = new ThreadLocal();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final ThreadLocal f8619 = new ThreadLocal();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m5182(TextInputLayout textInputLayout, View view, Matrix matrix) {
        Object parent = view.getParent();
        if ((parent instanceof View) && parent != textInputLayout) {
            m5182(textInputLayout, (View) parent, matrix);
            matrix.preTranslate(-r0.getScrollX(), -r0.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (view.getMatrix().isIdentity()) {
            return;
        }
        matrix.preConcat(view.getMatrix());
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m5183(TextInputLayout textInputLayout, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal threadLocal = f8620;
        Matrix matrix = (Matrix) threadLocal.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal.set(matrix);
        } else {
            matrix.reset();
        }
        m5182(textInputLayout, view, matrix);
        ThreadLocal threadLocal2 = f8619;
        RectF rectF = (RectF) threadLocal2.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal2.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }
}
