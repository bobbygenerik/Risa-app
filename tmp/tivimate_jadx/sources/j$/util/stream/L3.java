package j$.util.stream;

import java.util.function.LongPredicate;

/* loaded from: classes2.dex */
public final class L3 extends AbstractC5486g2 {
    public final boolean b;

    public L3(F2 f2, InterfaceC5511l2 interfaceC5511l2) {
        super(interfaceC5511l2);
        this.b = true;
    }

    @Override // j$.util.stream.InterfaceC5506k2, j$.util.stream.InterfaceC5511l2
    public final void accept(long j) {
        if (this.b) {
            LongPredicate longPredicate = null;
            longPredicate.test(j);
            throw null;
        }
    }

    @Override // j$.util.stream.AbstractC5486g2, j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        this.a.c(-1L);
    }

    @Override // j$.util.stream.AbstractC5486g2, j$.util.stream.InterfaceC5511l2
    public final boolean e() {
        return !this.b || this.a.e();
    }
}
