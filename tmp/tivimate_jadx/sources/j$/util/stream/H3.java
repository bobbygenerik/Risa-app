package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* loaded from: classes2.dex */
public final class H3 extends AbstractC5461b2 implements P3 {
    public final /* synthetic */ int s;
    public final /* synthetic */ Predicate t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ H3(AbstractC5471d2 abstractC5471d2, int i, Predicate predicate, int i2) {
        super(abstractC5471d2, i);
        this.s = i2;
        this.t = predicate;
    }

    @Override // j$.util.stream.AbstractC5453a
    public final G0 M0(AbstractC5559v1 abstractC5559v1, Spliterator spliterator, IntFunction intFunction) {
        switch (this.s) {
            case 0:
                return (G0) new S3(this, abstractC5559v1, spliterator, intFunction).invoke();
            default:
                return (G0) new R3(this, abstractC5559v1, spliterator, intFunction).invoke();
        }
    }

    @Override // j$.util.stream.AbstractC5453a
    public final Spliterator N0(AbstractC5453a abstractC5453a, Spliterator spliterator) {
        switch (this.s) {
            case 0:
                return Y2.ORDERED.q(abstractC5453a.m) ? M0(abstractC5453a, spliterator, new C5459b0(4)).spliterator() : new W3(abstractC5453a.G0(spliterator), this.t, 1);
            default:
                return Y2.ORDERED.q(abstractC5453a.m) ? M0(abstractC5453a, spliterator, new C5459b0(4)).spliterator() : new W3(abstractC5453a.G0(spliterator), this.t, 0);
        }
    }

    @Override // j$.util.stream.AbstractC5453a
    public final InterfaceC5511l2 P0(int i, InterfaceC5511l2 interfaceC5511l2) {
        switch (this.s) {
            case 0:
                return new C5503k(this, interfaceC5511l2);
            default:
                return new I3(this, interfaceC5511l2, false);
        }
    }

    @Override // j$.util.stream.P3
    public Q3 i(InterfaceC5573y0 interfaceC5573y0, boolean z) {
        return new I3(this, interfaceC5573y0, z);
    }
}
