package p311;

import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* renamed from: ᐧᵢ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3791 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Constructor f14705;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Object m7955(Method method, Class cls, Object obj, Object[] objArr) {
        Constructor constructor = f14705;
        if (constructor == null) {
            constructor = MethodHandles.Lookup.class.getDeclaredConstructor(Class.class, Integer.TYPE);
            constructor.setAccessible(true);
            f14705 = constructor;
        }
        return ((MethodHandles.Lookup) constructor.newInstance(cls, -1)).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
    }
}
