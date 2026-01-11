package j$.util.stream;

import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class F extends I implements InterfaceC5501j2 {
    public static final D c;
    public static final D d;

    static {
        Z2 z2 = Z2.INT_VALUE;
        C5523o c5523o = new C5523o(4);
        C5523o c5523o2 = new C5523o(5);
        j$.util.B b = j$.util.B.c;
        c = new D(true, z2, b, c5523o, c5523o2);
        d = new D(false, z2, b, new C5523o(4), new C5523o(5));
    }

    @Override // j$.util.stream.I, j$.util.stream.InterfaceC5511l2
    public final void accept(int i) {
        n(Integer.valueOf(i));
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.a.e(this, intConsumer);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return new j$.util.B(((Integer) this.b).intValue());
        }
        return null;
    }
}
