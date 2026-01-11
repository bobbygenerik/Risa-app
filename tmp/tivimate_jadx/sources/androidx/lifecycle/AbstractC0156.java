package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.NoSuchElementException;
import p435.AbstractC5152;

/* renamed from: androidx.lifecycle.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0156 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final HashMap f1028 = new HashMap();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final HashMap f1027 = new HashMap();

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m670(Class cls) {
        Constructor constructor;
        boolean z;
        ArrayList arrayList;
        HashMap hashMap = f1028;
        Integer num = (Integer) hashMap.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int i = 1;
        if (cls.getCanonicalName() != null) {
            try {
                Package r4 = cls.getPackage();
                String canonicalName = cls.getCanonicalName();
                String name = r4 != null ? r4.getName() : "";
                if (name.length() != 0) {
                    canonicalName = canonicalName.substring(name.length() + 1);
                }
                String concat = AbstractC5152.m10146(canonicalName, ".", "_", false).concat("_LifecycleAdapter");
                if (name.length() != 0) {
                    concat = name + '.' + concat;
                }
                constructor = Class.forName(concat).getDeclaredConstructor(cls);
                if (!constructor.isAccessible()) {
                    constructor.setAccessible(true);
                }
            } catch (ClassNotFoundException unused) {
                constructor = null;
            } catch (NoSuchMethodException e) {
                throw new RuntimeException(e);
            }
            HashMap hashMap2 = f1027;
            if (constructor != null) {
                hashMap2.put(cls, Collections.singletonList(constructor));
            } else {
                C0169 c0169 = C0169.f1055;
                HashMap hashMap3 = c0169.f1056;
                Boolean bool = (Boolean) hashMap3.get(cls);
                if (bool != null) {
                    z = bool.booleanValue();
                } else {
                    try {
                        Method[] declaredMethods = cls.getDeclaredMethods();
                        int length = declaredMethods.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= length) {
                                hashMap3.put(cls, Boolean.FALSE);
                                z = false;
                                break;
                            }
                            if (((InterfaceC0176) declaredMethods[i2].getAnnotation(InterfaceC0176.class)) != null) {
                                c0169.m698(cls, declaredMethods);
                                z = true;
                                break;
                            }
                            i2++;
                        }
                    } catch (NoClassDefFoundError e2) {
                        throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e2);
                    }
                }
                if (!z) {
                    Class superclass = cls.getSuperclass();
                    if (superclass != null && InterfaceC0179.class.isAssignableFrom(superclass)) {
                        arrayList = m670(superclass) != 1 ? new ArrayList((Collection) hashMap2.get(superclass)) : null;
                    }
                    Class<?>[] interfaces = cls.getInterfaces();
                    int i3 = 0;
                    while (true) {
                        if (i3 < interfaces.length) {
                            int i4 = i3 + 1;
                            try {
                                Class<?> cls2 = interfaces[i3];
                                if (cls2 != null && InterfaceC0179.class.isAssignableFrom(cls2)) {
                                    if (m670(cls2) == 1) {
                                        break;
                                    }
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.addAll((Collection) hashMap2.get(cls2));
                                }
                                i3 = i4;
                            } catch (ArrayIndexOutOfBoundsException e3) {
                                throw new NoSuchElementException(e3.getMessage());
                            }
                        } else if (arrayList != null) {
                            hashMap2.put(cls, arrayList);
                        }
                    }
                }
            }
            i = 2;
        }
        hashMap.put(cls, Integer.valueOf(i));
        return i;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m671(Constructor constructor, InterfaceC0179 interfaceC0179) {
        try {
            if (constructor.newInstance(interfaceC0179) == null) {
            } else {
                throw new ClassCastException();
            }
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }
}
