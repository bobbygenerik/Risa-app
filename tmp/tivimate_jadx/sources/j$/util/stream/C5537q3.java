package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.q3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5537q3 extends AbstractC5541r3 implements j$.util.a0 {
    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.t3, j$.util.Spliterator] */
    @Override // j$.util.stream.AbstractC5551t3
    public final Spliterator a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new AbstractC5551t3((j$.util.a0) spliterator, j, j2, j3, j4);
    }

    @Override // j$.util.stream.AbstractC5541r3
    public final Object b() {
        return new D0(1);
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
