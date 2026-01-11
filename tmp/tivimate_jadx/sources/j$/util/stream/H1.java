package j$.util.stream;

import j$.util.C5440f;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Supplier;
import java.util.stream.Collector;

/* loaded from: classes2.dex */
public final class H1 extends AbstractC5559v1 {
    public final /* synthetic */ BinaryOperator h;
    public final /* synthetic */ BiConsumer i;
    public final /* synthetic */ Supplier j;
    public final /* synthetic */ C5493i k;

    public H1(Z2 z2, BinaryOperator binaryOperator, BiConsumer biConsumer, Supplier supplier, C5493i c5493i) {
        this.h = binaryOperator;
        this.i = biConsumer;
        this.j = supplier;
        this.k = c5493i;
    }

    @Override // j$.util.stream.AbstractC5559v1
    public final Q1 D0() {
        return new I1(this.j, this.i, this.h);
    }

    @Override // j$.util.stream.AbstractC5559v1, j$.util.stream.E3
    public final int w() {
        Set<Collector.Characteristics> characteristics = this.k.a.characteristics();
        if (characteristics != null && !characteristics.isEmpty()) {
            HashSet hashSet = new HashSet();
            Collector.Characteristics next = characteristics.iterator().next();
            if (next instanceof EnumC5488h) {
                Iterator<Collector.Characteristics> it = characteristics.iterator();
                while (it.hasNext()) {
                    try {
                        EnumC5488h enumC5488h = (EnumC5488h) it.next();
                        hashSet.add(enumC5488h == null ? null : enumC5488h == EnumC5488h.CONCURRENT ? Collector.Characteristics.CONCURRENT : enumC5488h == EnumC5488h.UNORDERED ? Collector.Characteristics.UNORDERED : Collector.Characteristics.IDENTITY_FINISH);
                    } catch (ClassCastException e) {
                        C5440f.a(e, "java.util.stream.Collector.Characteristics");
                        throw null;
                    }
                }
            } else {
                if (!(next instanceof Collector.Characteristics)) {
                    C5440f.a(next.getClass(), "java.util.stream.Collector.Characteristics");
                    throw null;
                }
                Iterator<Collector.Characteristics> it2 = characteristics.iterator();
                while (it2.hasNext()) {
                    try {
                        Collector.Characteristics next2 = it2.next();
                        hashSet.add(next2 == null ? null : next2 == Collector.Characteristics.CONCURRENT ? EnumC5488h.CONCURRENT : next2 == Collector.Characteristics.UNORDERED ? EnumC5488h.UNORDERED : EnumC5488h.IDENTITY_FINISH);
                    } catch (ClassCastException e2) {
                        C5440f.a(e2, "java.util.stream.Collector.Characteristics");
                        throw null;
                    }
                }
            }
            characteristics = hashSet;
        }
        if (characteristics.contains(EnumC5488h.UNORDERED)) {
            return Y2.r;
        }
        return 0;
    }
}
