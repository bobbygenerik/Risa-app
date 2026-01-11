package j$.util.stream;

import j$.util.Optional;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class G1 implements Q1 {
    public boolean a;
    public Object b;
    public final /* synthetic */ BinaryOperator c;

    public G1(BinaryOperator binaryOperator) {
        this.c = binaryOperator;
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
        if (!this.a) {
            this.b = this.c.apply(this.b, obj);
        } else {
            this.a = false;
            this.b = obj;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.a.c(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        this.a = true;
        this.b = null;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void end() {
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.a ? Optional.b : new Optional(this.b);
    }

    @Override // j$.util.stream.Q1
    public final void i(Q1 q1) {
        G1 g1 = (G1) q1;
        if (g1.a) {
            return;
        }
        n(g1.b);
    }
}
