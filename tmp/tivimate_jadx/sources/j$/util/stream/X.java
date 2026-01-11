package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class X extends AbstractC5454a0 {
    @Override // j$.util.stream.AbstractC5453a
    public final boolean O0() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC5453a
    public final InterfaceC5511l2 P0(int i, InterfaceC5511l2 interfaceC5511l2) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC5454a0, j$.util.stream.IntStream
    public final void forEach(IntConsumer intConsumer) {
        if (this.h.r) {
            super.forEach(intConsumer);
        } else {
            AbstractC5454a0.T0(R0()).forEachRemaining(intConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC5454a0, j$.util.stream.IntStream
    public final void forEachOrdered(IntConsumer intConsumer) {
        if (this.h.r) {
            super.forEachOrdered(intConsumer);
        } else {
            AbstractC5454a0.T0(R0()).forEachRemaining(intConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC5453a, j$.util.stream.InterfaceC5483g
    public final IntStream parallel() {
        this.h.r = true;
        return this;
    }

    @Override // j$.util.stream.AbstractC5453a, j$.util.stream.InterfaceC5483g
    public final IntStream sequential() {
        this.h.r = false;
        return this;
    }

    @Override // j$.util.stream.AbstractC5453a, j$.util.stream.InterfaceC5483g
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final InterfaceC5483g unordered() {
        return !Y2.ORDERED.q(this.m) ? this : new C5542s(this, Y2.r, 2);
    }
}
