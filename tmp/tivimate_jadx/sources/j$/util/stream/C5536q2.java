package j$.util.stream;

/* renamed from: j$.util.stream.q2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5536q2 extends AbstractC5486g2 {
    public long b;
    public long c;
    public final /* synthetic */ C5540r2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5536q2(C5540r2 c5540r2, InterfaceC5511l2 interfaceC5511l2) {
        super(interfaceC5511l2);
        this.d = c5540r2;
        this.b = c5540r2.s;
        long j = c5540r2.t;
        this.c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.InterfaceC5506k2, j$.util.stream.InterfaceC5511l2
    public final void accept(long j) {
        long j2 = this.b;
        if (j2 != 0) {
            this.b = j2 - 1;
            return;
        }
        long j3 = this.c;
        if (j3 > 0) {
            this.c = j3 - 1;
            this.a.accept(j);
        }
    }

    @Override // j$.util.stream.AbstractC5486g2, j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        this.a.c(AbstractC5559v1.X(j, this.d.s, this.c));
    }

    @Override // j$.util.stream.AbstractC5486g2, j$.util.stream.InterfaceC5511l2
    public final boolean e() {
        return this.c == 0 || this.a.e();
    }
}
