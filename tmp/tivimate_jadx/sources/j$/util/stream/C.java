package j$.util.stream;

import j$.util.C5450p;
import j$.util.C5584w;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public interface C extends InterfaceC5483g {
    IntStream A();

    boolean C();

    C a();

    j$.util.A average();

    C b();

    Stream boxed();

    C c();

    Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer);

    long count();

    C d(C5450p c5450p);

    C distinct();

    C e();

    j$.util.A findAny();

    j$.util.A findFirst();

    void forEach(DoubleConsumer doubleConsumer);

    void forEachOrdered(DoubleConsumer doubleConsumer);

    @Override // j$.util.stream.InterfaceC5483g
    j$.util.G iterator();

    C limit(long j);

    Stream mapToObj(DoubleFunction doubleFunction);

    j$.util.A max();

    j$.util.A min();

    boolean p();

    @Override // j$.util.stream.InterfaceC5483g
    C parallel();

    C peek(DoubleConsumer doubleConsumer);

    double reduce(double d, DoubleBinaryOperator doubleBinaryOperator);

    j$.util.A reduce(DoubleBinaryOperator doubleBinaryOperator);

    @Override // j$.util.stream.InterfaceC5483g
    C sequential();

    C skip(long j);

    C sorted();

    @Override // j$.util.stream.InterfaceC5483g
    j$.util.U spliterator();

    double sum();

    C5584w summaryStatistics();

    double[] toArray();

    boolean u();

    InterfaceC5514m0 v();
}
