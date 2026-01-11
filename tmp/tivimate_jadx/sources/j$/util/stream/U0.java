package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class U0 extends O2 implements A0, InterfaceC5558v0 {
    @Override // j$.util.stream.F0, j$.util.stream.G0
    public final F0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.G0
    public final /* bridge */ /* synthetic */ G0 a(int i) {
        a(i);
        throw null;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void accept(int i) {
        AbstractC5559v1.K();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void accept(long j) {
        AbstractC5559v1.L();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        n((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.a.c(this, consumer);
    }

    @Override // j$.util.stream.U2, j$.util.stream.F0
    public final Object b() {
        return (double[]) super.b();
    }

    @Override // j$.util.stream.InterfaceC5558v0, j$.util.stream.InterfaceC5573y0
    public final A0 build() {
        return this;
    }

    @Override // j$.util.stream.InterfaceC5573y0
    public final G0 build() {
        return this;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        clear();
        s(j);
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final void end() {
    }

    @Override // j$.util.stream.U2, j$.util.stream.F0
    public final void f(int i, Object obj) {
        super.f(i, (double[]) obj);
    }

    @Override // j$.util.stream.U2, j$.util.stream.F0
    public final void g(Object obj) {
        super.g((DoubleConsumer) obj);
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

    @Override // j$.util.stream.InterfaceC5496i2
    public final /* synthetic */ void n(Double d) {
        AbstractC5559v1.E(this, d);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ int o() {
        return 0;
    }

    @Override // j$.util.stream.O2, j$.util.stream.U2, java.lang.Iterable
    public final Spliterator spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.O2, j$.util.stream.U2, java.lang.Iterable
    public final j$.util.d0 spliterator() {
        return super.spliterator();
    }
}
