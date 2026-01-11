package j$.util.stream;

import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.f0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5479f0 extends AbstractC5494i0 {
    public final /* synthetic */ int s;
    public final /* synthetic */ Object t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C5479f0(AbstractC5453a abstractC5453a, int i, Object obj, int i2) {
        super(abstractC5453a, i);
        this.s = i2;
        this.t = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5479f0(AbstractC5499j0 abstractC5499j0, LongConsumer longConsumer) {
        super(abstractC5499j0, 0);
        this.s = 1;
        this.t = longConsumer;
    }

    @Override // j$.util.stream.AbstractC5453a
    public final InterfaceC5511l2 P0(int i, InterfaceC5511l2 interfaceC5511l2) {
        switch (this.s) {
            case 0:
                return new C5474e0(this, interfaceC5511l2);
            case 1:
                return new C5464c0(this, interfaceC5511l2, 5);
            case 2:
                return new Y1(this, interfaceC5511l2);
            default:
                return new C5508l(this, interfaceC5511l2, 5);
        }
    }
}
