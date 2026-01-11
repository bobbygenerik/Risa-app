package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public abstract class P implements E3, F3 {
    public final boolean a;

    public P(boolean z) {
        this.a = z;
    }

    public final void a(AbstractC5559v1 abstractC5559v1, Spliterator spliterator) {
        if (this.a) {
            new Q(abstractC5559v1, spliterator, this).invoke();
        } else {
            new S(abstractC5559v1, spliterator, abstractC5559v1.F0(this)).invoke();
        }
    }

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
    public final /* synthetic */ void c(long j) {
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void end() {
    }

    @Override // j$.util.stream.E3
    public final int w() {
        if (this.a) {
            return 0;
        }
        return Y2.r;
    }
}
