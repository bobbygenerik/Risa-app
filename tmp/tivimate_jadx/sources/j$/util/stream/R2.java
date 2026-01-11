package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class R2 extends T2 implements j$.util.a0 {
    public final /* synthetic */ S2 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public R2(S2 s2, int i, int i2, int i3, int i4) {
        super(s2, i, i2, i3, i4);
        this.g = s2;
    }

    @Override // j$.util.stream.T2
    public final void a(int i, Object obj, Object obj2) {
        ((LongConsumer) obj2).accept(((long[]) obj)[i]);
    }

    @Override // j$.util.stream.T2
    public final j$.util.d0 b(Object obj, int i, int i2) {
        long[] jArr = (long[]) obj;
        int i3 = i2 + i;
        Spliterators.a(((long[]) Objects.requireNonNull(jArr)).length, i, i3);
        return new j$.util.r0(jArr, i, i3, 1040);
    }

    @Override // j$.util.stream.T2
    public final j$.util.d0 c(int i, int i2, int i3, int i4) {
        return new R2(this.g, i, i2, i3, i4);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.i(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.y(this, consumer);
    }
}
