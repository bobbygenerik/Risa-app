package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class N2 extends T2 implements j$.util.U {
    public final /* synthetic */ O2 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N2(O2 o2, int i, int i2, int i3, int i4) {
        super(o2, i, i2, i3, i4);
        this.g = o2;
    }

    @Override // j$.util.stream.T2
    public final void a(int i, Object obj, Object obj2) {
        ((DoubleConsumer) obj2).accept(((double[]) obj)[i]);
    }

    @Override // j$.util.stream.T2
    public final j$.util.d0 b(Object obj, int i, int i2) {
        double[] dArr = (double[]) obj;
        int i3 = i2 + i;
        Spliterators.a(((double[]) Objects.requireNonNull(dArr)).length, i, i3);
        return new j$.util.k0(dArr, i, i3, 1040);
    }

    @Override // j$.util.stream.T2
    public final j$.util.d0 c(int i, int i2, int i3, int i4) {
        return new N2(this.g, i, i2, i3, i4);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.g(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.w(this, consumer);
    }
}
