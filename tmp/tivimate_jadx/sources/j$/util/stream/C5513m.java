package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.m, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5513m extends AbstractC5461b2 {
    public static K0 T0(AbstractC5559v1 abstractC5559v1, Spliterator spliterator) {
        j$.time.f fVar = new j$.time.f(16);
        j$.time.f fVar2 = new j$.time.f(17);
        j$.time.f fVar3 = new j$.time.f(18);
        Objects.requireNonNull(fVar);
        Objects.requireNonNull(fVar2);
        Objects.requireNonNull(fVar3);
        return new K0((Collection) new A1(Z2.REFERENCE, fVar3, fVar2, fVar, 3).j(abstractC5559v1, spliterator));
    }

    @Override // j$.util.stream.AbstractC5453a
    public final G0 M0(AbstractC5559v1 abstractC5559v1, Spliterator spliterator, IntFunction intFunction) {
        AbstractC5453a abstractC5453a = (AbstractC5453a) abstractC5559v1;
        if (Y2.DISTINCT.q(abstractC5453a.m)) {
            return abstractC5559v1.k0(spliterator, false, intFunction);
        }
        if (Y2.ORDERED.q(abstractC5453a.m)) {
            return T0(abstractC5559v1, spliterator);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        j$.util.concurrent.s sVar = new j$.util.concurrent.s(4, atomicBoolean, concurrentHashMap);
        Objects.requireNonNull(sVar);
        new O(sVar, false).a(abstractC5559v1, spliterator);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new K0(keySet);
    }

    @Override // j$.util.stream.AbstractC5453a
    public final Spliterator N0(AbstractC5453a abstractC5453a, Spliterator spliterator) {
        return Y2.DISTINCT.q(abstractC5453a.m) ? abstractC5453a.G0(spliterator) : Y2.ORDERED.q(abstractC5453a.m) ? T0(abstractC5453a, spliterator).spliterator() : new C5492h3(abstractC5453a.G0(spliterator), new ConcurrentHashMap());
    }

    @Override // j$.util.stream.AbstractC5453a
    public final InterfaceC5511l2 P0(int i, InterfaceC5511l2 interfaceC5511l2) {
        Objects.requireNonNull(interfaceC5511l2);
        return Y2.DISTINCT.q(i) ? interfaceC5511l2 : Y2.SORTED.q(i) ? new C5503k(interfaceC5511l2) : new C5508l(interfaceC5511l2);
    }
}
