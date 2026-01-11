package p229;

import java.lang.reflect.InvocationTargetException;
import p137.AbstractC2305;
import p255.C3368;

/* renamed from: ˑʼ.ˑٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3105 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C3368 f11834 = new C3368(0);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ C3085 f11835;

    public C3105(C3085 c3085) {
        this.f11835 = c3085;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static Class m6750(ClassLoader classLoader, String str) {
        try {
            return m6751(classLoader, str);
        } catch (ClassCastException e) {
            throw new RuntimeException(AbstractC2305.m5378("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException(AbstractC2305.m5378("Unable to instantiate fragment ", str, ": make sure class name exists"), e2);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static Class m6751(ClassLoader classLoader, String str) {
        C3368 c3368 = f11834;
        C3368 c33682 = (C3368) c3368.get(classLoader);
        if (c33682 == null) {
            c33682 = new C3368(0);
            c3368.put(classLoader, c33682);
        }
        Class cls = (Class) c33682.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        c33682.put(str, cls2);
        return cls2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractComponentCallbacksC3123 m6752(String str) {
        try {
            return (AbstractComponentCallbacksC3123) m6750(this.f11835.f11729.f11849.getClassLoader(), str).getConstructor(null).newInstance(null);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(AbstractC2305.m5378("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(AbstractC2305.m5378("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException(AbstractC2305.m5378("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e3);
        } catch (InvocationTargetException e4) {
            throw new RuntimeException(AbstractC2305.m5378("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e4);
        }
    }
}
