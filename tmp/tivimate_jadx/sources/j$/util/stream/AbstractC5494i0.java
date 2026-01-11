package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.i0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5494i0 extends AbstractC5499j0 {
    @Override // j$.util.stream.AbstractC5453a
    public final boolean O0() {
        return false;
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
