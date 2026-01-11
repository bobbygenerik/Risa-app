package p404;

import j$.util.Objects;

/* renamed from: ﹳʽ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4798 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Class f18047;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Class f18048;

    public C4798(Class cls, Class cls2) {
        this.f18048 = cls;
        this.f18047 = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C4798)) {
            return false;
        }
        C4798 c4798 = (C4798) obj;
        return c4798.f18048.equals(this.f18048) && c4798.f18047.equals(this.f18047);
    }

    public final int hashCode() {
        return Objects.hash(this.f18048, this.f18047);
    }

    public final String toString() {
        return this.f18048.getSimpleName() + " with primitive type: " + this.f18047.getSimpleName();
    }
}
