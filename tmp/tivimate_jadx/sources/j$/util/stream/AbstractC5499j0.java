package j$.util.stream;

import j$.util.C5450p;
import j$.util.C5587z;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.j0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5499j0 extends AbstractC5453a implements InterfaceC5514m0 {
    public static j$.util.a0 T0(Spliterator spliterator) {
        if (spliterator instanceof j$.util.a0) {
            return (j$.util.a0) spliterator;
        }
        if (!G3.a) {
            throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
        }
        G3.a(AbstractC5453a.class, "using LongStream.adapt(Spliterator<Long> s)");
        throw null;
    }

    @Override // j$.util.stream.AbstractC5559v1
    public final InterfaceC5573y0 A0(long j, IntFunction intFunction) {
        return AbstractC5559v1.t0(j);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final IntStream B() {
        Objects.requireNonNull(null);
        return new C5542s(this, Y2.p | Y2.n, 4);
    }

    @Override // j$.util.stream.AbstractC5453a
    public final G0 J0(AbstractC5453a abstractC5453a, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC5559v1.e0(abstractC5453a, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC5453a
    public final boolean K0(Spliterator spliterator, InterfaceC5511l2 interfaceC5511l2) {
        LongConsumer l;
        boolean e;
        j$.util.a0 T0 = T0(spliterator);
        if (interfaceC5511l2 instanceof LongConsumer) {
            l = (LongConsumer) interfaceC5511l2;
        } else {
            if (G3.a) {
                G3.a(AbstractC5453a.class, "using LongStream.adapt(Sink<Long> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC5511l2);
            l = new j$.util.L(interfaceC5511l2, 1);
        }
        do {
            e = interfaceC5511l2.e();
            if (e) {
                break;
            }
        } while (T0.tryAdvance(l));
        return e;
    }

    @Override // j$.util.stream.AbstractC5453a
    public final Z2 L0() {
        return Z2.LONG_VALUE;
    }

    @Override // j$.util.stream.AbstractC5453a
    public final Spliterator S0(AbstractC5453a abstractC5453a, Supplier supplier, boolean z) {
        return new AbstractC5457a3(abstractC5453a, supplier, z);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final InterfaceC5514m0 a() {
        int i = Y3.a;
        Objects.requireNonNull(null);
        return new F2(this, Y3.a, 1);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final C asDoubleStream() {
        return new r(this, Y2.n, 5);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final j$.util.A average() {
        long j = ((long[]) collect(new C5523o(28), new C5523o(29), new C5459b0(0)))[0];
        return j > 0 ? new j$.util.A(r0[1] / j) : j$.util.A.c;
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final InterfaceC5514m0 b() {
        Objects.requireNonNull(null);
        return new C5547t(this, Y2.t, 5);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final Stream boxed() {
        return new C5533q(this, 0, new C5523o(27), 2);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final InterfaceC5514m0 c() {
        int i = Y3.a;
        Objects.requireNonNull(null);
        return new F2(this, Y3.b, 2);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C5518n c5518n = new C5518n(biConsumer, 2);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objLongConsumer);
        Objects.requireNonNull(c5518n);
        return H0(new A1(Z2.LONG_VALUE, c5518n, objLongConsumer, supplier, 0));
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final long count() {
        return ((Long) H0(new C1(0))).longValue();
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final InterfaceC5514m0 d(C5450p c5450p) {
        Objects.requireNonNull(c5450p);
        return new C5479f0(this, Y2.p | Y2.n | Y2.t, c5450p, 0);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final InterfaceC5514m0 distinct() {
        return ((AbstractC5471d2) boxed()).distinct().mapToLong(new C5523o(24));
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final InterfaceC5514m0 e() {
        Objects.requireNonNull(null);
        return new C5547t(this, Y2.p | Y2.n, 3);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final j$.util.C findAny() {
        return (j$.util.C) H0(G.d);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final j$.util.C findFirst() {
        return (j$.util.C) H0(G.c);
    }

    public void forEach(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        H0(new N(longConsumer, false));
    }

    public void forEachOrdered(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        H0(new N(longConsumer, true));
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final j$.util.O iterator() {
        j$.util.a0 spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.h0(spliterator);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final C k() {
        Objects.requireNonNull(null);
        return new r(this, Y2.p | Y2.n, 6);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final InterfaceC5514m0 limit(long j) {
        if (j >= 0) {
            return AbstractC5559v1.z0(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final Stream mapToObj(LongFunction longFunction) {
        Objects.requireNonNull(longFunction);
        return new C5533q(this, Y2.p | Y2.n, longFunction, 2);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final j$.util.C max() {
        return reduce(new C5459b0(1));
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final j$.util.C min() {
        return reduce(new C5523o(23));
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final boolean n() {
        return ((Boolean) H0(AbstractC5559v1.y0(EnumC5548t0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final InterfaceC5514m0 peek(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        return new C5479f0(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final boolean r() {
        return ((Boolean) H0(AbstractC5559v1.y0(EnumC5548t0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final long reduce(long j, LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return ((Long) H0(new C5564w1(Z2.LONG_VALUE, longBinaryOperator, j))).longValue();
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final j$.util.C reduce(LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return (j$.util.C) H0(new C5574y1(Z2.LONG_VALUE, longBinaryOperator, 0));
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final InterfaceC5514m0 skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC5559v1.z0(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final InterfaceC5514m0 sorted() {
        return new F2(this, Y2.q | Y2.o, 0);
    }

    @Override // j$.util.stream.AbstractC5453a, j$.util.stream.InterfaceC5483g
    public final j$.util.a0 spliterator() {
        return T0(super.spliterator());
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final long sum() {
        return reduce(0L, new C5459b0(2));
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final C5587z summaryStatistics() {
        return (C5587z) collect(new j$.time.f(15), new C5523o(22), new C5523o(25));
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final long[] toArray() {
        return (long[]) AbstractC5559v1.q0((E0) I0(new C5523o(26))).b();
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final boolean x() {
        return ((Boolean) H0(AbstractC5559v1.y0(EnumC5548t0.ALL))).booleanValue();
    }
}
