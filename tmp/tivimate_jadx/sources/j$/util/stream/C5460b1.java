package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.b1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C5460b1 implements C0 {
    public final int[] a;
    public int b;

    public C5460b1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.a = new int[(int) j];
        this.b = 0;
    }

    public C5460b1(int[] iArr) {
        this.a = iArr;
        this.b = iArr.length;
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
        int[] iArr = this.a;
        int length = iArr.length;
        int i = this.b;
        return length == i ? iArr : Arrays.copyOf(iArr, i);
    }

    @Override // j$.util.stream.G0
    public final long count() {
        return this.b;
    }

    @Override // j$.util.stream.F0
    public final void f(int i, Object obj) {
        int i2 = this.b;
        System.arraycopy(this.a, 0, (int[]) obj, i, i2);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC5559v1.R(this, consumer);
    }

    @Override // j$.util.stream.F0
    public final void g(Object obj) {
        IntConsumer intConsumer = (IntConsumer) obj;
        for (int i = 0; i < this.b; i++) {
            intConsumer.accept(this.a[i]);
        }
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ G0 j(long j, long j2, IntFunction intFunction) {
        return AbstractC5559v1.U(this, j, j2);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ void k(Object[] objArr, int i) {
        AbstractC5559v1.O(this, (Integer[]) objArr, i);
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
        int[] iArr = this.a;
        Spliterators.a(((int[]) Objects.requireNonNull(iArr)).length, 0, i);
        return new j$.util.p0(iArr, 0, i, 1040);
    }

    @Override // j$.util.stream.F0, j$.util.stream.G0
    public final j$.util.d0 spliterator() {
        int i = this.b;
        int[] iArr = this.a;
        Spliterators.a(((int[]) Objects.requireNonNull(iArr)).length, 0, i);
        return new j$.util.p0(iArr, 0, i, 1040);
    }

    public String toString() {
        int[] iArr = this.a;
        return String.format("IntArrayNode[%d][%s]", Integer.valueOf(iArr.length - this.b), Arrays.toString(iArr));
    }
}
