package p300;

/* renamed from: ᐧʿ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3698 extends Number implements Comparable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public long f14444;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        long j = this.f14444;
        long j2 = ((C3698) obj).f14444;
        if (j == j2) {
            return 0;
        }
        return j < j2 ? -1 : 1;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return this.f14444;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C3698) && this.f14444 == ((C3698) obj).f14444;
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return (float) this.f14444;
    }

    public final int hashCode() {
        long j = this.f14444;
        return (int) (j ^ (j >>> 32));
    }

    @Override // java.lang.Number
    public final int intValue() {
        return (int) this.f14444;
    }

    @Override // java.lang.Number
    public final long longValue() {
        return this.f14444;
    }

    public final String toString() {
        return String.valueOf(this.f14444);
    }
}
