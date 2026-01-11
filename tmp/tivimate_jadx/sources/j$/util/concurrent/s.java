package j$.util.concurrent;

import j$.util.Spliterator;
import j$.util.stream.AbstractC5453a;
import j$.util.stream.AbstractC5543s0;
import j$.util.stream.AbstractC5559v1;
import j$.util.stream.C5492h3;
import j$.util.stream.C5524o0;
import j$.util.stream.C5553u0;
import j$.util.stream.E3;
import j$.util.stream.EnumC5548t0;
import j$.util.stream.Y2;
import j$.util.stream.Z2;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import p223.C3056;

/* loaded from: classes2.dex */
public final /* synthetic */ class s implements BiConsumer, BiFunction, Consumer, Supplier, E3 {
    public final /* synthetic */ int a;
    public final Object b;
    public final Object c;

    public /* synthetic */ s(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    public s(Z2 z2, EnumC5548t0 enumC5548t0, Supplier supplier) {
        this.a = 6;
        this.b = enumC5548t0;
        this.c = supplier;
    }

    public /* synthetic */ s(BiFunction biFunction, Function function) {
        this.a = 2;
        this.c = biFunction;
        this.b = function;
    }

    @Override // java.util.function.Consumer
    public void accept(Object obj) {
        switch (this.a) {
            case 3:
                Consumer consumer = (Consumer) this.b;
                Consumer consumer2 = (Consumer) this.c;
                consumer.accept(obj);
                consumer2.accept(obj);
                return;
            case 4:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.b;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.c;
                if (obj == null) {
                    atomicBoolean.set(true);
                    return;
                } else {
                    concurrentHashMap.putIfAbsent(obj, Boolean.TRUE);
                    return;
                }
            case 5:
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
            default:
                C5492h3 c5492h3 = (C5492h3) this.b;
                Consumer consumer3 = (Consumer) this.c;
                if (c5492h3.b.putIfAbsent(obj != null ? obj : C5492h3.d, Boolean.TRUE) == null) {
                    consumer3.accept(obj);
                    return;
                }
                return;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                ((BiConsumer) this.b).accept(this.c, obj);
                return;
        }
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                ConcurrentMap concurrentMap = (ConcurrentMap) this.b;
                BiFunction biFunction = (BiFunction) this.c;
                while (!concurrentMap.replace(obj, obj2, biFunction.apply(obj, obj2)) && (obj2 = concurrentMap.get(obj)) != null) {
                }
                return;
            default:
                BiConsumer biConsumer = (BiConsumer) this.b;
                BiConsumer biConsumer2 = (BiConsumer) this.c;
                biConsumer.accept(obj, obj2);
                biConsumer2.accept(obj, obj2);
                return;
        }
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.a) {
            case 0:
                return j$.com.android.tools.r8.a.b(this, biConsumer);
            default:
                return j$.com.android.tools.r8.a.b(this, biConsumer);
        }
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        return j$.util.function.a.b(this, function);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.a) {
            case 3:
                return j$.util.function.a.c(this, consumer);
            case 4:
                return j$.util.function.a.c(this, consumer);
            case 5:
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
            default:
                return j$.util.function.a.c(this, consumer);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return j$.util.function.a.c(this, consumer);
        }
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        return ((Function) this.b).apply(((BiFunction) this.c).apply(obj, obj2));
    }

    @Override // j$.util.stream.E3
    public Object f(AbstractC5453a abstractC5453a, Spliterator spliterator) {
        AbstractC5543s0 abstractC5543s0 = (AbstractC5543s0) ((Supplier) this.c).get();
        abstractC5453a.E0(spliterator, abstractC5543s0);
        return Boolean.valueOf(abstractC5543s0.b);
    }

    @Override // java.util.function.Supplier
    public Object get() {
        return new C5524o0((EnumC5548t0) this.b, (Predicate) this.c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // j$.util.stream.E3
    public Object j(AbstractC5559v1 abstractC5559v1, Spliterator spliterator) {
        return (Boolean) new C5553u0(this, (AbstractC5453a) abstractC5559v1, spliterator).invoke();
    }

    @Override // j$.util.stream.E3
    public int w() {
        return Y2.u | Y2.r;
    }
}
