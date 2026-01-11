package p013;

import java.io.Serializable;
import p152.AbstractC2444;

/* renamed from: ʻᵢ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0909 implements Serializable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f3833;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f3834;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f3835;

    public C0909(Object obj, Object obj2, Object obj3) {
        this.f3834 = obj;
        this.f3835 = obj2;
        this.f3833 = obj3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0909)) {
            return false;
        }
        C0909 c0909 = (C0909) obj;
        return AbstractC2444.m5562(this.f3834, c0909.f3834) && AbstractC2444.m5562(this.f3835, c0909.f3835) && AbstractC2444.m5562(this.f3833, c0909.f3833);
    }

    public final int hashCode() {
        Object obj = this.f3834;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.f3835;
        int hashCode2 = (hashCode + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Object obj3 = this.f3833;
        return hashCode2 + (obj3 != null ? obj3.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.f3834 + ", " + this.f3835 + ", " + this.f3833 + ')';
    }
}
