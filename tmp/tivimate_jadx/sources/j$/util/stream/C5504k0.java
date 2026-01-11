package j$.util.stream;

import j$.util.C5450p;
import j$.util.C5587z;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;
import java.util.stream.LongStream;

/* renamed from: j$.util.stream.k0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C5504k0 implements InterfaceC5514m0 {
    public final /* synthetic */ LongStream a;

    public /* synthetic */ C5504k0(LongStream longStream) {
        this.a = longStream;
    }

    public static /* synthetic */ InterfaceC5514m0 f(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C5509l0 ? ((C5509l0) longStream).a : new C5504k0(longStream);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ IntStream B() {
        return IntStream.VivifiedWrapper.convert(this.a.mapToInt(null));
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ InterfaceC5514m0 a() {
        return f(this.a.takeWhile(null));
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ C asDoubleStream() {
        return A.f(this.a.asDoubleStream());
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ j$.util.A average() {
        return j$.com.android.tools.r8.a.C(this.a.average());
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ InterfaceC5514m0 b() {
        return f(this.a.filter(null));
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ Stream boxed() {
        return W2.f(this.a.boxed());
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ InterfaceC5514m0 c() {
        return f(this.a.dropWhile(null));
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        return this.a.collect(supplier, objLongConsumer, biConsumer);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ long count() {
        return this.a.count();
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final InterfaceC5514m0 d(C5450p c5450p) {
        LongStream longStream = this.a;
        C5450p c5450p2 = new C5450p(6);
        c5450p2.b = c5450p;
        return f(longStream.flatMap(c5450p2));
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ InterfaceC5514m0 distinct() {
        return f(this.a.distinct());
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ InterfaceC5514m0 e() {
        return f(this.a.map(null));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        LongStream longStream = this.a;
        if (obj instanceof C5504k0) {
            obj = ((C5504k0) obj).a;
        }
        return longStream.equals(obj);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ j$.util.C findAny() {
        return j$.com.android.tools.r8.a.E(this.a.findAny());
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ j$.util.C findFirst() {
        return j$.com.android.tools.r8.a.E(this.a.findFirst());
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ void forEach(LongConsumer longConsumer) {
        this.a.forEach(longConsumer);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ void forEachOrdered(LongConsumer longConsumer) {
        this.a.forEachOrdered(longConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ boolean isParallel() {
        return this.a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfLong] */
    @Override // j$.util.stream.InterfaceC5514m0, j$.util.stream.InterfaceC5483g
    public final /* synthetic */ j$.util.O iterator() {
        ?? it = this.a.iterator();
        if (it == 0) {
            return null;
        }
        return it instanceof j$.util.N ? ((j$.util.N) it).a : new j$.util.M(it);
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ Iterator iterator() {
        return this.a.iterator();
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ C k() {
        return A.f(this.a.mapToDouble(null));
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ InterfaceC5514m0 limit(long j) {
        return f(this.a.limit(j));
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ Stream mapToObj(LongFunction longFunction) {
        return W2.f(this.a.mapToObj(longFunction));
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ j$.util.C max() {
        return j$.com.android.tools.r8.a.E(this.a.max());
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ j$.util.C min() {
        return j$.com.android.tools.r8.a.E(this.a.min());
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ boolean n() {
        return this.a.noneMatch(null);
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ InterfaceC5483g onClose(Runnable runnable) {
        return C5473e.f(this.a.onClose(runnable));
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ InterfaceC5483g parallel() {
        return C5473e.f(this.a.parallel());
    }

    @Override // j$.util.stream.InterfaceC5514m0, j$.util.stream.InterfaceC5483g
    public final /* synthetic */ InterfaceC5514m0 parallel() {
        return f(this.a.parallel());
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ InterfaceC5514m0 peek(LongConsumer longConsumer) {
        return f(this.a.peek(longConsumer));
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ boolean r() {
        return this.a.anyMatch(null);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ long reduce(long j, LongBinaryOperator longBinaryOperator) {
        return this.a.reduce(j, longBinaryOperator);
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ j$.util.C reduce(LongBinaryOperator longBinaryOperator) {
        return j$.com.android.tools.r8.a.E(this.a.reduce(longBinaryOperator));
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ InterfaceC5483g sequential() {
        return C5473e.f(this.a.sequential());
    }

    @Override // j$.util.stream.InterfaceC5514m0, j$.util.stream.InterfaceC5483g
    public final /* synthetic */ InterfaceC5514m0 sequential() {
        return f(this.a.sequential());
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ InterfaceC5514m0 skip(long j) {
        return f(this.a.skip(j));
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ InterfaceC5514m0 sorted() {
        return f(this.a.sorted());
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.e0.a(this.a.spliterator());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfLong] */
    @Override // j$.util.stream.InterfaceC5514m0, j$.util.stream.InterfaceC5483g
    public final /* synthetic */ j$.util.a0 spliterator() {
        return j$.util.Y.a(this.a.spliterator());
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ long sum() {
        return this.a.sum();
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final C5587z summaryStatistics() {
        this.a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ long[] toArray() {
        return this.a.toArray();
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ InterfaceC5483g unordered() {
        return C5473e.f(this.a.unordered());
    }

    @Override // j$.util.stream.InterfaceC5514m0
    public final /* synthetic */ boolean x() {
        return this.a.allMatch(null);
    }
}
