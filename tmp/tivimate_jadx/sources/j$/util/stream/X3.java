package j$.util.stream;

import j$.util.Spliterator;
import java.util.Comparator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public abstract class X3 implements Spliterator {
    public final Spliterator a;
    public final AtomicBoolean b;
    public boolean c;
    public int d;

    public X3(Spliterator spliterator) {
        this.c = true;
        this.a = spliterator;
        this.b = new AtomicBoolean();
    }

    public X3(Spliterator spliterator, X3 x3) {
        this.c = true;
        this.a = spliterator;
        x3.getClass();
        this.b = x3.b;
    }

    public final boolean a() {
        return (this.d == 0 && this.b.get()) ? false : true;
    }

    public abstract Spliterator b(Spliterator spliterator);

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.a.characteristics() & (-16449);
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.a.estimateSize();
    }

    @Override // j$.util.Spliterator
    public void forEachRemaining(Consumer consumer) {
        do {
        } while (tryAdvance(consumer));
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        return this.a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        return -1L;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return j$.com.android.tools.r8.a.n(this, i);
    }

    @Override // j$.util.Spliterator
    public Spliterator trySplit() {
        Spliterator trySplit = this.a.trySplit();
        if (trySplit != null) {
            return b(trySplit);
        }
        return null;
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.U trySplit() {
        return (j$.util.U) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.X trySplit() {
        return (j$.util.X) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.a0 trySplit() {
        return (j$.util.a0) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.d0 trySplit() {
        return (j$.util.d0) trySplit();
    }
}
