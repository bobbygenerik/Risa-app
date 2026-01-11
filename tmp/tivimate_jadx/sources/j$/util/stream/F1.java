package j$.util.stream;

import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class F1 extends R1 implements Q1 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ BiFunction c;
    public final /* synthetic */ BinaryOperator d;

    public F1(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        this.b = obj;
        this.c = biFunction;
        this.d = binaryOperator;
    }

    @Override // j$.util.stream.InterfaceC5511l2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        AbstractC5559v1.D();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void accept(int i) {
        AbstractC5559v1.K();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void accept(long j) {
        AbstractC5559v1.L();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        this.a = this.c.apply(this.a, obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.a.c(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        this.a = this.b;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void end() {
    }

    @Override // j$.util.stream.Q1
    public final void i(Q1 q1) {
        this.a = this.d.apply(this.a, ((F1) q1).a);
    }
}
