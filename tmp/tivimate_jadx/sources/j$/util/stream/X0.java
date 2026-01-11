package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class X0 extends Z0 implements E0 {
    @Override // j$.util.stream.Z0, j$.util.stream.G0
    public final F0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.Z0, j$.util.stream.G0
    public final /* bridge */ /* synthetic */ G0 a(int i) {
        a(i);
        throw null;
    }

    @Override // j$.util.stream.F0
    public final /* bridge */ /* synthetic */ Object b() {
        return AbstractC5559v1.f;
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC5559v1.S(this, consumer);
    }

    @Override // j$.util.stream.Z0, j$.util.stream.G0
    public final /* synthetic */ G0 j(long j, long j2, IntFunction intFunction) {
        return AbstractC5559v1.V(this, j, j2);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ void k(Object[] objArr, int i) {
        AbstractC5559v1.P(this, (Long[]) objArr, i);
    }

    @Override // j$.util.stream.G0
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return Spliterators.c;
    }

    @Override // j$.util.stream.G0
    public final /* bridge */ /* synthetic */ j$.util.d0 spliterator() {
        return Spliterators.c;
    }
}
