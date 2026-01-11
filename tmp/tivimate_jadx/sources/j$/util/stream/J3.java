package j$.util.stream;

import java.util.function.IntPredicate;

/* loaded from: classes2.dex */
public final class J3 extends AbstractC5481f2 {
    public final boolean b;

    public J3(E2 e2, InterfaceC5511l2 interfaceC5511l2) {
        super(interfaceC5511l2);
        this.b = true;
    }

    @Override // j$.util.stream.InterfaceC5501j2, j$.util.stream.InterfaceC5511l2
    public final void accept(int i) {
        if (this.b) {
            IntPredicate intPredicate = null;
            intPredicate.test(i);
            throw null;
        }
    }

    @Override // j$.util.stream.AbstractC5481f2, j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        this.a.c(-1L);
    }

    @Override // j$.util.stream.AbstractC5481f2, j$.util.stream.InterfaceC5511l2
    public final boolean e() {
        return !this.b || this.a.e();
    }
}
