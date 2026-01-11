package j$.util.stream;

import java.util.function.DoublePredicate;

/* loaded from: classes2.dex */
public final class O3 extends AbstractC5476e2 implements Q3 {
    public O3(D2 d2, InterfaceC5511l2 interfaceC5511l2, boolean z) {
        super(interfaceC5511l2);
    }

    @Override // j$.util.stream.InterfaceC5496i2, j$.util.stream.InterfaceC5511l2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        DoublePredicate doublePredicate = null;
        doublePredicate.test(d);
        throw null;
    }

    @Override // j$.util.stream.Q3
    public final long h() {
        return 0L;
    }
}
