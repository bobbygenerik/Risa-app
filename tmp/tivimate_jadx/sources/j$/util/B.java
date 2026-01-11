package j$.util;

/* loaded from: classes2.dex */
public final class B {
    public static final B c = new B();
    public final boolean a;
    public final int b;

    public B() {
        this.a = false;
        this.b = 0;
    }

    public B(int i) {
        this.a = true;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof B)) {
            return false;
        }
        B b = (B) obj;
        boolean z = b.a;
        boolean z2 = this.a;
        return (z2 && z) ? this.b == b.b : z2 == z;
    }

    public final int hashCode() {
        if (this.a) {
            return this.b;
        }
        return 0;
    }

    public final String toString() {
        if (!this.a) {
            return "OptionalInt.empty";
        }
        return "OptionalInt[" + this.b + "]";
    }
}
