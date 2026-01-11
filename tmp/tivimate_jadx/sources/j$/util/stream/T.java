package j$.util.stream;

import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.IntToDoubleFunction;
import java.util.function.IntToLongFunction;
import java.util.function.IntUnaryOperator;

/* loaded from: classes2.dex */
public final class T extends AbstractC5481f2 {
    public final /* synthetic */ int b;
    public final /* synthetic */ AbstractC5453a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ T(AbstractC5453a abstractC5453a, InterfaceC5511l2 interfaceC5511l2, int i) {
        super(interfaceC5511l2);
        this.b = i;
        this.c = abstractC5453a;
    }

    @Override // j$.util.stream.InterfaceC5501j2, j$.util.stream.InterfaceC5511l2
    public final void accept(int i) {
        switch (this.b) {
            case 0:
                this.a.accept((InterfaceC5511l2) ((IntFunction) ((C5533q) this.c).t).apply(i));
                return;
            case 1:
                ((IntConsumer) ((U) this.c).t).accept(i);
                this.a.accept(i);
                return;
            case 2:
                ((C5542s) this.c).getClass();
                IntUnaryOperator intUnaryOperator = null;
                intUnaryOperator.applyAsInt(i);
                throw null;
            case 3:
                ((C5547t) this.c).getClass();
                IntToLongFunction intToLongFunction = null;
                intToLongFunction.applyAsLong(i);
                throw null;
            case 4:
                ((r) this.c).getClass();
                IntToDoubleFunction intToDoubleFunction = null;
                intToDoubleFunction.applyAsDouble(i);
                throw null;
            default:
                ((C5542s) this.c).getClass();
                IntPredicate intPredicate = null;
                intPredicate.test(i);
                throw null;
        }
    }

    @Override // j$.util.stream.AbstractC5481f2, j$.util.stream.InterfaceC5511l2
    public void c(long j) {
        switch (this.b) {
            case 5:
                this.a.c(-1L);
                return;
            default:
                super.c(j);
                return;
        }
    }
}
