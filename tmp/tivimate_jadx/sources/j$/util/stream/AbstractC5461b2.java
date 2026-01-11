package j$.util.stream;

/* renamed from: j$.util.stream.b2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5461b2 extends AbstractC5471d2 {
    @Override // j$.util.stream.AbstractC5453a
    public final boolean O0() {
        return true;
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final InterfaceC5483g unordered() {
        return !Y2.ORDERED.q(this.m) ? this : new AbstractC5453a(this, Y2.r);
    }
}
