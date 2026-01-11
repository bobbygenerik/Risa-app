package p137;

import android.R;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import p062.C1560;
import p278.AbstractC3538;
import p278.InterfaceC3539;

/* renamed from: ˉˆ.ٴﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2307 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final int[] f9001 = {R.attr.state_checked};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final int[] f9000 = new int[0];

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Rect f8999 = new Rect();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static PorterDuff.Mode m5386(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static Rect m5387(Drawable drawable) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            Insets m5337 = AbstractC2288.m5337(drawable);
            return new Rect(C1560.m4351(m5337), C1560.m4354(m5337), C1560.m4352(m5337), C1560.m4353(m5337));
        }
        boolean z = drawable instanceof InterfaceC3539;
        Object obj = drawable;
        if (z) {
            ((AbstractC3538) ((InterfaceC3539) drawable)).getClass();
            obj = null;
        }
        if (i >= 29) {
            boolean z2 = AbstractC2232.f8760;
        } else if (AbstractC2232.f8760) {
            try {
                Object invoke = AbstractC2232.f8759.invoke(obj, null);
                if (invoke != null) {
                    return new Rect(AbstractC2232.f8756.getInt(invoke), AbstractC2232.f8757.getInt(invoke), AbstractC2232.f8758.getInt(invoke), AbstractC2232.f8761.getInt(invoke));
                }
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        return f8999;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m5388(Drawable drawable) {
        String name = drawable.getClass().getName();
        int i = Build.VERSION.SDK_INT;
        if (i < 29 || i >= 31 || !"android.graphics.drawable.ColorStateListDrawable".equals(name)) {
            return;
        }
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(f9001);
        } else {
            drawable.setState(f9000);
        }
        drawable.setState(state);
    }
}
