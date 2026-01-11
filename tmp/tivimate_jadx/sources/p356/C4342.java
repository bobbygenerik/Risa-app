package p356;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import p052.AbstractC1414;

/* renamed from: ᵔˈ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4342 implements WildcardType {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Type f16159;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Type f16160;

    public C4342(Type[] typeArr, Type[] typeArr2) {
        if (typeArr2.length > 1) {
            throw new IllegalArgumentException();
        }
        if (typeArr.length != 1) {
            throw new IllegalArgumentException();
        }
        if (typeArr2.length != 1) {
            typeArr[0].getClass();
            AbstractC4343.m8809(typeArr[0]);
            this.f16160 = null;
            this.f16159 = AbstractC4343.m8810(typeArr[0]);
            return;
        }
        typeArr2[0].getClass();
        AbstractC4343.m8809(typeArr2[0]);
        if (typeArr[0] != Object.class) {
            throw new IllegalArgumentException();
        }
        this.f16160 = AbstractC4343.m8810(typeArr2[0]);
        this.f16159 = Object.class;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof WildcardType) && AbstractC1414.m4157(this, (WildcardType) obj);
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getLowerBounds() {
        Type type = this.f16160;
        return type != null ? new Type[]{type} : AbstractC4343.f16163;
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getUpperBounds() {
        return new Type[]{this.f16159};
    }

    public final int hashCode() {
        Type type = this.f16160;
        return (type != null ? type.hashCode() + 31 : 1) ^ (this.f16159.hashCode() + 31);
    }

    public final String toString() {
        Type type = this.f16160;
        if (type != null) {
            return "? super " + AbstractC4343.m8802(type);
        }
        Type type2 = this.f16159;
        if (type2 == Object.class) {
            return "?";
        }
        return "? extends " + AbstractC4343.m8802(type2);
    }
}
