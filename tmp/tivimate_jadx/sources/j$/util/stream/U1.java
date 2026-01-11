package j$.util.stream;

import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class U1 extends W1 implements InterfaceC5506k2 {
    @Override // j$.util.stream.W1, j$.util.stream.InterfaceC5511l2
    public final void accept(long j) {
        this.b++;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        l((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.util.function.a.f(this, longConsumer);
    }

    @Override // j$.util.stream.R1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.b);
    }

    @Override // j$.util.stream.Q1
    public final void i(Q1 q1) {
        this.b += ((W1) q1).b;
    }

    @Override // j$.util.stream.InterfaceC5506k2
    public final /* synthetic */ void l(Long l) {
        AbstractC5559v1.I(this, l);
    }
}
