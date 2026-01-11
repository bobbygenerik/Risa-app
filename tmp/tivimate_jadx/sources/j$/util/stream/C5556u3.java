package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.u3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5556u3 extends AbstractC5571x3 implements j$.util.U, DoubleConsumer {
    public double f;

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.f = d;
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.util.function.a.d(this, doubleConsumer);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.A3, j$.util.Spliterator] */
    @Override // j$.util.stream.A3
    public final Spliterator b(Spliterator spliterator) {
        return new A3((j$.util.U) spliterator, this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.g(this, consumer);
    }

    @Override // j$.util.stream.AbstractC5571x3
    public final void g(Object obj) {
        ((DoubleConsumer) obj).accept(this.f);
    }

    @Override // j$.util.stream.AbstractC5571x3
    public final AbstractC5477e3 j(int i) {
        return new C5462b3(i);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.w(this, consumer);
    }
}
