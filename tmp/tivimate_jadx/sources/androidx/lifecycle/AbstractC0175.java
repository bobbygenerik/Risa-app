package androidx.lifecycle;

import android.app.Application;
import android.support.v4.media.session.AbstractC0001;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import p430.AbstractC5096;
import p430.AbstractC5106;

/* renamed from: androidx.lifecycle.ˉـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0175 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final List f1065 = AbstractC5106.m10045(Application.class, C0181.class);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final List f1064 = Collections.singletonList(C0181.class);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final AbstractC0196 m703(Class cls, Constructor constructor, Object... objArr) {
        try {
            return (AbstractC0196) constructor.newInstance(Arrays.copyOf(objArr, objArr.length));
        } catch (IllegalAccessException e) {
            throw new RuntimeException(AbstractC0001.m22(cls, "Failed to access "), e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("A " + cls + " cannot be instantiated.", e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(AbstractC0001.m22(cls, "An exception happened in constructor of "), e3.getCause());
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Constructor m704(Class cls, List list) {
        Constructor<?>[] constructors = cls.getConstructors();
        int i = 0;
        while (i < constructors.length) {
            int i2 = i + 1;
            try {
                Constructor<?> constructor = constructors[i];
                List m10005 = AbstractC5096.m10005(constructor.getParameterTypes());
                if (list.equals(m10005)) {
                    return constructor;
                }
                if (list.size() == m10005.size() && m10005.containsAll(list)) {
                    throw new UnsupportedOperationException("Class " + cls.getSimpleName() + " must have parameters in the proper order: " + list);
                }
                i = i2;
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new NoSuchElementException(e.getMessage());
            }
        }
        return null;
    }
}
