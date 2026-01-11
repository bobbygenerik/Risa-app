package p300;

/* renamed from: ᐧʿ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3699 extends Number implements Comparable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f14445;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        int i = this.f14445;
        int i2 = ((C3699) obj).f14445;
        if (i == i2) {
            return 0;
        }
        return i < i2 ? -1 : 1;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return this.f14445;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C3699) && this.f14445 == ((C3699) obj).f14445;
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return this.f14445;
    }

    public final int hashCode() {
        return this.f14445;
    }

    @Override // java.lang.Number
    public final int intValue() {
        return this.f14445;
    }

    @Override // java.lang.Number
    public final long longValue() {
        return this.f14445;
    }

    public final String toString() {
        return String.valueOf(this.f14445);
    }
}
