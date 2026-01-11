package j$.util.stream;

import j$.util.Spliterator;
import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Deque;

/* renamed from: j$.util.stream.j1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5500j1 implements Spliterator {
    public G0 a;
    public int b;
    public Spliterator c;
    public Spliterator d;
    public Deque e;

    public AbstractC5500j1(G0 g0) {
        this.a = g0;
    }

    public static G0 a(Deque deque) {
        while (true) {
            ArrayDeque arrayDeque = (ArrayDeque) deque;
            G0 g0 = (G0) arrayDeque.pollFirst();
            if (g0 == null) {
                return null;
            }
            if (g0.o() != 0) {
                for (int o = g0.o() - 1; o >= 0; o--) {
                    arrayDeque.addFirst(g0.a(o));
                }
            } else if (g0.count() > 0) {
                return g0;
            }
        }
    }

    public final Deque b() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int o = this.a.o();
        while (true) {
            o--;
            if (o < this.b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.a.a(o));
        }
    }

    public final boolean c() {
        if (this.a == null) {
            return false;
        }
        if (this.d != null) {
            return true;
        }
        Spliterator spliterator = this.c;
        if (spliterator != null) {
            this.d = spliterator;
            return true;
        }
        Deque b = b();
        this.e = b;
        G0 a = a(b);
        if (a != null) {
            this.d = a.spliterator();
            return true;
        }
        this.a = null;
        return false;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 64;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        long j = 0;
        if (this.a == null) {
            return 0L;
        }
        Spliterator spliterator = this.c;
        if (spliterator != null) {
            return spliterator.estimateSize();
        }
        for (int i = this.b; i < this.a.o(); i++) {
            j += this.a.a(i).count();
        }
        return j;
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return j$.com.android.tools.r8.a.l(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return j$.com.android.tools.r8.a.n(this, i);
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        G0 g0 = this.a;
        if (g0 == null || this.d != null) {
            return null;
        }
        Spliterator spliterator = this.c;
        if (spliterator != null) {
            return spliterator.trySplit();
        }
        if (this.b < g0.o() - 1) {
            G0 g02 = this.a;
            int i = this.b;
            this.b = i + 1;
            return g02.a(i).spliterator();
        }
        G0 a = this.a.a(this.b);
        this.a = a;
        if (a.o() == 0) {
            Spliterator spliterator2 = this.a.spliterator();
            this.c = spliterator2;
            return spliterator2.trySplit();
        }
        G0 g03 = this.a;
        this.b = 1;
        return g03.a(0).spliterator();
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
