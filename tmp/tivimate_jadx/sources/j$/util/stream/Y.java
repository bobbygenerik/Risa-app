package j$.util.stream;

import j$.util.Spliterator;

/* loaded from: classes2.dex */
public abstract class Y extends AbstractC5454a0 {
    @Override // j$.util.stream.AbstractC5453a
    public final boolean O0() {
        return true;
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
