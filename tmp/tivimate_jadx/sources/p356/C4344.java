package p356;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import p052.AbstractC1414;

/* renamed from: ᵔˈ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4344 implements GenericArrayType {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Type f16165;

    public C4344(Type type) {
        this.f16165 = AbstractC4343.m8810(type);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof GenericArrayType) && AbstractC1414.m4157(this, (GenericArrayType) obj);
    }

    @Override // java.lang.reflect.GenericArrayType
    public final Type getGenericComponentType() {
        return this.f16165;
    }

    public final int hashCode() {
        return this.f16165.hashCode();
    }

    public final String toString() {
        return AbstractC4343.m8802(this.f16165) + "[]";
    }
}
