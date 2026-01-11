package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.r1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5539r1 extends CountedCompleter implements InterfaceC5511l2 {
    public final Spliterator a;
    public final AbstractC5559v1 b;
    public final long c;
    public final long d;
    public final long e;
    public int f;
    public int g;

    public AbstractC5539r1(Spliterator spliterator, AbstractC5559v1 abstractC5559v1, int i) {
        this.a = spliterator;
        this.b = abstractC5559v1;
        this.c = AbstractC5468d.e(spliterator.estimateSize());
        this.d = 0L;
        this.e = i;
    }

    public AbstractC5539r1(AbstractC5539r1 abstractC5539r1, Spliterator spliterator, long j, long j2, int i) {
        super(abstractC5539r1);
        this.a = spliterator;
        this.b = abstractC5539r1.b;
        this.c = abstractC5539r1.c;
        this.d = j;
        this.e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    public abstract AbstractC5539r1 a(Spliterator spliterator, long j, long j2);

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
        long j2 = this.e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.d;
        this.f = i;
        this.g = i + ((int) j2);
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.a;
        AbstractC5539r1 abstractC5539r1 = this;
        while (spliterator.estimateSize() > abstractC5539r1.c && (trySplit = spliterator.trySplit()) != null) {
            abstractC5539r1.setPendingCount(1);
            long estimateSize = trySplit.estimateSize();
            AbstractC5539r1 abstractC5539r12 = abstractC5539r1;
            abstractC5539r12.a(trySplit, abstractC5539r1.d, estimateSize).fork();
            abstractC5539r1 = abstractC5539r12.a(spliterator, abstractC5539r12.d + estimateSize, abstractC5539r12.e - estimateSize);
        }
        AbstractC5539r1 abstractC5539r13 = abstractC5539r1;
        abstractC5539r13.b.E0(spliterator, abstractC5539r13);
        abstractC5539r13.propagateCompletion();
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void end() {
    }
}
