package j$.util.stream;

import java.util.function.Consumer;

/* loaded from: classes2.dex */
public abstract class W1 extends R1 implements Q1 {
    public long b;

    public /* synthetic */ void accept(double d) {
        AbstractC5559v1.D();
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC5559v1.K();
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC5559v1.L();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.a.c(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        this.b = 0L;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void end() {
    }
}
