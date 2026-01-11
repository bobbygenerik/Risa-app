package j$.util.stream;

import j$.util.C5450p;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.n3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5522n3 extends AbstractC5457a3 implements j$.util.a0 {
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, j$.util.stream.c, j$.util.stream.U2, java.util.function.LongConsumer] */
    @Override // j$.util.stream.AbstractC5457a3
    public final void d() {
        ?? u2 = new U2();
        this.h = u2;
        Objects.requireNonNull(u2);
        this.e = this.b.F0(new C5517m3(u2, 1));
        this.f = new C5450p(12, this);
    }

    @Override // j$.util.stream.AbstractC5457a3
    public final AbstractC5457a3 e(Spliterator spliterator) {
        return new AbstractC5457a3(this.b, spliterator, this.a);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.i(this, consumer);
    }

    @Override // j$.util.d0
    public final void forEachRemaining(LongConsumer longConsumer) {
        if (this.h != null || this.i) {
            do {
            } while (tryAdvance(longConsumer));
            return;
        }
        Objects.requireNonNull(longConsumer);
        c();
        Objects.requireNonNull(longConsumer);
        C5517m3 c5517m3 = new C5517m3(longConsumer, 0);
        this.b.E0(this.d, c5517m3);
        this.i = true;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.y(this, consumer);
    }

    @Override // j$.util.d0
    public final boolean tryAdvance(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        boolean a = a();
        if (a) {
            S2 s2 = (S2) this.h;
            long j = this.g;
            int r = s2.r(j);
            longConsumer.accept((s2.c == 0 && r == 0) ? ((long[]) s2.e)[(int) j] : ((long[][]) s2.f)[r][(int) (j - s2.d[r])]);
        }
        return a;
    }

    @Override // j$.util.stream.AbstractC5457a3, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.a0) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC5457a3, j$.util.Spliterator
    public final j$.util.a0 trySplit() {
        return (j$.util.a0) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC5457a3, j$.util.Spliterator
    public final j$.util.d0 trySplit() {
        return (j$.util.a0) super.trySplit();
    }
}
