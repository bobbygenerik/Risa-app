package p311;

import j$.util.Objects;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

/* renamed from: ᐧᵢ.ˉـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3807 implements ParameterizedType {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Type[] f14729;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Type f14730;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Type f14731;

    public C3807(Type type, Type type2, Type... typeArr) {
        if (type2 instanceof Class) {
            if ((type == null) != (((Class) type2).getEnclosingClass() == null)) {
                throw new IllegalArgumentException();
            }
        }
        for (Type type3 : typeArr) {
            Objects.requireNonNull(type3, "typeArgument == null");
            AbstractC3798.m7963(type3);
        }
        this.f14730 = type;
        this.f14731 = type2;
        this.f14729 = (Type[]) typeArr.clone();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ParameterizedType) && AbstractC3798.m7966(this, (ParameterizedType) obj);
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type[] getActualTypeArguments() {
        return (Type[]) this.f14729.clone();
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getOwnerType() {
        return this.f14730;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getRawType() {
        return this.f14731;
    }

    public final int hashCode() {
        int hashCode = Arrays.hashCode(this.f14729) ^ this.f14731.hashCode();
        Type type = this.f14730;
        return hashCode ^ (type != null ? type.hashCode() : 0);
    }

    public final String toString() {
        Type[] typeArr = this.f14729;
        int length = typeArr.length;
        Type type = this.f14731;
        if (length == 0) {
            return AbstractC3798.m7973(type);
        }
        StringBuilder sb = new StringBuilder((typeArr.length + 1) * 30);
        sb.append(AbstractC3798.m7973(type));
        sb.append("<");
        sb.append(AbstractC3798.m7973(typeArr[0]));
        for (int i = 1; i < typeArr.length; i++) {
            sb.append(", ");
            sb.append(AbstractC3798.m7973(typeArr[i]));
        }
        sb.append(">");
        return sb.toString();
    }
}
