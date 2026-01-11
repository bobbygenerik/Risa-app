package j$.util.stream;

import j$.util.C5585x;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.a0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5454a0 extends AbstractC5453a implements IntStream {
    public static j$.util.X T0(Spliterator spliterator) {
        if (spliterator instanceof j$.util.X) {
            return (j$.util.X) spliterator;
        }
        if (!G3.a) {
            throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
        }
        G3.a(AbstractC5453a.class, "using IntStream.adapt(Spliterator<Integer> s)");
        throw null;
    }

    @Override // j$.util.stream.AbstractC5559v1
    public final InterfaceC5573y0 A0(long j, IntFunction intFunction) {
        return AbstractC5559v1.s0(j);
    }

    @Override // j$.util.stream.AbstractC5453a
    public final G0 J0(AbstractC5453a abstractC5453a, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC5559v1.d0(abstractC5453a, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC5453a
    public final boolean K0(Spliterator spliterator, InterfaceC5511l2 interfaceC5511l2) {
        IntConsumer h;
        boolean e;
        j$.util.X T0 = T0(spliterator);
        if (interfaceC5511l2 instanceof IntConsumer) {
            h = (IntConsumer) interfaceC5511l2;
        } else {
            if (G3.a) {
                G3.a(AbstractC5453a.class, "using IntStream.adapt(Sink<Integer> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC5511l2);
            h = new j$.util.H(interfaceC5511l2, 1);
        }
        do {
            e = interfaceC5511l2.e();
            if (e) {
                break;
            }
        } while (T0.tryAdvance(h));
        return e;
    }

    @Override // j$.util.stream.AbstractC5453a
    public final Z2 L0() {
        return Z2.INT_VALUE;
    }

    @Override // j$.util.stream.AbstractC5453a
    public final Spliterator S0(AbstractC5453a abstractC5453a, Supplier supplier, boolean z) {
        return new AbstractC5457a3(abstractC5453a, supplier, z);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream a() {
        int i = Y3.a;
        Objects.requireNonNull(null);
        return new E2(this, Y3.a, 1);
    }

    @Override // j$.util.stream.IntStream
    public final C asDoubleStream() {
        return new r(this, 0, 3);
    }

    @Override // j$.util.stream.IntStream
    public final InterfaceC5514m0 asLongStream() {
        return new C5547t(this, 0, 1);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.A average() {
        long j = ((long[]) collect(new C5523o(19), new C5523o(20), new C5523o(21)))[0];
        return j > 0 ? new j$.util.A(r0[1] / j) : j$.util.A.c;
    }

    @Override // j$.util.stream.IntStream
    public final IntStream b() {
        Objects.requireNonNull(null);
        return new C5542s(this, Y2.t, 3);
    }

    @Override // j$.util.stream.IntStream
    public final Stream boxed() {
        return new C5533q(this, 0, new C5523o(13), 1);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream c() {
        int i = Y3.a;
        Objects.requireNonNull(null);
        return new E2(this, Y3.b, 2);
    }

    @Override // j$.util.stream.IntStream
    public final Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C5518n c5518n = new C5518n(biConsumer, 1);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objIntConsumer);
        Objects.requireNonNull(c5518n);
        return H0(new A1(Z2.INT_VALUE, c5518n, objIntConsumer, supplier, 4));
    }

    @Override // j$.util.stream.IntStream
    public final long count() {
        return ((Long) H0(new C1(3))).longValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC5471d2) boxed()).distinct().mapToInt(new C5523o(12));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream e() {
        Objects.requireNonNull(null);
        return new C5542s(this, Y2.p | Y2.n, 1);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.B findAny() {
        return (j$.util.B) H0(F.d);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.B findFirst() {
        return (j$.util.B) H0(F.c);
    }

    public void forEach(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        H0(new M(intConsumer, false));
    }

    public void forEachOrdered(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        H0(new M(intConsumer, true));
    }

    @Override // j$.util.stream.IntStream
    public final C g() {
        Objects.requireNonNull(null);
        return new r(this, Y2.p | Y2.n, 4);
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final j$.util.K iterator() {
        j$.util.X spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.g0(spliterator);
    }

    @Override // j$.util.stream.IntStream
    public final InterfaceC5514m0 l() {
        Objects.requireNonNull(null);
        return new C5547t(this, Y2.p | Y2.n, 2);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return AbstractC5559v1.x0(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.IntStream
    public final Stream mapToObj(IntFunction intFunction) {
        Objects.requireNonNull(intFunction);
        return new C5533q(this, Y2.p | Y2.n, intFunction, 1);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.B max() {
        return reduce(new C5523o(18));
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.B min() {
        return reduce(new C5523o(14));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream peek(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        return new U(this, intConsumer);
    }

    @Override // j$.util.stream.IntStream
    public final boolean q() {
        return ((Boolean) H0(AbstractC5559v1.w0(EnumC5548t0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final int reduce(int i, IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return ((Integer) H0(new L1(Z2.INT_VALUE, intBinaryOperator, i))).intValue();
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.B reduce(IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return (j$.util.B) H0(new C5574y1(Z2.INT_VALUE, intBinaryOperator, 3));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream s(K k) {
        Objects.requireNonNull(k);
        return new U(this, Y2.p | Y2.n | Y2.t, k, 1);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC5559v1.x0(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream sorted() {
        return new E2(this, Y2.q | Y2.o, 0);
    }

    @Override // j$.util.stream.AbstractC5453a, j$.util.stream.InterfaceC5483g
    public final j$.util.X spliterator() {
        return T0(super.spliterator());
    }

    @Override // j$.util.stream.IntStream
    public final int sum() {
        return reduce(0, new C5523o(17));
    }

    @Override // j$.util.stream.IntStream
    public final C5585x summaryStatistics() {
        return (C5585x) collect(new j$.time.f(14), new C5523o(15), new C5523o(16));
    }

    @Override // j$.util.stream.IntStream
    public final boolean t() {
        return ((Boolean) H0(AbstractC5559v1.w0(EnumC5548t0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC5559v1.p0((C0) I0(new C5523o(11))).b();
    }

    @Override // j$.util.stream.IntStream
    public final boolean y() {
        return ((Boolean) H0(AbstractC5559v1.w0(EnumC5548t0.ANY))).booleanValue();
    }
}
