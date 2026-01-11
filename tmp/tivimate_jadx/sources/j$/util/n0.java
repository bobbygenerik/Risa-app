package j$.util;

import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class n0 extends j$.com.android.tools.r8.a implements a0 {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.i(this, consumer);
    }

    @Override // j$.util.a0
    public final void forEachRemaining(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
    }

    @Override // j$.util.Spliterator
    public final java.util.Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return j$.com.android.tools.r8.a.l(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return j$.com.android.tools.r8.a.n(this, i);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.y(this, consumer);
    }

    @Override // j$.util.a0
    public final boolean tryAdvance(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        return false;
    }

    @Override // j$.com.android.tools.r8.a, j$.util.U, j$.util.d0, j$.util.Spliterator
    public final /* bridge */ /* synthetic */ a0 trySplit() {
        return null;
    }

    @Override // j$.com.android.tools.r8.a, j$.util.U, j$.util.d0, j$.util.Spliterator
    public final /* bridge */ /* synthetic */ d0 trySplit() {
        return null;
    }
}
