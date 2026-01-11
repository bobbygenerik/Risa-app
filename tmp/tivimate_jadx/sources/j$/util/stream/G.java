package j$.util.stream;

import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class G extends I implements InterfaceC5506k2 {
    public static final D c;
    public static final D d;

    static {
        Z2 z2 = Z2.LONG_VALUE;
        C5523o c5523o = new C5523o(6);
        C5523o c5523o2 = new C5523o(7);
        j$.util.C c2 = j$.util.C.c;
        c = new D(true, z2, c2, c5523o, c5523o2);
        d = new D(false, z2, c2, new C5523o(6), new C5523o(7));
    }

    @Override // j$.util.stream.I, j$.util.stream.InterfaceC5511l2
    public final void accept(long j) {
        n(Long.valueOf(j));
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.util.function.a.f(this, longConsumer);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return new j$.util.C(((Long) this.b).longValue());
        }
        return null;
    }
}
