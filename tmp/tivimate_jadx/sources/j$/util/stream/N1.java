package j$.util.stream;

import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class N1 extends R1 implements Q1, InterfaceC5501j2 {
    public final /* synthetic */ Supplier b;
    public final /* synthetic */ ObjIntConsumer c;
    public final /* synthetic */ C5518n d;

    public N1(Supplier supplier, ObjIntConsumer objIntConsumer, C5518n c5518n) {
        this.b = supplier;
        this.c = objIntConsumer;
        this.d = c5518n;
    }

    @Override // j$.util.stream.InterfaceC5511l2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        AbstractC5559v1.D();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final void accept(int i) {
        this.c.accept(this.a, i);
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void accept(long j) {
        AbstractC5559v1.L();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        d((Integer) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.a.c(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.a.e(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        this.a = this.b.get();
    }

    @Override // j$.util.stream.InterfaceC5501j2
    public final /* synthetic */ void d(Integer num) {
        AbstractC5559v1.G(this, num);
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
        this.a = this.d.apply(this.a, ((N1) q1).a);
    }
}
