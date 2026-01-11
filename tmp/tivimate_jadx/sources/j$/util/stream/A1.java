package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class A1 extends AbstractC5559v1 {
    public final /* synthetic */ int h;
    public final /* synthetic */ Object i;
    public final /* synthetic */ Object j;
    public final /* synthetic */ Object k;

    public /* synthetic */ A1(Z2 z2, Object obj, Object obj2, Object obj3, int i) {
        this.h = i;
        this.j = obj;
        this.k = obj2;
        this.i = obj3;
    }

    @Override // j$.util.stream.AbstractC5559v1
    public final Q1 D0() {
        switch (this.h) {
            case 0:
                return new C5569x1((Supplier) this.i, (ObjLongConsumer) this.k, (C5518n) this.j);
            case 1:
                return new D1((Supplier) this.i, (ObjDoubleConsumer) this.k, (C5518n) this.j);
            case 2:
                return new F1(this.i, (BiFunction) this.k, (BinaryOperator) this.j);
            case 3:
                return new J1((Supplier) this.i, (BiConsumer) this.k, (BiConsumer) this.j);
            default:
                return new N1((Supplier) this.i, (ObjIntConsumer) this.k, (C5518n) this.j);
        }
    }
}
