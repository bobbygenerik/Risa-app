package p356;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Set;
import p052.AbstractC1414;

/* renamed from: ᵔˈ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4341 implements ParameterizedType {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Type[] f16156;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Type f16157;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Type f16158;

    public C4341(Type type, Type type2, Type... typeArr) {
        if (type2 instanceof Class) {
            Class<?> enclosingClass = ((Class) type2).getEnclosingClass();
            if (type != null) {
                if (enclosingClass == null || AbstractC1414.m4154(type) != enclosingClass) {
                    throw new IllegalArgumentException("unexpected owner type for " + type2 + ": " + type);
                }
            } else if (enclosingClass != null) {
                throw new IllegalArgumentException("unexpected owner type for " + type2 + ": null");
            }
        }
        this.f16157 = type == null ? null : AbstractC4343.m8810(type);
        this.f16158 = AbstractC4343.m8810(type2);
        this.f16156 = (Type[]) typeArr.clone();
        int i = 0;
        while (true) {
            Type[] typeArr2 = this.f16156;
            if (i >= typeArr2.length) {
                return;
            }
            typeArr2[i].getClass();
            AbstractC4343.m8809(this.f16156[i]);
            Type[] typeArr3 = this.f16156;
            typeArr3[i] = AbstractC4343.m8810(typeArr3[i]);
            i++;
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ParameterizedType) && AbstractC1414.m4157(this, (ParameterizedType) obj);
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type[] getActualTypeArguments() {
        return (Type[]) this.f16156.clone();
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getOwnerType() {
        return this.f16157;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getRawType() {
        return this.f16158;
    }

    public final int hashCode() {
        int hashCode = Arrays.hashCode(this.f16156) ^ this.f16158.hashCode();
        Set set = AbstractC4343.f16164;
        Type type = this.f16157;
        return hashCode ^ (type != null ? type.hashCode() : 0);
    }

    public final String toString() {
        Type[] typeArr = this.f16156;
        StringBuilder sb = new StringBuilder((typeArr.length + 1) * 30);
        sb.append(AbstractC4343.m8802(this.f16158));
        if (typeArr.length == 0) {
            return sb.toString();
        }
        sb.append("<");
        sb.append(AbstractC4343.m8802(typeArr[0]));
        for (int i = 1; i < typeArr.length; i++) {
            sb.append(", ");
            sb.append(AbstractC4343.m8802(typeArr[i]));
        }
        sb.append(">");
        return sb.toString();
    }
}
