package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.v3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5561v3 extends AbstractC5571x3 implements j$.util.X, IntConsumer {
    public int f;

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.f = i;
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.a.e(this, intConsumer);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.A3, j$.util.Spliterator] */
    @Override // j$.util.stream.A3
    public final Spliterator b(Spliterator spliterator) {
        return new A3((j$.util.X) spliterator, this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.h(this, consumer);
    }

    @Override // j$.util.stream.AbstractC5571x3
    public final void g(Object obj) {
        ((IntConsumer) obj).accept(this.f);
    }

    @Override // j$.util.stream.AbstractC5571x3
    public final AbstractC5477e3 j(int i) {
        return new C5467c3(i);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.x(this, consumer);
    }
}
