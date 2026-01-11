package j$.util.stream;

import j$.util.C5450p;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;
import java.util.function.Predicate;

/* renamed from: j$.util.stream.v1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5559v1 implements E3 {
    public static final Y0 a = new Object();
    public static final W0 b = new Object();
    public static final X0 c = new Object();
    public static final V0 d = new Object();
    public static final int[] e = new int[0];
    public static final long[] f = new long[0];
    public static final double[] g = new double[0];

    public static j$.util.concurrent.s B0(EnumC5548t0 enumC5548t0, Predicate predicate) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC5548t0);
        return new j$.util.concurrent.s(Z2.REFERENCE, enumC5548t0, new j$.util.concurrent.s(5, enumC5548t0, predicate));
    }

    public static C5521n2 C0(AbstractC5471d2 abstractC5471d2, long j, long j2) {
        if (j >= 0) {
            return new C5521n2(abstractC5471d2, m0(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    public static void D() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static void E(InterfaceC5496i2 interfaceC5496i2, Double d2) {
        if (G3.a) {
            G3.a(interfaceC5496i2.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        }
        interfaceC5496i2.accept(d2.doubleValue());
    }

    public static void G(InterfaceC5501j2 interfaceC5501j2, Integer num) {
        if (G3.a) {
            G3.a(interfaceC5501j2.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        }
        interfaceC5501j2.accept(num.intValue());
    }

    public static void I(InterfaceC5506k2 interfaceC5506k2, Long l) {
        if (G3.a) {
            G3.a(interfaceC5506k2.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        }
        interfaceC5506k2.accept(l.longValue());
    }

    public static void K() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static void L() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static Object[] M(F0 f0, IntFunction intFunction) {
        if (G3.a) {
            G3.a(f0.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        }
        if (f0.count() >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) f0.count());
        f0.k(objArr, 0);
        return objArr;
    }

    public static void N(A0 a0, Double[] dArr, int i) {
        if (G3.a) {
            G3.a(a0.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) a0.b();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    public static void O(C0 c0, Integer[] numArr, int i) {
        if (G3.a) {
            G3.a(c0.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) c0.b();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    public static void P(E0 e0, Long[] lArr, int i) {
        if (G3.a) {
            G3.a(e0.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) e0.b();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    public static void Q(A0 a0, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            a0.g((DoubleConsumer) consumer);
        } else {
            if (G3.a) {
                G3.a(a0.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.U) a0.spliterator()).forEachRemaining(consumer);
        }
    }

    public static void R(C0 c0, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            c0.g((IntConsumer) consumer);
        } else {
            if (G3.a) {
                G3.a(c0.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.X) c0.spliterator()).forEachRemaining(consumer);
        }
    }

    public static void S(E0 e0, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            e0.g((LongConsumer) consumer);
        } else {
            if (G3.a) {
                G3.a(e0.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.a0) e0.spliterator()).forEachRemaining(consumer);
        }
    }

    public static A0 T(A0 a0, long j, long j2) {
        if (j == 0 && j2 == a0.count()) {
            return a0;
        }
        long j3 = j2 - j;
        j$.util.U u = (j$.util.U) a0.spliterator();
        InterfaceC5558v0 i0 = i0(j3);
        i0.c(j3);
        for (int i = 0; i < j && u.tryAdvance((DoubleConsumer) new C5578z0(0)); i++) {
        }
        if (j2 == a0.count()) {
            u.forEachRemaining((DoubleConsumer) i0);
        } else {
            for (int i2 = 0; i2 < j3 && u.tryAdvance((DoubleConsumer) i0); i2++) {
            }
        }
        i0.end();
        return i0.build();
    }

    public static C0 U(C0 c0, long j, long j2) {
        if (j == 0 && j2 == c0.count()) {
            return c0;
        }
        long j3 = j2 - j;
        j$.util.X x = (j$.util.X) c0.spliterator();
        InterfaceC5563w0 s0 = s0(j3);
        s0.c(j3);
        for (int i = 0; i < j && x.tryAdvance((IntConsumer) new B0(0)); i++) {
        }
        if (j2 == c0.count()) {
            x.forEachRemaining((IntConsumer) s0);
        } else {
            for (int i2 = 0; i2 < j3 && x.tryAdvance((IntConsumer) s0); i2++) {
            }
        }
        s0.end();
        return s0.build();
    }

    public static E0 V(E0 e0, long j, long j2) {
        if (j == 0 && j2 == e0.count()) {
            return e0;
        }
        long j3 = j2 - j;
        j$.util.a0 a0Var = (j$.util.a0) e0.spliterator();
        InterfaceC5568x0 t0 = t0(j3);
        t0.c(j3);
        for (int i = 0; i < j && a0Var.tryAdvance((LongConsumer) new D0(0)); i++) {
        }
        if (j2 == e0.count()) {
            a0Var.forEachRemaining((LongConsumer) t0);
        } else {
            for (int i2 = 0; i2 < j3 && a0Var.tryAdvance((LongConsumer) t0); i2++) {
            }
        }
        t0.end();
        return t0.build();
    }

    public static G0 W(G0 g0, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == g0.count()) {
            return g0;
        }
        Spliterator spliterator = g0.spliterator();
        long j3 = j2 - j;
        InterfaceC5573y0 Z = Z(j3, intFunction);
        Z.c(j3);
        for (int i = 0; i < j && spliterator.tryAdvance(new C5459b0(3)); i++) {
        }
        if (j2 == g0.count()) {
            spliterator.forEachRemaining(Z);
        } else {
            for (int i2 = 0; i2 < j3 && spliterator.tryAdvance(Z); i2++) {
            }
        }
        Z.end();
        return Z.build();
    }

    public static long X(long j, long j2, long j3) {
        if (j >= 0) {
            return Math.max(-1L, Math.min(j - j2, j3));
        }
        return -1L;
    }

    public static Spliterator Y(Z2 z2, Spliterator spliterator, long j, long j2) {
        long a0 = a0(j, j2);
        int i = AbstractC5555u2.a[z2.ordinal()];
        if (i == 1) {
            return new C5546s3(spliterator, j, a0);
        }
        if (i == 2) {
            return new AbstractC5541r3((j$.util.X) spliterator, j, a0);
        }
        if (i == 3) {
            return new AbstractC5541r3((j$.util.a0) spliterator, j, a0);
        }
        if (i == 4) {
            return new AbstractC5541r3((j$.util.U) spliterator, j, a0);
        }
        throw new IllegalStateException("Unknown shape " + z2);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [j$.util.stream.J0, j$.util.stream.y0] */
    /* JADX WARN: Type inference failed for: r2v1, types: [j$.util.stream.y0, j$.util.stream.V2] */
    public static InterfaceC5573y0 Z(long j, IntFunction intFunction) {
        return (j < 0 || j >= 2147483639) ? new V2() : new J0(j, intFunction);
    }

    public static long a0(long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        if (j3 >= 0) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.function.LongFunction, j$.util.stream.K, java.lang.Object] */
    public static G0 b0(AbstractC5559v1 abstractC5559v1, Spliterator spliterator, boolean z, IntFunction intFunction) {
        long l0 = abstractC5559v1.l0(spliterator);
        if (l0 < 0 || !spliterator.hasCharacteristics(16384)) {
            ?? obj = new Object();
            obj.a = intFunction;
            G0 g0 = (G0) new L0(abstractC5559v1, spliterator, obj, new C5459b0(11), 3).invoke();
            return z ? n0(g0, intFunction) : g0;
        }
        if (l0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) l0);
        new C5535q1(spliterator, abstractC5559v1, objArr).invoke();
        return new J0(objArr);
    }

    public static A0 c0(AbstractC5559v1 abstractC5559v1, Spliterator spliterator, boolean z) {
        long l0 = abstractC5559v1.l0(spliterator);
        if (l0 < 0 || !spliterator.hasCharacteristics(16384)) {
            A0 a0 = (A0) new L0(abstractC5559v1, spliterator, new C5459b0(5), new C5459b0(6), 0).invoke();
            return z ? o0(a0) : a0;
        }
        if (l0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        double[] dArr = new double[(int) l0];
        new C5520n1(spliterator, abstractC5559v1, dArr).invoke();
        return new S0(dArr);
    }

    public static C0 d0(AbstractC5559v1 abstractC5559v1, Spliterator spliterator, boolean z) {
        long l0 = abstractC5559v1.l0(spliterator);
        if (l0 < 0 || !spliterator.hasCharacteristics(16384)) {
            C0 c0 = (C0) new L0(abstractC5559v1, spliterator, new C5459b0(7), new C5459b0(8), 1).invoke();
            return z ? p0(c0) : c0;
        }
        if (l0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        int[] iArr = new int[(int) l0];
        new C5525o1(spliterator, abstractC5559v1, iArr).invoke();
        return new C5460b1(iArr);
    }

    public static E0 e0(AbstractC5559v1 abstractC5559v1, Spliterator spliterator, boolean z) {
        long l0 = abstractC5559v1.l0(spliterator);
        if (l0 < 0 || !spliterator.hasCharacteristics(16384)) {
            E0 e0 = (E0) new L0(abstractC5559v1, spliterator, new C5459b0(9), new C5459b0(10), 2).invoke();
            return z ? q0(e0) : e0;
        }
        if (l0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        long[] jArr = new long[(int) l0];
        new C5530p1(spliterator, abstractC5559v1, jArr).invoke();
        return new C5505k1(jArr);
    }

    public static I0 f0(Z2 z2, G0 g0, G0 g02) {
        int i = H0.a[z2.ordinal()];
        if (i == 1) {
            return new I0(g0, g02);
        }
        if (i == 2) {
            return new I0((C0) g0, (C0) g02);
        }
        if (i == 3) {
            return new I0((E0) g0, (E0) g02);
        }
        if (i == 4) {
            return new I0((A0) g0, (A0) g02);
        }
        throw new IllegalStateException("Unknown shape " + z2);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [j$.util.stream.v0, j$.util.stream.S0] */
    /* JADX WARN: Type inference failed for: r2v1, types: [j$.util.stream.v0, j$.util.stream.U2] */
    public static InterfaceC5558v0 i0(long j) {
        return (j < 0 || j >= 2147483639) ? new U2() : new S0(j);
    }

    public static Z0 j0(Z2 z2) {
        int i = H0.a[z2.ordinal()];
        if (i == 1) {
            return a;
        }
        if (i == 2) {
            return b;
        }
        if (i == 3) {
            return c;
        }
        if (i == 4) {
            return d;
        }
        throw new IllegalStateException("Unknown shape " + z2);
    }

    public static int m0(long j) {
        return (j != -1 ? Y2.u : 0) | Y2.t;
    }

    public static G0 n0(G0 g0, IntFunction intFunction) {
        if (g0.o() <= 0) {
            return g0;
        }
        long count = g0.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) count);
        new C5554u1(g0, objArr, 1).invoke();
        return new J0(objArr);
    }

    public static A0 o0(A0 a0) {
        if (a0.o() <= 0) {
            return a0;
        }
        long count = a0.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        double[] dArr = new double[(int) count];
        new C5554u1(a0, dArr, 0).invoke();
        return new S0(dArr);
    }

    public static C0 p0(C0 c0) {
        if (c0.o() <= 0) {
            return c0;
        }
        long count = c0.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        int[] iArr = new int[(int) count];
        new C5554u1(c0, iArr, 0).invoke();
        return new C5460b1(iArr);
    }

    public static E0 q0(E0 e0) {
        if (e0.o() <= 0) {
            return e0;
        }
        long count = e0.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        long[] jArr = new long[(int) count];
        new C5554u1(e0, jArr, 0).invoke();
        return new C5505k1(jArr);
    }

    public static C5450p r0(Function function) {
        C5450p c5450p = new C5450p(5);
        c5450p.b = function;
        return c5450p;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [j$.util.stream.w0, j$.util.stream.b1] */
    /* JADX WARN: Type inference failed for: r2v1, types: [j$.util.stream.w0, j$.util.stream.U2] */
    public static InterfaceC5563w0 s0(long j) {
        return (j < 0 || j >= 2147483639) ? new U2() : new C5460b1(j);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [j$.util.stream.k1, j$.util.stream.x0] */
    /* JADX WARN: Type inference failed for: r2v1, types: [j$.util.stream.x0, j$.util.stream.U2] */
    public static InterfaceC5568x0 t0(long j) {
        return (j < 0 || j >= 2147483639) ? new U2() : new C5505k1(j);
    }

    public static j$.util.concurrent.s u0(EnumC5548t0 enumC5548t0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC5548t0);
        return new j$.util.concurrent.s(Z2.DOUBLE_VALUE, enumC5548t0, new C5519n0(enumC5548t0, 2));
    }

    public static C5550t2 v0(AbstractC5577z abstractC5577z, long j, long j2) {
        if (j >= 0) {
            return new C5550t2(abstractC5577z, m0(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    public static j$.util.concurrent.s w0(EnumC5548t0 enumC5548t0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC5548t0);
        return new j$.util.concurrent.s(Z2.INT_VALUE, enumC5548t0, new C5519n0(enumC5548t0, 1));
    }

    public static C5531p2 x0(AbstractC5454a0 abstractC5454a0, long j, long j2) {
        if (j >= 0) {
            return new C5531p2(abstractC5454a0, m0(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    public static j$.util.concurrent.s y0(EnumC5548t0 enumC5548t0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC5548t0);
        return new j$.util.concurrent.s(Z2.LONG_VALUE, enumC5548t0, new C5519n0(enumC5548t0, 0));
    }

    public static C5540r2 z0(AbstractC5499j0 abstractC5499j0, long j, long j2) {
        if (j >= 0) {
            return new C5540r2(abstractC5499j0, m0(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    public abstract InterfaceC5573y0 A0(long j, IntFunction intFunction);

    public abstract Q1 D0();

    public abstract InterfaceC5511l2 E0(Spliterator spliterator, InterfaceC5511l2 interfaceC5511l2);

    public abstract InterfaceC5511l2 F0(InterfaceC5511l2 interfaceC5511l2);

    public abstract Spliterator G0(Spliterator spliterator);

    @Override // j$.util.stream.E3
    public Object f(AbstractC5453a abstractC5453a, Spliterator spliterator) {
        Q1 D0 = D0();
        abstractC5453a.E0(spliterator, D0);
        return D0.get();
    }

    public abstract void g0(Spliterator spliterator, InterfaceC5511l2 interfaceC5511l2);

    public abstract boolean h0(Spliterator spliterator, InterfaceC5511l2 interfaceC5511l2);

    @Override // j$.util.stream.E3
    public Object j(AbstractC5559v1 abstractC5559v1, Spliterator spliterator) {
        return ((Q1) new X1(this, abstractC5559v1, spliterator).invoke()).get();
    }

    public abstract G0 k0(Spliterator spliterator, boolean z, IntFunction intFunction);

    public abstract long l0(Spliterator spliterator);

    @Override // j$.util.stream.E3
    public /* synthetic */ int w() {
        return 0;
    }
}
