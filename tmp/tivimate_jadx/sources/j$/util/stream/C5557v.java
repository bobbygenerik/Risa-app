package j$.util.stream;

import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.v, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5557v extends AbstractC5572y {
    public final /* synthetic */ int s;
    public final /* synthetic */ Object t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C5557v(AbstractC5453a abstractC5453a, int i, Object obj, int i2) {
        super(abstractC5453a, i);
        this.s = i2;
        this.t = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5557v(AbstractC5577z abstractC5577z, DoubleConsumer doubleConsumer) {
        super(abstractC5577z, 0);
        this.s = 1;
        this.t = doubleConsumer;
    }

    @Override // j$.util.stream.AbstractC5453a
    public final InterfaceC5511l2 P0(int i, InterfaceC5511l2 interfaceC5511l2) {
        switch (this.s) {
            case 0:
                return new C5552u(this, interfaceC5511l2);
            case 1:
                return new C5528p(this, interfaceC5511l2, 5);
            case 2:
                return new C5508l(this, interfaceC5511l2, 6);
            default:
                return new Y1(this, interfaceC5511l2);
        }
    }
}
