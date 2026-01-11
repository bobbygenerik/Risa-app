package j$.util.stream;

/* renamed from: j$.util.stream.o2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5526o2 extends AbstractC5481f2 {
    public long b;
    public long c;
    public final /* synthetic */ C5531p2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5526o2(C5531p2 c5531p2, InterfaceC5511l2 interfaceC5511l2) {
        super(interfaceC5511l2);
        this.d = c5531p2;
        this.b = c5531p2.s;
        long j = c5531p2.t;
        this.c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.InterfaceC5501j2, j$.util.stream.InterfaceC5511l2
    public final void accept(int i) {
        long j = this.b;
        if (j != 0) {
            this.b = j - 1;
            return;
        }
        long j2 = this.c;
        if (j2 > 0) {
            this.c = j2 - 1;
            this.a.accept(i);
        }
    }

    @Override // j$.util.stream.AbstractC5481f2, j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        this.a.c(AbstractC5559v1.X(j, this.d.s, this.c));
    }

    @Override // j$.util.stream.AbstractC5481f2, j$.util.stream.InterfaceC5511l2
    public final boolean e() {
        return this.c == 0 || this.a.e();
    }
}
