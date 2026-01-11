package j$.util.stream;

import java.util.function.BinaryOperator;
import java.util.function.DoubleBinaryOperator;
import java.util.function.IntBinaryOperator;
import java.util.function.LongBinaryOperator;

/* renamed from: j$.util.stream.y1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5574y1 extends AbstractC5559v1 {
    public final /* synthetic */ int h;
    public final /* synthetic */ Object i;

    public /* synthetic */ C5574y1(Z2 z2, Object obj, int i) {
        this.h = i;
        this.i = obj;
    }

    @Override // j$.util.stream.AbstractC5559v1
    public final Q1 D0() {
        switch (this.h) {
            case 0:
                return new P1((LongBinaryOperator) this.i);
            case 1:
                return new B1((DoubleBinaryOperator) this.i);
            case 2:
                return new G1((BinaryOperator) this.i);
            default:
                return new M1((IntBinaryOperator) this.i);
        }
    }
}
