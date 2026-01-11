package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.BinaryOperator;
import java.util.function.LongFunction;

/* loaded from: classes2.dex */
public final class L0 extends M0 {
    public final /* synthetic */ int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ L0(AbstractC5559v1 abstractC5559v1, Spliterator spliterator, LongFunction longFunction, BinaryOperator binaryOperator, int i) {
        super(abstractC5559v1, spliterator, longFunction, binaryOperator);
        this.k = i;
    }

    @Override // j$.util.stream.M0, j$.util.stream.AbstractC5468d
    public final /* bridge */ /* synthetic */ Object a() {
        switch (this.k) {
            case 0:
                return a();
            case 1:
                return a();
            case 2:
                return a();
            default:
                return a();
        }
    }

    @Override // j$.util.stream.M0, j$.util.stream.AbstractC5468d
    public final AbstractC5468d c(Spliterator spliterator) {
        switch (this.k) {
            case 0:
                return new M0(this, spliterator);
            case 1:
                return new M0(this, spliterator);
            case 2:
                return new M0(this, spliterator);
            default:
                return new M0(this, spliterator);
        }
    }
}
