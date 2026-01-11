package j$.util.stream;

import java.util.function.DoublePredicate;

/* loaded from: classes2.dex */
public final class N3 extends AbstractC5476e2 {
    public final boolean b;

    public N3(D2 d2, InterfaceC5511l2 interfaceC5511l2) {
        super(interfaceC5511l2);
        this.b = true;
    }

    @Override // j$.util.stream.InterfaceC5496i2, j$.util.stream.InterfaceC5511l2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        if (this.b) {
            DoublePredicate doublePredicate = null;
            doublePredicate.test(d);
            throw null;
        }
    }

    @Override // j$.util.stream.AbstractC5476e2, j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        this.a.c(-1L);
    }

    @Override // j$.util.stream.AbstractC5476e2, j$.util.stream.InterfaceC5511l2
    public final boolean e() {
        return !this.b || this.a.e();
    }
}
