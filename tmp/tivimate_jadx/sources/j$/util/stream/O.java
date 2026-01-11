package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class O extends P {
    public final Consumer b;

    public O(Consumer consumer, boolean z) {
        super(z);
        this.b = consumer;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        this.b.n(obj);
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
