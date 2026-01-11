package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class F2 extends AbstractC5489h0 implements P3 {
    public final /* synthetic */ int s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ F2(AbstractC5453a abstractC5453a, int i, int i2) {
        super(abstractC5453a, i);
        this.s = i2;
    }

    @Override // j$.util.stream.AbstractC5453a
    public final G0 M0(AbstractC5559v1 abstractC5559v1, Spliterator spliterator, IntFunction intFunction) {
        switch (this.s) {
            case 0:
                if (Y2.SORTED.q(((AbstractC5453a) abstractC5559v1).m)) {
                    return abstractC5559v1.k0(spliterator, false, intFunction);
                }
                long[] jArr = (long[]) ((E0) abstractC5559v1.k0(spliterator, true, intFunction)).b();
                Arrays.sort(jArr);
                return new C5505k1(jArr);
            case 1:
                return (G0) new S3(this, abstractC5559v1, spliterator, intFunction).invoke();
            default:
                return (G0) new R3(this, abstractC5559v1, spliterator, intFunction).invoke();
        }
    }

    @Override // j$.util.stream.AbstractC5453a
    public Spliterator N0(AbstractC5453a abstractC5453a, Spliterator spliterator) {
        switch (this.s) {
            case 1:
                return Y2.ORDERED.q(abstractC5453a.m) ? M0(abstractC5453a, spliterator, new C5459b0(20)).spliterator() : new V3((j$.util.a0) abstractC5453a.G0(spliterator), 1);
            case 2:
                return Y2.ORDERED.q(abstractC5453a.m) ? M0(abstractC5453a, spliterator, new C5459b0(21)).spliterator() : new V3((j$.util.a0) abstractC5453a.G0(spliterator), 0);
            default:
                return super.N0(abstractC5453a, spliterator);
        }
    }

    @Override // j$.util.stream.AbstractC5453a
    public final InterfaceC5511l2 P0(int i, InterfaceC5511l2 interfaceC5511l2) {
        switch (this.s) {
            case 0:
                Objects.requireNonNull(interfaceC5511l2);
                if (Y2.SORTED.q(i)) {
                    return interfaceC5511l2;
                }
                return Y2.SIZED.q(i) ? new AbstractC5486g2(interfaceC5511l2) : new AbstractC5486g2(interfaceC5511l2);
            case 1:
                return new L3(this, interfaceC5511l2);
            default:
                return new M3(this, interfaceC5511l2, false);
        }
    }

    @Override // j$.util.stream.P3
    public Q3 i(InterfaceC5573y0 interfaceC5573y0, boolean z) {
        return new M3(this, interfaceC5573y0, z);
    }
}
