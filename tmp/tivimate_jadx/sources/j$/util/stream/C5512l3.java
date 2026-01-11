package j$.util.stream;

import j$.util.C5450p;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.l3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5512l3 extends AbstractC5457a3 implements j$.util.X {
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.function.IntConsumer, java.lang.Object, j$.util.stream.c, j$.util.stream.U2] */
    @Override // j$.util.stream.AbstractC5457a3
    public final void d() {
        ?? u2 = new U2();
        this.h = u2;
        Objects.requireNonNull(u2);
        this.e = this.b.F0(new C5507k3(u2, 1));
        this.f = new C5450p(11, this);
    }

    @Override // j$.util.stream.AbstractC5457a3
    public final AbstractC5457a3 e(Spliterator spliterator) {
        return new AbstractC5457a3(this.b, spliterator, this.a);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.h(this, consumer);
    }

    @Override // j$.util.d0
    public final void forEachRemaining(IntConsumer intConsumer) {
        if (this.h != null || this.i) {
            do {
            } while (tryAdvance(intConsumer));
            return;
        }
        Objects.requireNonNull(intConsumer);
        c();
        Objects.requireNonNull(intConsumer);
        C5507k3 c5507k3 = new C5507k3(intConsumer, 0);
        this.b.E0(this.d, c5507k3);
        this.i = true;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.x(this, consumer);
    }

    @Override // j$.util.d0
    public final boolean tryAdvance(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        boolean a = a();
        if (a) {
            Q2 q2 = (Q2) this.h;
            long j = this.g;
            int r = q2.r(j);
            intConsumer.accept((q2.c == 0 && r == 0) ? ((int[]) q2.e)[(int) j] : ((int[][]) q2.f)[r][(int) (j - q2.d[r])]);
        }
        return a;
    }

    @Override // j$.util.stream.AbstractC5457a3, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.X) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC5457a3, j$.util.Spliterator
    public final j$.util.X trySplit() {
        return (j$.util.X) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC5457a3, j$.util.Spliterator
    public final j$.util.d0 trySplit() {
        return (j$.util.X) super.trySplit();
    }
}
