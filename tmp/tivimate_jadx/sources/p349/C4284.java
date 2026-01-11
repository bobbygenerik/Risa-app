package p349;

import android.graphics.Typeface;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: ᵎⁱ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4284 extends C4291 {
    @Override // p349.C4291
    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public final Typeface mo8663(Object obj) {
        try {
            Object newInstance = Array.newInstance((Class<?>) this.f15884, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f15881.invoke(null, newInstance, "sans-serif", -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // p349.C4291
    /* renamed from: ˈˏ, reason: contains not printable characters */
    public final Method mo8664(Class cls) {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance((Class<?>) cls, 1).getClass(), String.class, cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
