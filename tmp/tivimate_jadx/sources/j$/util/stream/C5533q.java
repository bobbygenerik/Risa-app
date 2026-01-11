package j$.util.stream;

import java.util.function.Consumer;

/* renamed from: j$.util.stream.q, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5533q extends AbstractC5466c2 {
    public final /* synthetic */ int s;
    public final /* synthetic */ Object t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C5533q(AbstractC5453a abstractC5453a, int i, Object obj, int i2) {
        super(abstractC5453a, i);
        this.s = i2;
        this.t = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5533q(AbstractC5471d2 abstractC5471d2, Consumer consumer) {
        super(abstractC5471d2, 0);
        this.s = 3;
        this.t = consumer;
    }

    @Override // j$.util.stream.AbstractC5453a
    public final InterfaceC5511l2 P0(int i, InterfaceC5511l2 interfaceC5511l2) {
        switch (this.s) {
            case 0:
                return new C5528p(this, interfaceC5511l2, 0);
            case 1:
                return new T(this, interfaceC5511l2, 0);
            case 2:
                return new C5464c0(this, interfaceC5511l2, 0);
            case 3:
                return new C5508l(this, interfaceC5511l2, 1);
            case 4:
                return new C5508l(this, interfaceC5511l2, 2);
            case 5:
                return new C5508l(this, interfaceC5511l2, 3);
            default:
                return new C5503k(this, interfaceC5511l2);
        }
    }
}
