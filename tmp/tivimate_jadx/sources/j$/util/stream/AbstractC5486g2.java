package j$.util.stream;

import j$.util.Objects;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.g2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5486g2 implements InterfaceC5506k2 {
    public final InterfaceC5511l2 a;

    public AbstractC5486g2(InterfaceC5511l2 interfaceC5511l2) {
        this.a = (InterfaceC5511l2) Objects.requireNonNull(interfaceC5511l2);
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

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        l((Long) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.a.c(this, consumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.util.function.a.f(this, longConsumer);
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

    @Override // j$.util.stream.InterfaceC5506k2
    public final /* synthetic */ void l(Long l) {
        AbstractC5559v1.I(this, l);
    }
}
