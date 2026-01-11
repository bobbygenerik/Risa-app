package j$.util.stream;

import j$.util.Objects;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.e2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5476e2 implements InterfaceC5496i2 {
    public final InterfaceC5511l2 a;

    public AbstractC5476e2(InterfaceC5511l2 interfaceC5511l2) {
        this.a = (InterfaceC5511l2) Objects.requireNonNull(interfaceC5511l2);
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
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        n((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.a.c(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.util.function.a.d(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public void c(long j) {
        this.a.c(j);
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public boolean e() {
        return this.a.e();
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public void end() {
        this.a.end();
    }

    @Override // j$.util.stream.InterfaceC5496i2
    public final /* synthetic */ void n(Double d) {
        AbstractC5559v1.E(this, d);
    }
}
