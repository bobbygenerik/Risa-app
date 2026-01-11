package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.w, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5562w extends AbstractC5577z {
    @Override // j$.util.stream.AbstractC5453a
    public final boolean O0() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC5453a
    public final InterfaceC5511l2 P0(int i, InterfaceC5511l2 interfaceC5511l2) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC5577z, j$.util.stream.C
    public final void forEach(DoubleConsumer doubleConsumer) {
        if (this.h.r) {
            super.forEach(doubleConsumer);
        } else {
            AbstractC5577z.T0(R0()).forEachRemaining(doubleConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC5577z, j$.util.stream.C
    public final void forEachOrdered(DoubleConsumer doubleConsumer) {
        if (this.h.r) {
            super.forEachOrdered(doubleConsumer);
        } else {
            AbstractC5577z.T0(R0()).forEachRemaining(doubleConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC5453a, j$.util.stream.InterfaceC5483g
    public final C parallel() {
        this.h.r = true;
        return this;
    }

    @Override // j$.util.stream.AbstractC5453a, j$.util.stream.InterfaceC5483g
    public final C sequential() {
        this.h.r = false;
        return this;
    }

    @Override // j$.util.stream.AbstractC5453a, j$.util.stream.InterfaceC5483g
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final InterfaceC5483g unordered() {
        return !Y2.ORDERED.q(this.m) ? this : new r(this, Y2.r, 1);
    }
}
