package p356;

import com.squareup.moshi.JsonDataException;
import j$.util.DesugarCollections;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import p052.AbstractC1413;

/* renamed from: ᵔˈ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4343 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Class f16161;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final Class f16162;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Set f16164 = Collections.EMPTY_SET;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Type[] f16163 = new Type[0];

    static {
        Class<?> cls;
        try {
            cls = Class.forName(getKotlinMetadataClassName());
        } catch (ClassNotFoundException unused) {
            cls = null;
        }
        f16162 = cls;
        f16161 = DefaultConstructorMarker.class;
        LinkedHashMap linkedHashMap = new LinkedHashMap(16);
        linkedHashMap.put(Boolean.TYPE, Boolean.class);
        linkedHashMap.put(Byte.TYPE, Byte.class);
        linkedHashMap.put(Character.TYPE, Character.class);
        linkedHashMap.put(Double.TYPE, Double.class);
        linkedHashMap.put(Float.TYPE, Float.class);
        linkedHashMap.put(Integer.TYPE, Integer.class);
        linkedHashMap.put(Long.TYPE, Long.class);
        linkedHashMap.put(Short.TYPE, Short.class);
        linkedHashMap.put(Void.TYPE, Void.class);
        DesugarCollections.unmodifiableMap(linkedHashMap);
    }

    private static String getKotlinMetadataClassName() {
        return "kotlin.Metadata";
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static String m8802(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static Type m8803(Type type, Class cls, Class cls2) {
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
                    return m8803(cls.getGenericInterfaces()[i], interfaces[i], cls2);
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
                    return m8803(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.squareup.moshi.JsonDataException, java.lang.RuntimeException] */
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static JsonDataException m8804(String str, String str2, AbstractC1413 abstractC1413) {
        String str3;
        String m4151 = abstractC1413.m4151();
        if (str2.equals(str)) {
            str3 = "Non-null value '" + str + "' was null at " + m4151;
        } else {
            str3 = "Non-null value '" + str + "' (JSON name '" + str2 + "') was null at " + m4151;
        }
        return new RuntimeException(str3);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static boolean m8805(Class cls) {
        String name = cls.getName();
        return name.startsWith("android.") || name.startsWith("androidx.") || name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("kotlin.") || name.startsWith("kotlinx.") || name.startsWith("scala.");
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.squareup.moshi.JsonDataException, java.lang.RuntimeException] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static JsonDataException m8806(String str, String str2, AbstractC1413 abstractC1413) {
        String str3;
        String m4151 = abstractC1413.m4151();
        if (str2.equals(str)) {
            str3 = "Required value '" + str + "' missing at " + m4151;
        } else {
            str3 = "Required value '" + str + "' (JSON name '" + str2 + "') missing at " + m4151;
        }
        return new RuntimeException(str3);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static void m8807(InvocationTargetException invocationTargetException) {
        Throwable targetException = invocationTargetException.getTargetException();
        if (targetException instanceof RuntimeException) {
            throw ((RuntimeException) targetException);
        }
        if (!(targetException instanceof Error)) {
            throw new RuntimeException(targetException);
        }
        throw ((Error) targetException);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static String m8808(Type type, Set set) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(type);
        if (set.isEmpty()) {
            str = " (with no annotations)";
        } else {
            str = " annotated " + set;
        }
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m8809(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException("Unexpected primitive " + type + ". Use the boxed type.");
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Type m8810(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new C4344(m8810(cls.getComponentType())) : cls;
        }
        if (type instanceof ParameterizedType) {
            if (type instanceof C4341) {
                return type;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new C4341(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            return type instanceof C4344 ? type : new C4344(((GenericArrayType) type).getGenericComponentType());
        }
        if (!(type instanceof WildcardType) || (type instanceof C4342)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        return new C4342(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static Type m8811(Type type, Class cls, Type type2, LinkedHashSet linkedHashSet) {
        TypeVariable typeVariable;
        do {
            int i = 0;
            if (!(type2 instanceof TypeVariable)) {
                if (type2 instanceof Class) {
                    Class cls2 = (Class) type2;
                    if (cls2.isArray()) {
                        Class<?> componentType = cls2.getComponentType();
                        Type m8811 = m8811(type, cls, componentType, linkedHashSet);
                        return componentType == m8811 ? cls2 : new C4344(m8811);
                    }
                }
                if (type2 instanceof GenericArrayType) {
                    GenericArrayType genericArrayType = (GenericArrayType) type2;
                    Type genericComponentType = genericArrayType.getGenericComponentType();
                    Type m88112 = m8811(type, cls, genericComponentType, linkedHashSet);
                    return genericComponentType == m88112 ? genericArrayType : new C4344(m88112);
                }
                if (type2 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type2;
                    Type ownerType = parameterizedType.getOwnerType();
                    Type m88113 = m8811(type, cls, ownerType, linkedHashSet);
                    boolean z = m88113 != ownerType;
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    int length = actualTypeArguments.length;
                    while (i < length) {
                        Type m88114 = m8811(type, cls, actualTypeArguments[i], linkedHashSet);
                        if (m88114 != actualTypeArguments[i]) {
                            if (!z) {
                                actualTypeArguments = (Type[]) actualTypeArguments.clone();
                                z = true;
                            }
                            actualTypeArguments[i] = m88114;
                        }
                        i++;
                    }
                    return z ? new C4341(m88113, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
                }
                boolean z2 = type2 instanceof WildcardType;
                Type type3 = type2;
                if (z2) {
                    WildcardType wildcardType = (WildcardType) type2;
                    Type[] lowerBounds = wildcardType.getLowerBounds();
                    Type[] upperBounds = wildcardType.getUpperBounds();
                    if (lowerBounds.length == 1) {
                        Type m88115 = m8811(type, cls, lowerBounds[0], linkedHashSet);
                        type3 = wildcardType;
                        if (m88115 != lowerBounds[0]) {
                            return new C4342(new Type[]{Object.class}, m88115 instanceof WildcardType ? ((WildcardType) m88115).getLowerBounds() : new Type[]{m88115});
                        }
                    } else {
                        type3 = wildcardType;
                        if (upperBounds.length == 1) {
                            Type m88116 = m8811(type, cls, upperBounds[0], linkedHashSet);
                            type3 = wildcardType;
                            if (m88116 != upperBounds[0]) {
                                return new C4342(m88116 instanceof WildcardType ? ((WildcardType) m88116).getUpperBounds() : new Type[]{m88116}, f16163);
                            }
                        }
                    }
                }
                return type3;
            }
            typeVariable = (TypeVariable) type2;
            if (linkedHashSet.contains(typeVariable)) {
                return type2;
            }
            linkedHashSet.add(typeVariable);
            GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
            Class cls3 = genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
            if (cls3 != null) {
                Type m8803 = m8803(type, cls, cls3);
                if (m8803 instanceof ParameterizedType) {
                    TypeVariable[] typeParameters = cls3.getTypeParameters();
                    while (i < typeParameters.length) {
                        if (typeVariable.equals(typeParameters[i])) {
                            type2 = ((ParameterizedType) m8803).getActualTypeArguments()[i];
                        } else {
                            i++;
                        }
                    }
                    throw new NoSuchElementException();
                }
            }
            type2 = typeVariable;
        } while (type2 != typeVariable);
        return type2;
    }
}
