package p081;

/* renamed from: ʿˈ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1716 extends C1718 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final C1716 f7014 = new C1718(1, 0, 1);

    @Override // p081.C1718
    public final boolean equals(Object obj) {
        if (!(obj instanceof C1716)) {
            return false;
        }
        if (isEmpty() && ((C1716) obj).isEmpty()) {
            return true;
        }
        C1716 c1716 = (C1716) obj;
        return this.f7020 == c1716.f7020 && this.f7021 == c1716.f7021;
    }

    @Override // p081.C1718
    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.f7020 * 31) + this.f7021;
    }

    @Override // p081.C1718
    public final boolean isEmpty() {
        return this.f7020 > this.f7021;
    }

    @Override // p081.C1718
    public final String toString() {
        return this.f7020 + ".." + this.f7021;
    }
}
