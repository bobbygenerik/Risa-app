package j$.util.stream;

import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.LongPredicate;
import java.util.function.LongToDoubleFunction;
import java.util.function.LongToIntFunction;
import java.util.function.LongUnaryOperator;

/* renamed from: j$.util.stream.c0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5464c0 extends AbstractC5486g2 {
    public final /* synthetic */ int b;
    public final /* synthetic */ AbstractC5453a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C5464c0(AbstractC5453a abstractC5453a, InterfaceC5511l2 interfaceC5511l2, int i) {
        super(interfaceC5511l2);
        this.b = i;
        this.c = abstractC5453a;
    }

    @Override // j$.util.stream.InterfaceC5506k2, j$.util.stream.InterfaceC5511l2
    public final void accept(long j) {
        switch (this.b) {
            case 0:
                this.a.accept((InterfaceC5511l2) ((LongFunction) ((C5533q) this.c).t).apply(j));
                return;
            case 1:
                ((C5547t) this.c).getClass();
                LongUnaryOperator longUnaryOperator = null;
                longUnaryOperator.applyAsLong(j);
                throw null;
            case 2:
                ((C5542s) this.c).getClass();
                LongToIntFunction longToIntFunction = null;
                longToIntFunction.applyAsInt(j);
                throw null;
            case 3:
                ((r) this.c).getClass();
                LongToDoubleFunction longToDoubleFunction = null;
                longToDoubleFunction.applyAsDouble(j);
                throw null;
            case 4:
                ((C5547t) this.c).getClass();
                LongPredicate longPredicate = null;
                longPredicate.test(j);
                throw null;
            default:
                ((LongConsumer) ((C5479f0) this.c).t).accept(j);
                this.a.accept(j);
                return;
        }
    }

    @Override // j$.util.stream.AbstractC5486g2, j$.util.stream.InterfaceC5511l2
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
