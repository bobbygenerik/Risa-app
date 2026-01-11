package j$.util.stream;

/* renamed from: j$.util.stream.t, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5547t extends AbstractC5494i0 {
    public final /* synthetic */ int s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C5547t(AbstractC5453a abstractC5453a, int i, int i2) {
        super(abstractC5453a, i);
        this.s = i2;
    }

    @Override // j$.util.stream.AbstractC5453a
    public final InterfaceC5511l2 P0(int i, InterfaceC5511l2 interfaceC5511l2) {
        switch (this.s) {
            case 0:
                return new C5528p(this, interfaceC5511l2, 3);
            case 1:
                return new V(0, interfaceC5511l2);
            case 2:
                return new T(this, interfaceC5511l2, 3);
            case 3:
                return new C5464c0(this, interfaceC5511l2, 1);
            case 4:
                return interfaceC5511l2;
            default:
                return new C5464c0(this, interfaceC5511l2, 4);
        }
    }
}
