package p013;

import java.io.Serializable;
import p152.AbstractC2444;

/* renamed from: ʻᵢ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0913 implements Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f3836;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f3837;

    public C0913(Object obj, Object obj2) {
        this.f3836 = obj;
        this.f3837 = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0913)) {
            return false;
        }
        C0913 c0913 = (C0913) obj;
        return AbstractC2444.m5562(this.f3836, c0913.f3836) && AbstractC2444.m5562(this.f3837, c0913.f3837);
    }

    public final int hashCode() {
        Object obj = this.f3836;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.f3837;
        return hashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.f3836 + ", " + this.f3837 + ')';
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object m3186() {
        return this.f3837;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object m3187() {
        return this.f3836;
    }
}
