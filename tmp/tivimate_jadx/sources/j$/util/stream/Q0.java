package j$.util.stream;

import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public abstract class Q0 extends I0 implements F0 {
    @Override // j$.util.stream.F0
    public final Object b() {
        long j = this.c;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object newArray = newArray((int) j);
        f(0, newArray);
        return newArray;
    }

    @Override // j$.util.stream.F0
    public final void f(int i, Object obj) {
        G0 g0 = this.a;
        ((F0) g0).f(i, obj);
        ((F0) this.b).f(i + ((int) ((F0) g0).count()), obj);
    }

    @Override // j$.util.stream.F0
    public final void g(Object obj) {
        ((F0) this.a).g(obj);
        ((F0) this.b).g(obj);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ Object[] m(IntFunction intFunction) {
        return AbstractC5559v1.M(this, intFunction);
    }

    public final String toString() {
        long j = this.c;
        return j < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.a, this.b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(j));
    }
}
