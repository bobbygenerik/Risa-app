package p137;

import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import java.lang.reflect.Method;

/* renamed from: ˉˆ.ـᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2300 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Method f8981;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final boolean f8982;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Method f8983;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Method f8984;

    static {
        try {
            Class cls = Integer.TYPE;
            Class cls2 = Float.TYPE;
            Method declaredMethod = AbsListView.class.getDeclaredMethod("positionSelector", cls, View.class, Boolean.TYPE, cls2, cls2);
            f8984 = declaredMethod;
            declaredMethod.setAccessible(true);
            Method declaredMethod2 = AdapterView.class.getDeclaredMethod("setSelectedPositionInt", cls);
            f8983 = declaredMethod2;
            declaredMethod2.setAccessible(true);
            Method declaredMethod3 = AdapterView.class.getDeclaredMethod("setNextSelectedPositionInt", cls);
            f8981 = declaredMethod3;
            declaredMethod3.setAccessible(true);
            f8982 = true;
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
    }
}
