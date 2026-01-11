package androidx.lifecycle;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* renamed from: androidx.lifecycle.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0169 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C0169 f1055 = new C0169();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final HashMap f1057 = new HashMap();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final HashMap f1056 = new HashMap();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m697(HashMap hashMap, C0160 c0160, EnumC0174 enumC0174, Class cls) {
        EnumC0174 enumC01742 = (EnumC0174) hashMap.get(c0160);
        if (enumC01742 == null || enumC0174 == enumC01742) {
            if (enumC01742 == null) {
                hashMap.put(c0160, enumC0174);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + c0160.f1036.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + enumC01742 + ", new value " + enumC0174);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0205 m698(Class cls, Method[] methodArr) {
        int i;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = this.f1057;
        if (superclass != null) {
            C0205 c0205 = (C0205) hashMap2.get(superclass);
            if (c0205 == null) {
                c0205 = m698(superclass, null);
            }
            hashMap.putAll(c0205.f1115);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            C0205 c02052 = (C0205) hashMap2.get(cls2);
            if (c02052 == null) {
                c02052 = m698(cls2, null);
            }
            for (Map.Entry entry : c02052.f1115.entrySet()) {
                m697(hashMap, (C0160) entry.getKey(), (EnumC0174) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
            }
        }
        boolean z = false;
        for (Method method : methodArr) {
            InterfaceC0176 interfaceC0176 = (InterfaceC0176) method.getAnnotation(InterfaceC0176.class);
            if (interfaceC0176 != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!InterfaceC0162.class.isAssignableFrom(parameterTypes[0])) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i = 1;
                }
                EnumC0174 value = interfaceC0176.value();
                if (parameterTypes.length > 1) {
                    if (!EnumC0174.class.isAssignableFrom(parameterTypes[1])) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (value != EnumC0174.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                m697(hashMap, new C0160(i, method), value, cls);
                z = true;
            }
        }
        C0205 c02053 = new C0205(hashMap);
        hashMap2.put(cls, c02053);
        this.f1056.put(cls, Boolean.valueOf(z));
        return c02053;
    }
}
