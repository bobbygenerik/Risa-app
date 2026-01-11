package j$.util.stream;

import java.util.function.Consumer;

/* renamed from: j$.util.stream.a2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5456a2 extends AbstractC5471d2 {
    @Override // j$.util.stream.AbstractC5453a
    public final boolean O0() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC5453a
    public final InterfaceC5511l2 P0(int i, InterfaceC5511l2 interfaceC5511l2) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC5471d2, j$.util.stream.Stream
    public final void forEach(Consumer consumer) {
        if (this.h.r) {
            super.forEach(consumer);
        } else {
            R0().forEachRemaining(consumer);
        }
    }

    @Override // j$.util.stream.AbstractC5471d2, j$.util.stream.Stream
    public final void forEachOrdered(Consumer consumer) {
        if (this.h.r) {
            super.forEachOrdered(consumer);
        } else {
            R0().forEachRemaining(consumer);
        }
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final InterfaceC5483g unordered() {
        return !Y2.ORDERED.q(this.m) ? this : new AbstractC5453a(this, Y2.r);
    }
}
