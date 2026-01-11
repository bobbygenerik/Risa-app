package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.k1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C5505k1 implements E0 {
    public final long[] a;
    public int b;

    public C5505k1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.a = new long[(int) j];
        this.b = 0;
    }

    public C5505k1(long[] jArr) {
        this.a = jArr;
        this.b = jArr.length;
    }

    @Override // j$.util.stream.F0, j$.util.stream.G0
    public final F0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.G0
    public final /* bridge */ /* synthetic */ G0 a(int i) {
        a(i);
        throw null;
    }

    @Override // j$.util.stream.F0
    public final Object b() {
        long[] jArr = this.a;
        int length = jArr.length;
        int i = this.b;
        return length == i ? jArr : Arrays.copyOf(jArr, i);
    }

    @Override // j$.util.stream.G0
    public final long count() {
        return this.b;
    }

    @Override // j$.util.stream.F0
    public final void f(int i, Object obj) {
        int i2 = this.b;
        System.arraycopy(this.a, 0, (long[]) obj, i, i2);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC5559v1.S(this, consumer);
    }

    @Override // j$.util.stream.F0
    public final void g(Object obj) {
        LongConsumer longConsumer = (LongConsumer) obj;
        for (int i = 0; i < this.b; i++) {
            longConsumer.accept(this.a[i]);
        }
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ G0 j(long j, long j2, IntFunction intFunction) {
        return AbstractC5559v1.V(this, j, j2);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ void k(Object[] objArr, int i) {
        AbstractC5559v1.P(this, (Long[]) objArr, i);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ Object[] m(IntFunction intFunction) {
        return AbstractC5559v1.M(this, intFunction);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ int o() {
        return 0;
    }

    @Override // j$.util.stream.G0
    public final Spliterator spliterator() {
        int i = this.b;
        long[] jArr = this.a;
        Spliterators.a(((long[]) Objects.requireNonNull(jArr)).length, 0, i);
        return new j$.util.r0(jArr, 0, i, 1040);
    }

    @Override // j$.util.stream.F0, j$.util.stream.G0
    public final j$.util.d0 spliterator() {
        int i = this.b;
        long[] jArr = this.a;
        Spliterators.a(((long[]) Objects.requireNonNull(jArr)).length, 0, i);
        return new j$.util.r0(jArr, 0, i, 1040);
    }

    public String toString() {
        long[] jArr = this.a;
        return String.format("LongArrayNode[%d][%s]", Integer.valueOf(jArr.length - this.b), Arrays.toString(jArr));
    }
}
