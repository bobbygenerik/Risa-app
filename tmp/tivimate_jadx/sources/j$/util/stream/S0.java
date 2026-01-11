package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public class S0 implements A0 {
    public final double[] a;
    public int b;

    public S0(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.a = new double[(int) j];
        this.b = 0;
    }

    public S0(double[] dArr) {
        this.a = dArr;
        this.b = dArr.length;
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
        double[] dArr = this.a;
        int length = dArr.length;
        int i = this.b;
        return length == i ? dArr : Arrays.copyOf(dArr, i);
    }

    @Override // j$.util.stream.G0
    public final long count() {
        return this.b;
    }

    @Override // j$.util.stream.F0
    public final void f(int i, Object obj) {
        int i2 = this.b;
        System.arraycopy(this.a, 0, (double[]) obj, i, i2);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC5559v1.Q(this, consumer);
    }

    @Override // j$.util.stream.F0
    public final void g(Object obj) {
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj;
        for (int i = 0; i < this.b; i++) {
            doubleConsumer.accept(this.a[i]);
        }
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ G0 j(long j, long j2, IntFunction intFunction) {
        return AbstractC5559v1.T(this, j, j2);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ void k(Object[] objArr, int i) {
        AbstractC5559v1.N(this, (Double[]) objArr, i);
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
        double[] dArr = this.a;
        Spliterators.a(((double[]) Objects.requireNonNull(dArr)).length, 0, i);
        return new j$.util.k0(dArr, 0, i, 1040);
    }

    @Override // j$.util.stream.F0, j$.util.stream.G0
    public final j$.util.d0 spliterator() {
        int i = this.b;
        double[] dArr = this.a;
        Spliterators.a(((double[]) Objects.requireNonNull(dArr)).length, 0, i);
        return new j$.util.k0(dArr, 0, i, 1040);
    }

    public String toString() {
        double[] dArr = this.a;
        return String.format("DoubleArrayNode[%d][%s]", Integer.valueOf(dArr.length - this.b), Arrays.toString(dArr));
    }
}
