package p311;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

/* renamed from: ᐧᵢ.ᴵˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3822 implements GenericArrayType {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Type f14816;

    public C3822(Type type) {
        this.f14816 = type;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof GenericArrayType) && AbstractC3798.m7966(this, (GenericArrayType) obj);
    }

    @Override // java.lang.reflect.GenericArrayType
    public final Type getGenericComponentType() {
        return this.f14816;
    }

    public final int hashCode() {
        return this.f14816.hashCode();
    }

    public final String toString() {
        return AbstractC3798.m7973(this.f14816) + "[]";
    }
}
