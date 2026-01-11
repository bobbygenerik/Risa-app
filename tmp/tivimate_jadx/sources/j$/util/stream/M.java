package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class M extends P implements InterfaceC5501j2 {
    public final IntConsumer b;

    public M(IntConsumer intConsumer, boolean z) {
        super(z);
        this.b = intConsumer;
    }

    @Override // j$.util.stream.P, j$.util.stream.InterfaceC5511l2
    public final void accept(int i) {
        this.b.accept(i);
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

    @Override // j$.util.stream.E3
    public final Object f(AbstractC5453a abstractC5453a, Spliterator spliterator) {
        abstractC5453a.E0(spliterator, this);
        return null;
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // j$.util.stream.E3
    public final /* bridge */ /* synthetic */ Object j(AbstractC5559v1 abstractC5559v1, Spliterator spliterator) {
        a(abstractC5559v1, spliterator);
        return null;
    }
}
