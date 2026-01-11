package j$.util.stream;

import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public abstract class Z0 implements G0 {
    @Override // j$.util.stream.G0
    public G0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.G0
    public final long count() {
        return 0L;
    }

    public final void f(int i, Object obj) {
    }

    public final void g(Object obj) {
    }

    @Override // j$.util.stream.G0
    public /* synthetic */ G0 j(long j, long j2, IntFunction intFunction) {
        return AbstractC5559v1.W(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.G0
    public final Object[] m(IntFunction intFunction) {
        return (Object[]) intFunction.apply(0);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ int o() {
        return 0;
    }
}
