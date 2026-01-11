package j$.util.stream;

import j$.util.C5450p;
import j$.util.C5584w;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;
import java.util.stream.DoubleStream;

/* loaded from: classes2.dex */
public final /* synthetic */ class A implements C {
    public final /* synthetic */ DoubleStream a;

    public /* synthetic */ A(DoubleStream doubleStream) {
        this.a = doubleStream;
    }

    public static /* synthetic */ C f(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof B ? ((B) doubleStream).a : new A(doubleStream);
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ IntStream A() {
        return IntStream.VivifiedWrapper.convert(this.a.mapToInt(null));
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ boolean C() {
        return this.a.noneMatch(null);
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ C a() {
        return f(this.a.takeWhile(null));
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ j$.util.A average() {
        return j$.com.android.tools.r8.a.C(this.a.average());
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ C b() {
        return f(this.a.filter(null));
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ Stream boxed() {
        return W2.f(this.a.boxed());
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ C c() {
        return f(this.a.dropWhile(null));
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        return this.a.collect(supplier, objDoubleConsumer, biConsumer);
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ long count() {
        return this.a.count();
    }

    @Override // j$.util.stream.C
    public final C d(C5450p c5450p) {
        DoubleStream doubleStream = this.a;
        C5450p c5450p2 = new C5450p(4);
        c5450p2.b = c5450p;
        return f(doubleStream.flatMap(c5450p2));
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ C distinct() {
        return f(this.a.distinct());
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ C e() {
        return f(this.a.map(null));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        DoubleStream doubleStream = this.a;
        if (obj instanceof A) {
            obj = ((A) obj).a;
        }
        return doubleStream.equals(obj);
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ j$.util.A findAny() {
        return j$.com.android.tools.r8.a.C(this.a.findAny());
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ j$.util.A findFirst() {
        return j$.com.android.tools.r8.a.C(this.a.findFirst());
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ void forEach(DoubleConsumer doubleConsumer) {
        this.a.forEach(doubleConsumer);
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ void forEachOrdered(DoubleConsumer doubleConsumer) {
        this.a.forEachOrdered(doubleConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ boolean isParallel() {
        return this.a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfDouble] */
    @Override // j$.util.stream.C, j$.util.stream.InterfaceC5483g
    public final /* synthetic */ j$.util.G iterator() {
        ?? it = this.a.iterator();
        if (it == 0) {
            return null;
        }
        return it instanceof j$.util.F ? ((j$.util.F) it).a : new j$.util.E(it);
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ Iterator iterator() {
        return this.a.iterator();
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ C limit(long j) {
        return f(this.a.limit(j));
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ Stream mapToObj(DoubleFunction doubleFunction) {
        return W2.f(this.a.mapToObj(doubleFunction));
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ j$.util.A max() {
        return j$.com.android.tools.r8.a.C(this.a.max());
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ j$.util.A min() {
        return j$.com.android.tools.r8.a.C(this.a.min());
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ InterfaceC5483g onClose(Runnable runnable) {
        return C5473e.f(this.a.onClose(runnable));
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ boolean p() {
        return this.a.anyMatch(null);
    }

    @Override // j$.util.stream.C, j$.util.stream.InterfaceC5483g
    public final /* synthetic */ C parallel() {
        return f(this.a.parallel());
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ InterfaceC5483g parallel() {
        return C5473e.f(this.a.parallel());
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ C peek(DoubleConsumer doubleConsumer) {
        return f(this.a.peek(doubleConsumer));
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        return this.a.reduce(d, doubleBinaryOperator);
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ j$.util.A reduce(DoubleBinaryOperator doubleBinaryOperator) {
        return j$.com.android.tools.r8.a.C(this.a.reduce(doubleBinaryOperator));
    }

    @Override // j$.util.stream.C, j$.util.stream.InterfaceC5483g
    public final /* synthetic */ C sequential() {
        return f(this.a.sequential());
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ InterfaceC5483g sequential() {
        return C5473e.f(this.a.sequential());
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ C skip(long j) {
        return f(this.a.skip(j));
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ C sorted() {
        return f(this.a.sorted());
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.e0.a(this.a.spliterator());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfDouble] */
    @Override // j$.util.stream.C, j$.util.stream.InterfaceC5483g
    public final /* synthetic */ j$.util.U spliterator() {
        return j$.util.S.a(this.a.spliterator());
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ double sum() {
        return this.a.sum();
    }

    @Override // j$.util.stream.C
    public final C5584w summaryStatistics() {
        this.a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ double[] toArray() {
        return this.a.toArray();
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ boolean u() {
        return this.a.allMatch(null);
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ InterfaceC5483g unordered() {
        return C5473e.f(this.a.unordered());
    }

    @Override // j$.util.stream.C
    public final /* synthetic */ InterfaceC5514m0 v() {
        return C5504k0.f(this.a.mapToLong(null));
    }
}
