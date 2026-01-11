package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;

/* loaded from: classes2.dex */
public final class S extends CountedCompleter {
    public Spliterator a;
    public final InterfaceC5511l2 b;
    public final AbstractC5559v1 c;
    public long d;

    public S(S s, Spliterator spliterator) {
        super(s);
        this.a = spliterator;
        this.b = s.b;
        this.d = s.d;
        this.c = s.c;
    }

    public S(AbstractC5559v1 abstractC5559v1, Spliterator spliterator, InterfaceC5511l2 interfaceC5511l2) {
        super(null);
        this.b = interfaceC5511l2;
        this.c = abstractC5559v1;
        this.a = spliterator;
        this.d = 0L;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.a;
        long estimateSize = spliterator.estimateSize();
        long j = this.d;
        if (j == 0) {
            j = AbstractC5468d.e(estimateSize);
            this.d = j;
        }
        boolean q = Y2.SHORT_CIRCUIT.q(((AbstractC5453a) this.c).m);
        InterfaceC5511l2 interfaceC5511l2 = this.b;
        boolean z = false;
        S s = this;
        while (true) {
            if (q && interfaceC5511l2.e()) {
                break;
            }
            if (estimateSize <= j || (trySplit = spliterator.trySplit()) == null) {
                break;
            }
            S s2 = new S(s, trySplit);
            s.addToPendingCount(1);
            if (z) {
                spliterator = trySplit;
            } else {
                S s3 = s;
                s = s2;
                s2 = s3;
            }
            z = !z;
            s.fork();
            s = s2;
            estimateSize = spliterator.estimateSize();
        }
        s.c.g0(spliterator, interfaceC5511l2);
        s.a = null;
        s.propagateCompletion();
    }
}
