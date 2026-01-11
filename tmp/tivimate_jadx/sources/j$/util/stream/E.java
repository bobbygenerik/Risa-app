package j$.util.stream;

import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class E extends I implements InterfaceC5496i2 {
    public static final D c;
    public static final D d;

    static {
        Z2 z2 = Z2.DOUBLE_VALUE;
        C5523o c5523o = new C5523o(2);
        C5523o c5523o2 = new C5523o(3);
        j$.util.A a = j$.util.A.c;
        c = new D(true, z2, a, c5523o, c5523o2);
        d = new D(false, z2, a, new C5523o(2), new C5523o(3));
    }

    @Override // j$.util.stream.I, j$.util.stream.InterfaceC5511l2, java.util.function.DoubleConsumer
    public final void accept(double d2) {
        n(Double.valueOf(d2));
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.util.function.a.d(this, doubleConsumer);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return new j$.util.A(((Double) this.b).doubleValue());
        }
        return null;
    }
}
