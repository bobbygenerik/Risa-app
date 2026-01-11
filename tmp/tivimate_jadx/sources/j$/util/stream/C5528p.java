package j$.util.stream;

import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoublePredicate;
import java.util.function.DoubleToIntFunction;
import java.util.function.DoubleToLongFunction;
import java.util.function.DoubleUnaryOperator;

/* renamed from: j$.util.stream.p, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5528p extends AbstractC5476e2 {
    public final /* synthetic */ int b;
    public final /* synthetic */ AbstractC5453a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C5528p(AbstractC5453a abstractC5453a, InterfaceC5511l2 interfaceC5511l2, int i) {
        super(interfaceC5511l2);
        this.b = i;
        this.c = abstractC5453a;
    }

    @Override // j$.util.stream.InterfaceC5496i2, j$.util.stream.InterfaceC5511l2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        switch (this.b) {
            case 0:
                this.a.accept((InterfaceC5511l2) ((DoubleFunction) ((C5533q) this.c).t).apply(d));
                return;
            case 1:
                ((r) this.c).getClass();
                DoubleUnaryOperator doubleUnaryOperator = null;
                doubleUnaryOperator.applyAsDouble(d);
                throw null;
            case 2:
                ((C5542s) this.c).getClass();
                DoubleToIntFunction doubleToIntFunction = null;
                doubleToIntFunction.applyAsInt(d);
                throw null;
            case 3:
                ((C5547t) this.c).getClass();
                DoubleToLongFunction doubleToLongFunction = null;
                doubleToLongFunction.applyAsLong(d);
                throw null;
            case 4:
                ((r) this.c).getClass();
                DoublePredicate doublePredicate = null;
                doublePredicate.test(d);
                throw null;
            default:
                ((DoubleConsumer) ((C5557v) this.c).t).accept(d);
                this.a.accept(d);
                return;
        }
    }

    @Override // j$.util.stream.AbstractC5476e2, j$.util.stream.InterfaceC5511l2
    public void c(long j) {
        switch (this.b) {
            case 4:
                this.a.c(-1L);
                return;
            default:
                super.c(j);
                return;
        }
    }
}
