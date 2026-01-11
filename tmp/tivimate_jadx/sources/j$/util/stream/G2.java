package j$.util.stream;

import j$.util.EnumC5439e;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.Comparator;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class G2 extends AbstractC5461b2 {
    public final boolean s;
    public final Comparator t;

    public G2(AbstractC5471d2 abstractC5471d2) {
        super(abstractC5471d2, Y2.q | Y2.o);
        this.s = true;
        this.t = EnumC5439e.INSTANCE;
    }

    public G2(AbstractC5471d2 abstractC5471d2, Comparator comparator) {
        super(abstractC5471d2, Y2.q | Y2.p);
        this.s = false;
        this.t = (Comparator) Objects.requireNonNull(comparator);
    }

    @Override // j$.util.stream.AbstractC5453a
    public final G0 M0(AbstractC5559v1 abstractC5559v1, Spliterator spliterator, IntFunction intFunction) {
        if (Y2.SORTED.q(((AbstractC5453a) abstractC5559v1).m) && this.s) {
            return abstractC5559v1.k0(spliterator, false, intFunction);
        }
        Object[] m = abstractC5559v1.k0(spliterator, true, intFunction).m(intFunction);
        Arrays.sort(m, this.t);
        return new J0(m);
    }

    @Override // j$.util.stream.AbstractC5453a
    public final InterfaceC5511l2 P0(int i, InterfaceC5511l2 interfaceC5511l2) {
        Objects.requireNonNull(interfaceC5511l2);
        return (Y2.SORTED.q(i) && this.s) ? interfaceC5511l2 : Y2.SIZED.q(i) ? new AbstractC5580z2(interfaceC5511l2, this.t) : new AbstractC5580z2(interfaceC5511l2, this.t);
    }
}
