package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.g0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5484g0 extends AbstractC5499j0 {
    @Override // j$.util.stream.AbstractC5453a
    public final boolean O0() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC5453a
    public final InterfaceC5511l2 P0(int i, InterfaceC5511l2 interfaceC5511l2) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC5499j0, j$.util.stream.InterfaceC5514m0
    public final void forEach(LongConsumer longConsumer) {
        if (this.h.r) {
            super.forEach(longConsumer);
        } else {
            AbstractC5499j0.T0(R0()).forEachRemaining(longConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC5499j0, j$.util.stream.InterfaceC5514m0
    public final void forEachOrdered(LongConsumer longConsumer) {
        if (this.h.r) {
            super.forEachOrdered(longConsumer);
        } else {
            AbstractC5499j0.T0(R0()).forEachRemaining(longConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC5453a, j$.util.stream.InterfaceC5483g
    public final InterfaceC5514m0 parallel() {
        this.h.r = true;
        return this;
    }

    @Override // j$.util.stream.AbstractC5453a, j$.util.stream.InterfaceC5483g
    public final InterfaceC5514m0 sequential() {
        this.h.r = false;
        return this;
    }

    @Override // j$.util.stream.AbstractC5453a, j$.util.stream.InterfaceC5483g
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final InterfaceC5483g unordered() {
        return !Y2.ORDERED.q(this.m) ? this : new C5547t(this, Y2.r, 4);
    }
}
