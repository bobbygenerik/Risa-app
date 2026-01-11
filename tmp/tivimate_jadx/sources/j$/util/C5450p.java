package j$.util;

import j$.util.function.Function$CC;
import j$.util.stream.AbstractC5453a;
import j$.util.stream.C3;
import j$.util.stream.C5502j3;
import j$.util.stream.C5504k0;
import j$.util.stream.C5509l0;
import j$.util.stream.C5512l3;
import j$.util.stream.C5522n3;
import j$.util.stream.IntStream;
import j$.util.stream.InterfaceC5511l2;
import j$.util.stream.InterfaceC5514m0;
import j$.util.stream.Stream;
import j$.util.stream.W2;
import j$.util.stream.X2;
import java.util.EnumMap;
import java.util.Map;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.DoubleFunction;
import java.util.function.Function;
import java.util.function.LongFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.DoubleStream;
import java.util.stream.LongStream;
import p223.C3056;

/* renamed from: j$.util.p, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C5450p implements Consumer, Predicate, Supplier, DoubleFunction, Function, LongFunction, BooleanSupplier {
    public final /* synthetic */ int a;
    public Object b;

    public /* synthetic */ C5450p(int i) {
        this.a = i;
    }

    public /* synthetic */ C5450p(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public void a(X2 x2) {
        ((EnumMap) ((java.util.Map) this.b)).put((EnumMap) x2, (X2) 1);
    }

    @Override // java.util.function.Consumer
    public void accept(Object obj) {
        switch (this.a) {
            case 0:
                ((Consumer) this.b).accept(new C5451q((Map.Entry) obj));
                return;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                ((InterfaceC5511l2) this.b).accept((InterfaceC5511l2) obj);
                return;
            default:
                ((java.util.List) this.b).add(obj);
                return;
        }
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        return j$.util.function.a.a(this, predicate);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.a) {
            case 0:
                return j$.util.function.a.c(this, consumer);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return j$.util.function.a.c(this, consumer);
            default:
                return j$.util.function.a.c(this, consumer);
        }
    }

    public /* synthetic */ Function andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.DoubleFunction
    public Object apply(double d) {
        Object apply = ((DoubleFunction) this.b).apply(d);
        if (apply == null) {
            return null;
        }
        if (apply instanceof j$.util.stream.C) {
            return j$.util.stream.B.f((j$.util.stream.C) apply);
        }
        if (apply instanceof DoubleStream) {
            return j$.util.stream.A.f((DoubleStream) apply);
        }
        C5440f.a(apply.getClass(), "java.util.stream.DoubleStream");
        throw null;
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        Object apply = ((LongFunction) this.b).apply(j);
        if (apply == null) {
            return null;
        }
        if (apply instanceof InterfaceC5514m0) {
            return C5509l0.f((InterfaceC5514m0) apply);
        }
        if (apply instanceof LongStream) {
            return C5504k0.f((LongStream) apply);
        }
        C5440f.a(apply.getClass(), "java.util.stream.LongStream");
        throw null;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Object apply = ((Function) this.b).apply(obj);
        if (apply == null) {
            return null;
        }
        if (apply instanceof Stream) {
            return Stream.Wrapper.convert((Stream) apply);
        }
        if (apply instanceof java.util.stream.Stream) {
            return W2.f((java.util.stream.Stream) apply);
        }
        if (apply instanceof IntStream) {
            return IntStream.Wrapper.convert((IntStream) apply);
        }
        if (apply instanceof java.util.stream.IntStream) {
            return IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) apply);
        }
        if (apply instanceof j$.util.stream.C) {
            return j$.util.stream.B.f((j$.util.stream.C) apply);
        }
        if (apply instanceof DoubleStream) {
            return j$.util.stream.A.f((DoubleStream) apply);
        }
        if (apply instanceof InterfaceC5514m0) {
            return C5509l0.f((InterfaceC5514m0) apply);
        }
        if (apply instanceof LongStream) {
            return C5504k0.f((LongStream) apply);
        }
        C5440f.a(apply.getClass(), "java.util.stream.*Stream");
        throw null;
    }

    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.a) {
            case 2:
                return ((AbstractC5453a) this.b).Q0(0);
            default:
                return (Spliterator) this.b;
        }
    }

    @Override // java.util.function.BooleanSupplier
    public boolean getAsBoolean() {
        switch (this.a) {
            case 10:
                C5502j3 c5502j3 = (C5502j3) this.b;
                return c5502j3.d.tryAdvance(c5502j3.e);
            case 11:
                C5512l3 c5512l3 = (C5512l3) this.b;
                return c5512l3.d.tryAdvance(c5512l3.e);
            case 12:
                C5522n3 c5522n3 = (C5522n3) this.b;
                return c5522n3.d.tryAdvance(c5522n3.e);
            default:
                C3 c3 = (C3) this.b;
                return c3.d.tryAdvance(c3.e);
        }
    }

    public Predicate negate() {
        return new C5450p(1, this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        return j$.util.function.a.g(this, predicate);
    }

    @Override // java.util.function.Predicate
    public boolean test(Object obj) {
        return !((Predicate) this.b).test(obj);
    }
}
