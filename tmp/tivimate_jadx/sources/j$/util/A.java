package j$.util;

/* loaded from: classes2.dex */
public final class A {
    public static final A c = new A();
    public final boolean a;
    public final double b;

    public A() {
        this.a = false;
        this.b = Double.NaN;
    }

    public A(double d) {
        this.a = true;
        this.b = d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof A)) {
            return false;
        }
        A a = (A) obj;
        boolean z = a.a;
        boolean z2 = this.a;
        return (z2 && z) ? Double.compare(this.b, a.b) == 0 : z2 == z;
    }

    public final int hashCode() {
        if (!this.a) {
            return 0;
        }
        long doubleToLongBits = Double.doubleToLongBits(this.b);
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }

    public final String toString() {
        if (!this.a) {
            return "OptionalDouble.empty";
        }
        return "OptionalDouble[" + this.b + "]";
    }
}
