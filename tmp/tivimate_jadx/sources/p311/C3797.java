package p311;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

/* renamed from: ᐧᵢ.ʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3797 implements WildcardType {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Type f14714;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Type f14715;

    public C3797(Type[] typeArr, Type[] typeArr2) {
        if (typeArr2.length > 1) {
            throw new IllegalArgumentException();
        }
        if (typeArr.length != 1) {
            throw new IllegalArgumentException();
        }
        if (typeArr2.length != 1) {
            typeArr[0].getClass();
            AbstractC3798.m7963(typeArr[0]);
            this.f14715 = null;
            this.f14714 = typeArr[0];
            return;
        }
        typeArr2[0].getClass();
        AbstractC3798.m7963(typeArr2[0]);
        if (typeArr[0] != Object.class) {
            throw new IllegalArgumentException();
        }
        this.f14715 = typeArr2[0];
        this.f14714 = Object.class;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof WildcardType) && AbstractC3798.m7966(this, (WildcardType) obj);
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getLowerBounds() {
        Type type = this.f14715;
        return type != null ? new Type[]{type} : AbstractC3798.f14717;
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getUpperBounds() {
        return new Type[]{this.f14714};
    }

    public final int hashCode() {
        Type type = this.f14715;
        return (type != null ? type.hashCode() + 31 : 1) ^ (this.f14714.hashCode() + 31);
    }

    public final String toString() {
        Type type = this.f14715;
        if (type != null) {
            return "? super " + AbstractC3798.m7973(type);
        }
        Type type2 = this.f14714;
        if (type2 == Object.class) {
            return "?";
        }
        return "? extends " + AbstractC3798.m7973(type2);
    }
}
