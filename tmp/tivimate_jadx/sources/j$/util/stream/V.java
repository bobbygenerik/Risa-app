package j$.util.stream;

/* loaded from: classes2.dex */
public final class V extends AbstractC5481f2 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ V(int i, InterfaceC5511l2 interfaceC5511l2) {
        super(interfaceC5511l2);
        this.b = i;
    }

    @Override // j$.util.stream.InterfaceC5501j2, j$.util.stream.InterfaceC5511l2
    public final void accept(int i) {
        switch (this.b) {
            case 0:
                this.a.accept(i);
                return;
            default:
                this.a.accept(i);
                return;
        }
    }
}
