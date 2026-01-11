package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class P0 extends Q0 implements E0 {
    @Override // j$.util.stream.G0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC5559v1.S(this, consumer);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ G0 j(long j, long j2, IntFunction intFunction) {
        return AbstractC5559v1.V(this, j, j2);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ void k(Object[] objArr, int i) {
        AbstractC5559v1.P(this, (Long[]) objArr, i);
    }

    @Override // j$.util.stream.F0
    public final Object newArray(int i) {
        return new long[i];
    }

    @Override // j$.util.stream.G0
    public final Spliterator spliterator() {
        return new AbstractC5500j1(this);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.j1, j$.util.d0] */
    @Override // j$.util.stream.G0
    public final j$.util.d0 spliterator() {
        return new AbstractC5500j1(this);
    }
}
