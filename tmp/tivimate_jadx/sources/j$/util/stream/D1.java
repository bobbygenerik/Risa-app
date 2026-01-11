package j$.util.stream;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class D1 extends R1 implements Q1, InterfaceC5496i2 {
    public final /* synthetic */ Supplier b;
    public final /* synthetic */ ObjDoubleConsumer c;
    public final /* synthetic */ C5518n d;

    public D1(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, C5518n c5518n) {
        this.b = supplier;
        this.c = objDoubleConsumer;
        this.d = c5518n;
    }

    @Override // j$.util.stream.InterfaceC5511l2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.c.accept(this.a, d);
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
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        n((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.a.c(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.util.function.a.d(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        this.a = this.b.get();
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
        this.a = this.d.apply(this.a, ((D1) q1).a);
    }

    @Override // j$.util.stream.InterfaceC5496i2
    public final /* synthetic */ void n(Double d) {
        AbstractC5559v1.E(this, d);
    }
}
