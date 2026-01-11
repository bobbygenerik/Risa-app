package j$.util.stream;

import java.util.function.IntConsumer;
import java.util.function.IntPredicate;

/* renamed from: j$.util.stream.p0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5529p0 extends AbstractC5543s0 implements InterfaceC5501j2 {
    @Override // j$.util.stream.AbstractC5543s0, j$.util.stream.InterfaceC5511l2
    public final void accept(int i) {
        if (this.a) {
            return;
        }
        IntPredicate intPredicate = null;
        intPredicate.test(i);
        throw null;
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        d((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.a.e(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC5501j2
    public final /* synthetic */ void d(Integer num) {
        AbstractC5559v1.G(this, num);
    }
}
