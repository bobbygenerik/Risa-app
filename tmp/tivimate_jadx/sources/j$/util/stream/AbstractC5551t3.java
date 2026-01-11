package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.t3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5551t3 {
    public final long a;
    public final long b;
    public Spliterator c;
    public long d;
    public long e;

    public AbstractC5551t3(Spliterator spliterator, long j, long j2, long j3, long j4) {
        this.c = spliterator;
        this.a = j;
        this.b = j2;
        this.d = j3;
        this.e = j4;
    }

    public abstract Spliterator a(Spliterator spliterator, long j, long j2, long j3, long j4);

    public final int characteristics() {
        return this.c.characteristics();
    }

    public final long estimateSize() {
        long j = this.e;
        long j2 = this.a;
        if (j2 < j) {
            return j - Math.max(j2, this.d);
        }
        return 0L;
    }

    public final Spliterator trySplit() {
        long j = this.e;
        if (this.a >= j || this.d >= j) {
            return null;
        }
        while (true) {
            Spliterator trySplit = this.c.trySplit();
            if (trySplit == null) {
                return null;
            }
            long estimateSize = trySplit.estimateSize() + this.d;
            long min = Math.min(estimateSize, this.b);
            long j2 = this.a;
            if (j2 >= min) {
                this.d = min;
            } else {
                long j3 = this.b;
                if (min < j3) {
                    long j4 = this.d;
                    if (j4 < j2 || estimateSize > j3) {
                        this.d = min;
                        return a(trySplit, j2, j3, j4, min);
                    }
                    this.d = min;
                    return trySplit;
                }
                this.c = trySplit;
                this.e = min;
            }
        }
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.U m2738trySplit() {
        return (j$.util.U) trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.X m2739trySplit() {
        return (j$.util.X) trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.a0 m2740trySplit() {
        return (j$.util.a0) trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.d0 m2741trySplit() {
        return (j$.util.d0) trySplit();
    }
}
