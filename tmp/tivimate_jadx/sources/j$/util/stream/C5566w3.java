package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.w3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5566w3 extends AbstractC5571x3 implements j$.util.a0, LongConsumer {
    public long f;

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.f = j;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.util.function.a.f(this, longConsumer);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.A3, j$.util.Spliterator] */
    @Override // j$.util.stream.A3
    public final Spliterator b(Spliterator spliterator) {
        return new A3((j$.util.a0) spliterator, this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.i(this, consumer);
    }

    @Override // j$.util.stream.AbstractC5571x3
    public final void g(Object obj) {
        ((LongConsumer) obj).accept(this.f);
    }

    @Override // j$.util.stream.AbstractC5571x3
    public final AbstractC5477e3 j(int i) {
        return new C5472d3(i);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.y(this, consumer);
    }
}
