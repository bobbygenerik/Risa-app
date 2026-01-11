package j$.util.stream;

import j$.util.C5450p;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.j3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5502j3 extends AbstractC5457a3 implements j$.util.U {
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, j$.util.stream.c, java.util.function.DoubleConsumer, j$.util.stream.U2] */
    @Override // j$.util.stream.AbstractC5457a3
    public final void d() {
        ?? u2 = new U2();
        this.h = u2;
        Objects.requireNonNull(u2);
        this.e = this.b.F0(new C5497i3(u2, 1));
        this.f = new C5450p(10, this);
    }

    @Override // j$.util.stream.AbstractC5457a3
    public final AbstractC5457a3 e(Spliterator spliterator) {
        return new AbstractC5457a3(this.b, spliterator, this.a);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.g(this, consumer);
    }

    @Override // j$.util.d0
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        if (this.h != null || this.i) {
            do {
            } while (tryAdvance(doubleConsumer));
            return;
        }
        Objects.requireNonNull(doubleConsumer);
        c();
        Objects.requireNonNull(doubleConsumer);
        C5497i3 c5497i3 = new C5497i3(doubleConsumer, 0);
        this.b.E0(this.d, c5497i3);
        this.i = true;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.w(this, consumer);
    }

    @Override // j$.util.d0
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        boolean a = a();
        if (a) {
            O2 o2 = (O2) this.h;
            long j = this.g;
            int r = o2.r(j);
            doubleConsumer.accept((o2.c == 0 && r == 0) ? ((double[]) o2.e)[(int) j] : ((double[][]) o2.f)[r][(int) (j - o2.d[r])]);
        }
        return a;
    }

    @Override // j$.util.stream.AbstractC5457a3, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.U) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC5457a3, j$.util.Spliterator
    public final j$.util.U trySplit() {
        return (j$.util.U) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC5457a3, j$.util.Spliterator
    public final j$.util.d0 trySplit() {
        return (j$.util.U) super.trySplit();
    }
}
