package j$.util.stream;

/* renamed from: j$.util.stream.s2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5545s2 extends AbstractC5476e2 {
    public long b;
    public long c;
    public final /* synthetic */ C5550t2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5545s2(C5550t2 c5550t2, InterfaceC5511l2 interfaceC5511l2) {
        super(interfaceC5511l2);
        this.d = c5550t2;
        this.b = c5550t2.s;
        long j = c5550t2.t;
        this.c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.InterfaceC5496i2, j$.util.stream.InterfaceC5511l2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        long j = this.b;
        if (j != 0) {
            this.b = j - 1;
            return;
        }
        long j2 = this.c;
        if (j2 > 0) {
            this.c = j2 - 1;
            this.a.accept(d);
        }
    }

    @Override // j$.util.stream.AbstractC5476e2, j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        this.a.c(AbstractC5559v1.X(j, this.d.s, this.c));
    }

    @Override // j$.util.stream.AbstractC5476e2, j$.util.stream.InterfaceC5511l2
    public final boolean e() {
        return this.c == 0 || this.a.e();
    }
}
