package p404;

import j$.util.Objects;

/* renamed from: ﹳʽ.ٴʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4795 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Class f18042;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Class f18043;

    public C4795(Class cls, Class cls2) {
        this.f18043 = cls;
        this.f18042 = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C4795)) {
            return false;
        }
        C4795 c4795 = (C4795) obj;
        return c4795.f18043.equals(this.f18043) && c4795.f18042.equals(this.f18042);
    }

    public final int hashCode() {
        return Objects.hash(this.f18043, this.f18042);
    }

    public final String toString() {
        return this.f18043.getSimpleName() + " with serialization type: " + this.f18042.getSimpleName();
    }
}
