package j$.util.stream;

import j$.util.C5450p;
import j$.util.Objects;
import j$.util.Optional;
import j$.util.Spliterator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* renamed from: j$.util.stream.d2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5471d2 extends AbstractC5453a implements Stream {
    @Override // j$.util.stream.AbstractC5559v1
    public final InterfaceC5573y0 A0(long j, IntFunction intFunction) {
        return AbstractC5559v1.Z(j, intFunction);
    }

    @Override // j$.util.stream.AbstractC5453a
    public final G0 J0(AbstractC5453a abstractC5453a, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC5559v1.b0(abstractC5453a, spliterator, z, intFunction);
    }

    @Override // j$.util.stream.AbstractC5453a
    public final boolean K0(Spliterator spliterator, InterfaceC5511l2 interfaceC5511l2) {
        boolean e;
        do {
            e = interfaceC5511l2.e();
            if (e) {
                break;
            }
        } while (spliterator.tryAdvance(interfaceC5511l2));
        return e;
    }

    @Override // j$.util.stream.AbstractC5453a
    public final Z2 L0() {
        return Z2.REFERENCE;
    }

    @Override // j$.util.stream.AbstractC5453a
    public final Spliterator S0(AbstractC5453a abstractC5453a, Supplier supplier, boolean z) {
        return new AbstractC5457a3(abstractC5453a, supplier, z);
    }

    @Override // j$.util.stream.Stream
    public final boolean allMatch(Predicate predicate) {
        return ((Boolean) H0(AbstractC5559v1.B0(EnumC5548t0.ALL, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final boolean anyMatch(Predicate predicate) {
        return ((Boolean) H0(AbstractC5559v1.B0(EnumC5548t0.ANY, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return H0(new A1(Z2.REFERENCE, biConsumer2, biConsumer, supplier, 3));
    }

    @Override // j$.util.stream.Stream
    public final long count() {
        return ((Long) H0(new C1(2))).longValue();
    }

    @Override // j$.util.stream.Stream
    public final Stream d(C5450p c5450p) {
        Objects.requireNonNull(c5450p);
        return new C5533q(this, Y2.p | Y2.n | Y2.t, c5450p, 6);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.Stream, j$.util.stream.a] */
    @Override // j$.util.stream.Stream
    public final Stream distinct() {
        return new AbstractC5453a(this, Y2.m | Y2.t);
    }

    @Override // j$.util.stream.Stream
    public final Stream dropWhile(Predicate predicate) {
        int i = Y3.a;
        Objects.requireNonNull(predicate);
        return new H3(this, Y3.b, predicate, 1);
    }

    @Override // j$.util.stream.Stream
    public final Stream filter(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C5533q(this, Y2.t, predicate, 4);
    }

    @Override // j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) H0(H.d);
    }

    @Override // j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) H0(H.c);
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        H0(new O(consumer, false));
    }

    public void forEachOrdered(Consumer consumer) {
        Objects.requireNonNull(consumer);
        H0(new O(consumer, true));
    }

    /* JADX WARN: Code restructure failed: missing block: B:131:0x0137, code lost:
    
        if (r0.contains(j$.util.stream.EnumC5488h.UNORDERED) != false) goto L106;
     */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x020b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x020c  */
    @Override // j$.util.stream.Stream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(j$.util.stream.C5493i r10) {
        /*
            Method dump skipped, instructions count: 535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.stream.AbstractC5471d2.h(j$.util.stream.i):java.lang.Object");
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final Iterator iterator() {
        Spliterator spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.f0(spliterator);
    }

    @Override // j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j >= 0) {
            return AbstractC5559v1.C0(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.Stream
    public final InterfaceC5514m0 m(C5450p c5450p) {
        Objects.requireNonNull(c5450p);
        return new C5479f0(this, Y2.p | Y2.n | Y2.t, c5450p, 2);
    }

    @Override // j$.util.stream.Stream
    public final Stream map(Function function) {
        Objects.requireNonNull(function);
        return new C5533q(this, Y2.p | Y2.n, function, 5);
    }

    @Override // j$.util.stream.Stream
    public final C mapToDouble(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C5557v(this, Y2.p | Y2.n, toDoubleFunction, 2);
    }

    @Override // j$.util.stream.Stream
    public final IntStream mapToInt(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new U(this, Y2.p | Y2.n, toIntFunction, 2);
    }

    @Override // j$.util.stream.Stream
    public final InterfaceC5514m0 mapToLong(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C5479f0(this, Y2.p | Y2.n, toLongFunction, 3);
    }

    @Override // j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return reduce(new j$.util.function.b(comparator, 0));
    }

    @Override // j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return reduce(new j$.util.function.b(comparator, 1));
    }

    @Override // j$.util.stream.Stream
    public final boolean noneMatch(Predicate predicate) {
        return ((Boolean) H0(AbstractC5559v1.B0(EnumC5548t0.NONE, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final IntStream o(C5450p c5450p) {
        Objects.requireNonNull(c5450p);
        return new U(this, Y2.p | Y2.n | Y2.t, c5450p, 3);
    }

    @Override // j$.util.stream.Stream
    public final Stream peek(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C5533q(this, consumer);
    }

    @Override // j$.util.stream.Stream
    public final Optional reduce(BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        return (Optional) H0(new C5574y1(Z2.REFERENCE, binaryOperator, 2));
    }

    @Override // j$.util.stream.Stream
    public final Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(binaryOperator);
        return H0(new A1(Z2.REFERENCE, binaryOperator, biFunction, obj, 2));
    }

    @Override // j$.util.stream.Stream
    public final Object reduce(Object obj, BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        Objects.requireNonNull(binaryOperator);
        return H0(new A1(Z2.REFERENCE, binaryOperator, binaryOperator, obj, 2));
    }

    @Override // j$.util.stream.Stream
    public final Stream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC5559v1.C0(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.Stream
    public final Stream sorted() {
        return new G2(this);
    }

    @Override // j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new G2(this, comparator);
    }

    @Override // j$.util.stream.Stream
    public final Stream takeWhile(Predicate predicate) {
        int i = Y3.a;
        Objects.requireNonNull(predicate);
        return new H3(this, Y3.a, predicate, 0);
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray() {
        return toArray(new C5459b0(12));
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray(IntFunction intFunction) {
        return AbstractC5559v1.n0(I0(intFunction), intFunction).m(intFunction);
    }

    @Override // j$.util.stream.Stream
    public final List toList() {
        return Collections.unmodifiableList(new ArrayList(Arrays.asList(toArray())));
    }

    @Override // j$.util.stream.Stream
    public final C z(C5450p c5450p) {
        Objects.requireNonNull(c5450p);
        return new C5557v(this, Y2.p | Y2.n | Y2.t, c5450p, 3);
    }
}
