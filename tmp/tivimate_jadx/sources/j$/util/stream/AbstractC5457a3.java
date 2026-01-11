package j$.util.stream;

import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.BooleanSupplier;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.a3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5457a3 implements Spliterator {
    public final boolean a;
    public final AbstractC5453a b;
    public Supplier c;
    public Spliterator d;
    public InterfaceC5511l2 e;
    public BooleanSupplier f;
    public long g;
    public AbstractC5463c h;
    public boolean i;

    public AbstractC5457a3(AbstractC5453a abstractC5453a, Spliterator spliterator, boolean z) {
        this.b = abstractC5453a;
        this.c = null;
        this.d = spliterator;
        this.a = z;
    }

    public AbstractC5457a3(AbstractC5453a abstractC5453a, Supplier supplier, boolean z) {
        this.b = abstractC5453a;
        this.c = supplier;
        this.d = null;
        this.a = z;
    }

    public final boolean a() {
        AbstractC5463c abstractC5463c = this.h;
        if (abstractC5463c == null) {
            if (this.i) {
                return false;
            }
            c();
            d();
            this.g = 0L;
            this.e.c(this.d.getExactSizeIfKnown());
            return b();
        }
        long j = this.g + 1;
        this.g = j;
        boolean z = j < abstractC5463c.count();
        if (z) {
            return z;
        }
        this.g = 0L;
        this.h.clear();
        return b();
    }

    public final boolean b() {
        while (this.h.count() == 0) {
            if (this.e.e() || !this.f.getAsBoolean()) {
                if (this.i) {
                    return false;
                }
                this.e.end();
                this.i = true;
            }
        }
        return true;
    }

    public final void c() {
        if (this.d == null) {
            this.d = (Spliterator) this.c.get();
            this.c = null;
        }
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        c();
        int i = this.b.m;
        int i2 = i & ((~i) >> 1) & Y2.j & Y2.f;
        return (i2 & 64) != 0 ? (i2 & (-16449)) | (this.d.characteristics() & 16448) : i2;
    }

    public abstract void d();

    public abstract AbstractC5457a3 e(Spliterator spliterator);

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        c();
        return this.d.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        if (j$.com.android.tools.r8.a.n(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        c();
        if (Y2.SIZED.q(this.b.m)) {
            return this.d.getExactSizeIfKnown();
        }
        return -1L;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return j$.com.android.tools.r8.a.n(this, i);
    }

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.d);
    }

    @Override // j$.util.Spliterator
    public Spliterator trySplit() {
        if (!this.a || this.h != null || this.i) {
            return null;
        }
        c();
        Spliterator trySplit = this.d.trySplit();
        if (trySplit == null) {
            return null;
        }
        return e(trySplit);
    }
}
