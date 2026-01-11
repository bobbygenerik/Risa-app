package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.y, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5572y extends AbstractC5577z {
    @Override // j$.util.stream.AbstractC5453a
    public final boolean O0() {
        return false;
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
