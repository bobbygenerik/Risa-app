package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class R0 extends I0 {
    @Override // j$.util.stream.G0
    public final void forEach(Consumer consumer) {
        this.a.forEach(consumer);
        this.b.forEach(consumer);
    }

    @Override // j$.util.stream.G0
    public final G0 j(long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == this.c) {
            return this;
        }
        long count = this.a.count();
        if (j >= count) {
            return this.b.j(j - count, j2 - count, intFunction);
        }
        if (j2 <= count) {
            return this.a.j(j, j2, intFunction);
        }
        return AbstractC5559v1.f0(Z2.REFERENCE, this.a.j(j, count, intFunction), this.b.j(0L, j2 - count, intFunction));
    }

    @Override // j$.util.stream.G0
    public final void k(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        G0 g0 = this.a;
        g0.k(objArr, i);
        this.b.k(objArr, i + ((int) g0.count()));
    }

    @Override // j$.util.stream.G0
    public final Object[] m(IntFunction intFunction) {
        long j = this.c;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) j);
        k(objArr, 0);
        return objArr;
    }

    @Override // j$.util.stream.G0
    public final Spliterator spliterator() {
        return new AbstractC5500j1(this);
    }

    public final String toString() {
        long j = this.c;
        return j < 32 ? String.format("ConcNode[%s.%s]", this.a, this.b) : String.format("ConcNode[size=%d]", Long.valueOf(j));
    }
}
