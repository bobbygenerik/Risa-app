package j$.util.stream;

import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class U extends Z {
    public final /* synthetic */ int s;
    public final /* synthetic */ Object t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public U(AbstractC5454a0 abstractC5454a0, IntConsumer intConsumer) {
        super(abstractC5454a0, 0);
        this.s = 0;
        this.t = intConsumer;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ U(AbstractC5453a abstractC5453a, int i, Object obj, int i2) {
        super(abstractC5453a, i);
        this.s = i2;
        this.t = obj;
    }

    @Override // j$.util.stream.AbstractC5453a
    public final InterfaceC5511l2 P0(int i, InterfaceC5511l2 interfaceC5511l2) {
        switch (this.s) {
            case 0:
                return new T(this, interfaceC5511l2, 1);
            case 1:
                return new W(this, interfaceC5511l2);
            case 2:
                return new C5508l(this, interfaceC5511l2, 4);
            default:
                return new Y1(this, interfaceC5511l2);
        }
    }
}
