package j$.util.stream;

import j$.util.C5450p;
import j$.util.C5587z;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.m0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public interface InterfaceC5514m0 extends InterfaceC5483g {
    IntStream B();

    InterfaceC5514m0 a();

    C asDoubleStream();

    j$.util.A average();

    InterfaceC5514m0 b();

    Stream boxed();

    InterfaceC5514m0 c();

    Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer);

    long count();

    InterfaceC5514m0 d(C5450p c5450p);

    InterfaceC5514m0 distinct();

    InterfaceC5514m0 e();

    j$.util.C findAny();

    j$.util.C findFirst();

    void forEach(LongConsumer longConsumer);

    void forEachOrdered(LongConsumer longConsumer);

    @Override // j$.util.stream.InterfaceC5483g
    j$.util.O iterator();

    C k();

    InterfaceC5514m0 limit(long j);

    Stream mapToObj(LongFunction longFunction);

    j$.util.C max();

    j$.util.C min();

    boolean n();

    @Override // j$.util.stream.InterfaceC5483g
    InterfaceC5514m0 parallel();

    InterfaceC5514m0 peek(LongConsumer longConsumer);

    boolean r();

    long reduce(long j, LongBinaryOperator longBinaryOperator);

    j$.util.C reduce(LongBinaryOperator longBinaryOperator);

    @Override // j$.util.stream.InterfaceC5483g
    InterfaceC5514m0 sequential();

    InterfaceC5514m0 skip(long j);

    InterfaceC5514m0 sorted();

    @Override // j$.util.stream.InterfaceC5483g
    j$.util.a0 spliterator();

    long sum();

    C5587z summaryStatistics();

    long[] toArray();

    boolean x();
}
