package j$.util.stream;

import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountedCompleter;

/* loaded from: classes2.dex */
public final class Q extends CountedCompleter {
    public final AbstractC5559v1 a;
    public Spliterator b;
    public final long c;
    public final ConcurrentHashMap d;
    public final P e;
    public final Q f;
    public G0 g;

    public Q(Q q, Spliterator spliterator, Q q2) {
        super(q);
        this.a = q.a;
        this.b = spliterator;
        this.c = q.c;
        this.d = q.d;
        this.e = q.e;
        this.f = q2;
    }

    public Q(AbstractC5559v1 abstractC5559v1, Spliterator spliterator, P p) {
        super(null);
        this.a = abstractC5559v1;
        this.b = spliterator;
        this.c = AbstractC5468d.e(spliterator.estimateSize());
        this.d = new ConcurrentHashMap(Math.max(16, AbstractC5468d.g << 1));
        this.e = p;
        this.f = null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.b;
        long j = this.c;
        boolean z = false;
        Q q = this;
        while (spliterator.estimateSize() > j && (trySplit = spliterator.trySplit()) != null) {
            Q q2 = new Q(q, trySplit, q.f);
            Q q3 = new Q(q, spliterator, q2);
            q.addToPendingCount(1);
            q3.addToPendingCount(1);
            q.d.put(q2, q3);
            if (q.f != null) {
                q2.addToPendingCount(1);
                if (q.d.replace(q.f, q, q2)) {
                    q.addToPendingCount(-1);
                } else {
                    q2.addToPendingCount(-1);
                }
            }
            if (z) {
                spliterator = trySplit;
                q = q2;
                q2 = q3;
            } else {
                q = q3;
            }
            z = !z;
            q2.fork();
        }
        if (q.getPendingCount() > 0) {
            C5523o c5523o = new C5523o(10);
            AbstractC5559v1 abstractC5559v1 = q.a;
            InterfaceC5573y0 A0 = abstractC5559v1.A0(abstractC5559v1.l0(spliterator), c5523o);
            q.a.E0(spliterator, A0);
            q.g = A0.build();
            q.b = null;
        }
        q.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        G0 g0 = this.g;
        if (g0 != null) {
            g0.forEach(this.e);
            this.g = null;
        } else {
            Spliterator spliterator = this.b;
            if (spliterator != null) {
                this.a.E0(spliterator, this.e);
                this.b = null;
            }
        }
        Q q = (Q) this.d.remove(this);
        if (q != null) {
            q.tryComplete();
        }
    }
}
