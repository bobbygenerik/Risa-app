package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class D implements E3 {
    public final int a;
    public final Object b;
    public final Predicate c;
    public final Supplier d;

    public D(boolean z, Z2 z2, Object obj, Predicate predicate, Supplier supplier) {
        this.a = (z ? 0 : Y2.r) | Y2.u;
        this.b = obj;
        this.c = predicate;
        this.d = supplier;
    }

    @Override // j$.util.stream.E3
    public final Object f(AbstractC5453a abstractC5453a, Spliterator spliterator) {
        F3 f3 = (F3) this.d.get();
        abstractC5453a.E0(spliterator, f3);
        Object obj = f3.get();
        return obj != null ? obj : this.b;
    }

    @Override // j$.util.stream.E3
    public final Object j(AbstractC5559v1 abstractC5559v1, Spliterator spliterator) {
        AbstractC5453a abstractC5453a = (AbstractC5453a) abstractC5559v1;
        return new J(this, Y2.ORDERED.q(abstractC5453a.m), abstractC5453a, spliterator).invoke();
    }

    @Override // j$.util.stream.E3
    public final int w() {
        return this.a;
    }
}
