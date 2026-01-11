package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class P2 extends T2 implements j$.util.X {
    public final /* synthetic */ Q2 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public P2(Q2 q2, int i, int i2, int i3, int i4) {
        super(q2, i, i2, i3, i4);
        this.g = q2;
    }

    @Override // j$.util.stream.T2
    public final void a(int i, Object obj, Object obj2) {
        ((IntConsumer) obj2).accept(((int[]) obj)[i]);
    }

    @Override // j$.util.stream.T2
    public final j$.util.d0 b(Object obj, int i, int i2) {
        int[] iArr = (int[]) obj;
        int i3 = i2 + i;
        Spliterators.a(((int[]) Objects.requireNonNull(iArr)).length, i, i3);
        return new j$.util.p0(iArr, i, i3, 1040);
    }

    @Override // j$.util.stream.T2
    public final j$.util.d0 c(int i, int i2, int i3, int i4) {
        return new P2(this.g, i, i2, i3, i4);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.h(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.x(this, consumer);
    }
}
