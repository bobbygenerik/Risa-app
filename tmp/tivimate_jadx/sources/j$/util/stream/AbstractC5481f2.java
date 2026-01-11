package j$.util.stream;

import j$.util.Objects;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.f2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5481f2 implements InterfaceC5501j2 {
    public final InterfaceC5511l2 a;

    public AbstractC5481f2(InterfaceC5511l2 interfaceC5511l2) {
        this.a = (InterfaceC5511l2) Objects.requireNonNull(interfaceC5511l2);
    }

    @Override // j$.util.stream.InterfaceC5511l2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        AbstractC5559v1.D();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void accept(long j) {
        AbstractC5559v1.L();
        throw null;
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        d((Integer) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.a.c(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.a.e(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public void c(long j) {
        this.a.c(j);
    }

    @Override // j$.util.stream.InterfaceC5501j2
    public final /* synthetic */ void d(Integer num) {
        AbstractC5559v1.G(this, num);
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public boolean e() {
        return this.a.e();
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public void end() {
        this.a.end();
    }
}
