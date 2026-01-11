package j$.util.stream;

import j$.util.Objects;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class W extends AbstractC5481f2 {
    public boolean b;
    public final j$.util.H c;
    public final /* synthetic */ U d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W(U u, InterfaceC5511l2 interfaceC5511l2) {
        super(interfaceC5511l2);
        this.d = u;
        InterfaceC5511l2 interfaceC5511l22 = this.a;
        Objects.requireNonNull(interfaceC5511l22);
        this.c = new j$.util.H(interfaceC5511l22, 1);
    }

    @Override // j$.util.stream.InterfaceC5501j2, j$.util.stream.InterfaceC5511l2
    public final void accept(int i) {
        IntStream intStream = (IntStream) ((K) this.d.t).apply(i);
        if (intStream != null) {
            try {
                boolean z = this.b;
                j$.util.H h = this.c;
                if (z) {
                    j$.util.X spliterator = intStream.sequential().spliterator();
                    while (!this.a.e() && spliterator.tryAdvance((IntConsumer) h)) {
                    }
                } else {
                    intStream.sequential().forEach(h);
                }
            } catch (Throwable th) {
                try {
                    intStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (intStream != null) {
            intStream.close();
        }
    }

    @Override // j$.util.stream.AbstractC5481f2, j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        this.a.c(-1L);
    }

    @Override // j$.util.stream.AbstractC5481f2, j$.util.stream.InterfaceC5511l2
    public final boolean e() {
        this.b = true;
        return this.a.e();
    }
}
