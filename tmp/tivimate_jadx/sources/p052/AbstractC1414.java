package p052;

import android.support.v4.media.session.AbstractC0001;
import j$.util.DesugarCollections;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import p356.AbstractC4343;
import p356.C4341;

/* renamed from: ʽᴵ.ˊʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1414 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C1428 f5535 = new C1428(5);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C1405 f5534 = new C1405(1);

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C1405 f5528 = new C1405(2);

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C1405 f5530 = new C1405(3);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C1405 f5531 = new C1405(4);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C1405 f5536 = new C1405(5);

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C1405 f5532 = new C1405(6);

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final C1405 f5533 = new C1405(7);

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final C1405 f5527 = new C1405(8);

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final C1405 f5529 = new C1405(0);

    /* renamed from: ʽ, reason: contains not printable characters */
    public static String m4153(int i, int[] iArr, String[] strArr, int[] iArr2) {
        StringBuilder sb = new StringBuilder("$");
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2];
            if (i3 == 1 || i3 == 2) {
                sb.append('[');
                sb.append(iArr2[i2]);
                sb.append(']');
            } else if (i3 == 3 || i3 == 4 || i3 == 5) {
                sb.append('.');
                String str = strArr[i2];
                if (str != null) {
                    sb.append(str);
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static Class m4154(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return (Class) ((ParameterizedType) type).getRawType();
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance((Class<?>) m4154(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return m4154(((WildcardType) type).getUpperBounds()[0]);
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static Set m4155(Set set, Class cls) {
        if (!cls.isAnnotationPresent(InterfaceC1423.class)) {
            throw new IllegalArgumentException(cls + " is not a JsonQualifier.");
        }
        if (set.isEmpty()) {
            return null;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Annotation annotation = (Annotation) it.next();
            if (cls.equals(annotation.annotationType())) {
                LinkedHashSet linkedHashSet = new LinkedHashSet(set);
                linkedHashSet.remove(annotation);
                return DesugarCollections.unmodifiableSet(linkedHashSet);
            }
        }
        return null;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static int m4156(AbstractC1413 abstractC1413, String str, int i, int i2) {
        int mo4140 = abstractC1413.mo4140();
        if (mo4140 >= i && mo4140 <= i2) {
            return mo4140;
        }
        throw new RuntimeException("Expected " + str + " but was " + mo4140 + " at path " + abstractC1413.m4151());
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static boolean m4157(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type2 instanceof GenericArrayType ? m4157(((Class) type).getComponentType(), ((GenericArrayType) type2).getGenericComponentType()) : type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            return m4157(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType instanceof C4341 ? ((C4341) parameterizedType).f16156 : parameterizedType.getActualTypeArguments(), parameterizedType2 instanceof C4341 ? ((C4341) parameterizedType2).f16156 : parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof Class) {
                return m4157(((Class) type2).getComponentType(), ((GenericArrayType) type).getGenericComponentType());
            }
            if (type2 instanceof GenericArrayType) {
                return m4157(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        }
        if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
        }
        if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        }
        TypeVariable typeVariable = (TypeVariable) type;
        TypeVariable typeVariable2 = (TypeVariable) type2;
        return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Type m4158(Type type, Class cls) {
        if (!Collection.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException();
        }
        Type m8811 = AbstractC4343.m8811(type, cls, AbstractC4343.m8803(type, cls, Collection.class), new LinkedHashSet());
        if (m8811 instanceof WildcardType) {
            m8811 = ((WildcardType) m8811).getUpperBounds()[0];
        }
        return m8811 instanceof ParameterizedType ? ((ParameterizedType) m8811).getActualTypeArguments()[0] : Object.class;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static C4341 m4159(Class cls, Type... typeArr) {
        if (typeArr.length != 0) {
            return new C4341(null, cls, typeArr);
        }
        throw new IllegalArgumentException(AbstractC0001.m22(cls, "Missing type arguments for "));
    }

    /* renamed from: ˑﹳ */
    public abstract Object mo4145();
}
