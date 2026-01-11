package p238;

import j$.util.Objects;

/* renamed from: ˑٴ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3205 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f12256;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f12257;

    public C3205(Object obj, Object obj2) {
        this.f12257 = obj;
        this.f12256 = obj2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3205)) {
            return false;
        }
        C3205 c3205 = (C3205) obj;
        return Objects.equals(c3205.f12257, this.f12257) && Objects.equals(c3205.f12256, this.f12256);
    }

    public final int hashCode() {
        Object obj = this.f12257;
        int hashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f12256;
        return (obj2 != null ? obj2.hashCode() : 0) ^ hashCode;
    }

    public final String toString() {
        return "Pair{" + this.f12257 + " " + this.f12256 + "}";
    }
}
