package j$.util.stream;

import java.util.function.IntBinaryOperator;

/* loaded from: classes2.dex */
public final class L1 extends AbstractC5559v1 {
    public final /* synthetic */ IntBinaryOperator h;
    public final /* synthetic */ int i;

    public L1(Z2 z2, IntBinaryOperator intBinaryOperator, int i) {
        this.h = intBinaryOperator;
        this.i = i;
    }

    @Override // j$.util.stream.AbstractC5559v1
    public final Q1 D0() {
        return new K1(this.i, this.h);
    }
}
