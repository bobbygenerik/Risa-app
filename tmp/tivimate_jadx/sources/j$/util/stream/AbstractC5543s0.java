package j$.util.stream;

import java.util.function.Consumer;

/* renamed from: j$.util.stream.s0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5543s0 implements InterfaceC5511l2 {
    public boolean a;
    public boolean b;

    public AbstractC5543s0(EnumC5548t0 enumC5548t0) {
        this.b = !enumC5548t0.b;
    }

    @Override // j$.util.stream.InterfaceC5511l2, java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        AbstractC5559v1.D();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public /* synthetic */ void accept(int i) {
        AbstractC5559v1.K();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public /* synthetic */ void accept(long j) {
        AbstractC5559v1.L();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.a.c(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void c(long j) {
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final boolean e() {
        return this.a;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void end() {
    }
}
