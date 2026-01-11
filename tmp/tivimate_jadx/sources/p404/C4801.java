package p404;

import j$.util.Objects;
import p071.C1631;

/* renamed from: ﹳʽ.ᵎⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4801 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1631 f18059;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Class f18060;

    public C4801(Class cls, C1631 c1631) {
        this.f18060 = cls;
        this.f18059 = c1631;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C4801)) {
            return false;
        }
        C4801 c4801 = (C4801) obj;
        return c4801.f18060.equals(this.f18060) && c4801.f18059.equals(this.f18059);
    }

    public final int hashCode() {
        return Objects.hash(this.f18060, this.f18059);
    }

    public final String toString() {
        return this.f18060.getSimpleName() + ", object identifier: " + this.f18059;
    }
}
