package p311;

import android.support.v4.media.session.AbstractC0001;
import j$.util.Objects;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Map;
import p010.AbstractC0844;
import p126.InterfaceC2136;
import p324.C4030;
import ˉᵎ.ⁱˊ;

/* renamed from: ᐧᵢ.ʿᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3798 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static boolean f14716 = true;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Type[] f14717 = new Type[0];

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static Type m7959(Type type, Class cls) {
        if (Map.class.isAssignableFrom(cls)) {
            return m7965(type, cls, m7975(type, cls, Map.class));
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m7960(java.lang.Throwable r5, p126.InterfaceC2136 r6) {
        /*
            boolean r0 = r6 instanceof p311.C3796
            if (r0 == 0) goto L13
            r0 = r6
            ᐧᵢ.ʾᵎ r0 = (p311.C3796) r0
            int r1 = r0.f14713
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f14713 = r1
            goto L18
        L13:
            ᐧᵢ.ʾᵎ r0 = new ᐧᵢ.ʾᵎ
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f14712
            int r1 = r0.f14713
            r2 = 1
            if (r1 == 0) goto L32
            if (r1 == r2) goto L29
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L29:
            p121.AbstractC2026.m5044(r6)
            kotlin.KotlinNothingValueException r5 = new kotlin.KotlinNothingValueException
            r5.<init>()
            throw r5
        L32:
            p121.AbstractC2026.m5044(r6)
            r0.f14713 = r2
            ʿⁱ.ˈ r6 = p324.AbstractC4028.f15408
            ˈי.ᵔᵢ r1 = r0.f15166
            ˋˋ.ˈ r2 = new ˋˋ.ˈ
            r3 = 15
            r4 = 0
            r2.<init>(r0, r5, r3, r4)
            r6.mo4764(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p311.AbstractC3798.m7960(java.lang.Throwable, ˈי.ˈ):void");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Object m7961(InterfaceC3801 interfaceC3801, InterfaceC2136 interfaceC2136) {
        C4030 c4030 = new C4030(1, ⁱˊ.ˈٴ(interfaceC2136));
        c4030.m8206();
        c4030.m8211(new C3794(interfaceC3801, 1));
        interfaceC3801.mo7978(new C3816(c4030));
        return c4030.m8209();
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static boolean m7962(Type type) {
        if (type instanceof Class) {
            return false;
        }
        if (type instanceof ParameterizedType) {
            for (Type type2 : ((ParameterizedType) type).getActualTypeArguments()) {
                if (m7962(type2)) {
                    return true;
                }
            }
            return false;
        }
        if (type instanceof GenericArrayType) {
            return m7962(((GenericArrayType) type).getGenericComponentType());
        }
        if ((type instanceof TypeVariable) || (type instanceof WildcardType)) {
            return true;
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m7963(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static IllegalArgumentException m7964(Method method, int i, String str, Object... objArr) {
        return m7974(method, null, str + " (" + AbstractC3800.f14719.mo7981(i, method) + ")", objArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r10 = r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0043 A[LOOP:0: B:1:0x0000->B:18:0x0043, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0042 A[SYNTHETIC] */
    /* renamed from: ˉˆ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.reflect.Type m7965(java.lang.reflect.Type r8, java.lang.Class r9, java.lang.reflect.Type r10) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p311.AbstractC3798.m7965(java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Type):java.lang.reflect.Type");
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static boolean m7966(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            Type ownerType = parameterizedType.getOwnerType();
            Type ownerType2 = parameterizedType2.getOwnerType();
            return (ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return m7966(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
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

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static boolean m7967(Annotation[] annotationArr, Class cls) {
        for (Annotation annotation : annotationArr) {
            if (cls.isInstance(annotation)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static Type m7968(int i, ParameterizedType parameterizedType) {
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (i >= 0 && i < actualTypeArguments.length) {
            Type type = actualTypeArguments[i];
            return type instanceof WildcardType ? ((WildcardType) type).getUpperBounds()[0] : type;
        }
        StringBuilder m16 = AbstractC0001.m16(i, "Index ", " not in range [0,");
        m16.append(actualTypeArguments.length);
        m16.append(") for ");
        m16.append(parameterizedType);
        throw new IllegalArgumentException(m16.toString());
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static IllegalArgumentException m7969(Method method, Exception exc, int i, String str, Object... objArr) {
        return m7974(method, exc, str + " (" + AbstractC3800.f14719.mo7981(i, method) + ")", objArr);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static Class m7970(Type type) {
        Objects.requireNonNull(type, "type == null");
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType instanceof Class) {
                return (Class) rawType;
            }
            throw new IllegalArgumentException();
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance((Class<?>) m7970(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return m7970(((WildcardType) type).getUpperBounds()[0]);
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + type.getClass().getName());
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static void m7971(Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        }
        if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        }
        if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Object m7972(InterfaceC3801 interfaceC3801, InterfaceC2136 interfaceC2136) {
        C4030 c4030 = new C4030(1, ⁱˊ.ˈٴ(interfaceC2136));
        c4030.m8206();
        c4030.m8211(new C3794(interfaceC3801, 0));
        interfaceC3801.mo7978(new C3787(c4030, 0));
        return c4030.m8209();
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static String m7973(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static IllegalArgumentException m7974(Method method, Exception exc, String str, Object... objArr) {
        StringBuilder m3017 = AbstractC0844.m3017(String.format(str, objArr), "\n    for method ");
        m3017.append(method.getDeclaringClass().getSimpleName());
        m3017.append(".");
        m3017.append(method.getName());
        return new IllegalArgumentException(m3017.toString(), exc);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static Type m7975(Type type, Class cls, Class cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i = 0; i < length; i++) {
                Class<?> cls3 = interfaces[i];
                if (cls3 == cls2) {
                    return cls.getGenericInterfaces()[i];
                }
                if (cls2.isAssignableFrom(cls3)) {
                    return m7975(cls.getGenericInterfaces()[i], interfaces[i], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<?> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return m7975(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    /* renamed from: ﹳٴ */
    public abstract void mo7958(C3813 c3813, Object obj);
}
