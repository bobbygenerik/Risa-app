package j$.util.stream;

import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class T1 extends W1 implements InterfaceC5501j2 {
    @Override // j$.util.stream.W1, j$.util.stream.InterfaceC5511l2
    public final void accept(int i) {
        this.b++;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        d((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.a.e(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC5501j2
    public final /* synthetic */ void d(Integer num) {
        AbstractC5559v1.G(this, num);
    }

    @Override // j$.util.stream.R1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.b);
    }

    @Override // j$.util.stream.Q1
    public final void i(Q1 q1) {
        this.b += ((W1) q1).b;
    }
}
