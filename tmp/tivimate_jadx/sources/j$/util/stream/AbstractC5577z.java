package j$.util.stream;

import j$.util.C5450p;
import j$.util.C5584w;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.IntFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.z, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5577z extends AbstractC5453a implements C {
    public static j$.util.U T0(Spliterator spliterator) {
        if (spliterator instanceof j$.util.U) {
            return (j$.util.U) spliterator;
        }
        if (!G3.a) {
            throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
        }
        G3.a(AbstractC5453a.class, "using DoubleStream.adapt(Spliterator<Double> s)");
        throw null;
    }

    @Override // j$.util.stream.C
    public final IntStream A() {
        Objects.requireNonNull(null);
        return new C5542s(this, Y2.p | Y2.n, 0);
    }

    @Override // j$.util.stream.AbstractC5559v1
    public final InterfaceC5573y0 A0(long j, IntFunction intFunction) {
        return AbstractC5559v1.i0(j);
    }

    @Override // j$.util.stream.C
    public final boolean C() {
        return ((Boolean) H0(AbstractC5559v1.u0(EnumC5548t0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.AbstractC5453a
    public final G0 J0(AbstractC5453a abstractC5453a, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC5559v1.c0(abstractC5453a, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC5453a
    public final boolean K0(Spliterator spliterator, InterfaceC5511l2 interfaceC5511l2) {
        DoubleConsumer d;
        boolean e;
        j$.util.U T0 = T0(spliterator);
        if (interfaceC5511l2 instanceof DoubleConsumer) {
            d = (DoubleConsumer) interfaceC5511l2;
        } else {
            if (G3.a) {
                G3.a(AbstractC5453a.class, "using DoubleStream.adapt(Sink<Double> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC5511l2);
            d = new j$.util.D(interfaceC5511l2, 1);
        }
        do {
            e = interfaceC5511l2.e();
            if (e) {
                break;
            }
        } while (T0.tryAdvance(d));
        return e;
    }

    @Override // j$.util.stream.AbstractC5453a
    public final Z2 L0() {
        return Z2.DOUBLE_VALUE;
    }

    @Override // j$.util.stream.AbstractC5453a
    public final Spliterator S0(AbstractC5453a abstractC5453a, Supplier supplier, boolean z) {
        return new AbstractC5457a3(abstractC5453a, supplier, z);
    }

    @Override // j$.util.stream.C
    public final C a() {
        int i = Y3.a;
        Objects.requireNonNull(null);
        return new D2(this, Y3.a, 1);
    }

    @Override // j$.util.stream.C
    public final j$.util.A average() {
        double[] dArr = (double[]) collect(new j$.time.f(21), new j$.time.f(22), new j$.time.f(23));
        if (dArr[2] <= 0.0d) {
            return j$.util.A.c;
        }
        int i = AbstractC5498j.a;
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        if (Double.isNaN(d) && Double.isInfinite(d2)) {
            d = d2;
        }
        return new j$.util.A(d / dArr[2]);
    }

    @Override // j$.util.stream.C
    public final C b() {
        Objects.requireNonNull(null);
        return new r(this, Y2.t, 2);
    }

    @Override // j$.util.stream.C
    public final Stream boxed() {
        return new C5533q(this, 0, new j$.time.f(26), 0);
    }

    @Override // j$.util.stream.C
    public final C c() {
        int i = Y3.a;
        Objects.requireNonNull(null);
        return new D2(this, Y3.b, 2);
    }

    @Override // j$.util.stream.C
    public final Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C5518n c5518n = new C5518n(biConsumer, 0);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objDoubleConsumer);
        Objects.requireNonNull(c5518n);
        return H0(new A1(Z2.DOUBLE_VALUE, c5518n, objDoubleConsumer, supplier, 1));
    }

    @Override // j$.util.stream.C
    public final long count() {
        return ((Long) H0(new C1(1))).longValue();
    }

    @Override // j$.util.stream.C
    public final C d(C5450p c5450p) {
        Objects.requireNonNull(c5450p);
        return new C5557v(this, Y2.p | Y2.n | Y2.t, c5450p, 0);
    }

    @Override // j$.util.stream.C
    public final C distinct() {
        return ((AbstractC5471d2) boxed()).distinct().mapToDouble(new j$.time.f(27));
    }

    @Override // j$.util.stream.C
    public final C e() {
        Objects.requireNonNull(null);
        return new r(this, Y2.p | Y2.n, 0);
    }

    @Override // j$.util.stream.C
    public final j$.util.A findAny() {
        return (j$.util.A) H0(E.d);
    }

    @Override // j$.util.stream.C
    public final j$.util.A findFirst() {
        return (j$.util.A) H0(E.c);
    }

    public void forEach(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        H0(new L(doubleConsumer, false));
    }

    public void forEachOrdered(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        H0(new L(doubleConsumer, true));
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final j$.util.G iterator() {
        j$.util.U spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.i0(spliterator);
    }

    @Override // j$.util.stream.C
    public final C limit(long j) {
        if (j >= 0) {
            return AbstractC5559v1.v0(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.C
    public final Stream mapToObj(DoubleFunction doubleFunction) {
        Objects.requireNonNull(doubleFunction);
        return new C5533q(this, Y2.p | Y2.n, doubleFunction, 0);
    }

    @Override // j$.util.stream.C
    public final j$.util.A max() {
        return reduce(new j$.time.f(29));
    }

    @Override // j$.util.stream.C
    public final j$.util.A min() {
        return reduce(new j$.time.f(20));
    }

    @Override // j$.util.stream.C
    public final boolean p() {
        return ((Boolean) H0(AbstractC5559v1.u0(EnumC5548t0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.C
    public final C peek(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        return new C5557v(this, doubleConsumer);
    }

    @Override // j$.util.stream.C
    public final double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return ((Double) H0(new E1(Z2.DOUBLE_VALUE, doubleBinaryOperator, d))).doubleValue();
    }

    @Override // j$.util.stream.C
    public final j$.util.A reduce(DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return (j$.util.A) H0(new C5574y1(Z2.DOUBLE_VALUE, doubleBinaryOperator, 1));
    }

    @Override // j$.util.stream.C
    public final C skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC5559v1.v0(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.C
    public final C sorted() {
        return new D2(this, Y2.q | Y2.o, 0);
    }

    @Override // j$.util.stream.AbstractC5453a, j$.util.stream.InterfaceC5483g
    public final j$.util.U spliterator() {
        return T0(super.spliterator());
    }

    @Override // j$.util.stream.C
    public final double sum() {
        double[] dArr = (double[]) collect(new C5523o(0), new C5523o(1), new j$.time.f(19));
        int i = AbstractC5498j.a;
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        return (Double.isNaN(d) && Double.isInfinite(d2)) ? d2 : d;
    }

    @Override // j$.util.stream.C
    public final C5584w summaryStatistics() {
        return (C5584w) collect(new j$.time.f(13), new j$.time.f(24), new j$.time.f(25));
    }

    @Override // j$.util.stream.C
    public final double[] toArray() {
        return (double[]) AbstractC5559v1.o0((A0) I0(new j$.time.f(28))).b();
    }

    @Override // j$.util.stream.C
    public final boolean u() {
        return ((Boolean) H0(AbstractC5559v1.u0(EnumC5548t0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.C
    public final InterfaceC5514m0 v() {
        Objects.requireNonNull(null);
        return new C5547t(this, Y2.p | Y2.n, 0);
    }
}
