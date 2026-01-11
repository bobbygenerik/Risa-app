package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;

/* renamed from: j$.util.stream.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5468d extends CountedCompleter {
    public static final int g = ForkJoinPool.getCommonPoolParallelism() << 2;
    public final AbstractC5559v1 a;
    public Spliterator b;
    public long c;
    public AbstractC5468d d;
    public AbstractC5468d e;
    public Object f;

    public AbstractC5468d(AbstractC5468d abstractC5468d, Spliterator spliterator) {
        super(abstractC5468d);
        this.b = spliterator;
        this.a = abstractC5468d.a;
        this.c = abstractC5468d.c;
    }

    public AbstractC5468d(AbstractC5559v1 abstractC5559v1, Spliterator spliterator) {
        super(null);
        this.a = abstractC5559v1;
        this.b = spliterator;
        this.c = 0L;
    }

    public static long e(long j) {
        long j2 = j / g;
        if (j2 > 0) {
            return j2;
        }
        return 1L;
    }

    public abstract Object a();

    public final boolean b() {
        return ((AbstractC5468d) getCompleter()) == null;
    }

    public abstract AbstractC5468d c(Spliterator spliterator);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.b;
        long estimateSize = spliterator.estimateSize();
        long j = this.c;
        if (j == 0) {
            j = e(estimateSize);
            this.c = j;
        }
        boolean z = false;
        AbstractC5468d abstractC5468d = this;
        while (estimateSize > j && (trySplit = spliterator.trySplit()) != null) {
            AbstractC5468d c = abstractC5468d.c(trySplit);
            abstractC5468d.d = c;
            AbstractC5468d c2 = abstractC5468d.c(spliterator);
            abstractC5468d.e = c2;
            abstractC5468d.setPendingCount(1);
            if (z) {
                spliterator = trySplit;
                abstractC5468d = c;
                c = c2;
            } else {
                abstractC5468d = c2;
            }
            z = !z;
            c.fork();
            estimateSize = spliterator.estimateSize();
        }
        abstractC5468d.d(abstractC5468d.a());
        abstractC5468d.tryComplete();
    }

    public void d(Object obj) {
        this.f = obj;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return this.f;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        this.b = null;
        this.e = null;
        this.d = null;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public final void setRawResult(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }
}
