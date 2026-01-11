package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class J1 extends R1 implements Q1 {
    public final /* synthetic */ Supplier b;
    public final /* synthetic */ BiConsumer c;
    public final /* synthetic */ BiConsumer d;

    public J1(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.b = supplier;
        this.c = biConsumer;
        this.d = biConsumer2;
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
        this.c.accept(this.a, obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.a.c(this, consumer);
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
        this.d.accept(this.a, ((J1) q1).a);
    }
}
