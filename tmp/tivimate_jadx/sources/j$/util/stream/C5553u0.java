package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.u0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5553u0 extends AbstractC5458b {
    public final j$.util.concurrent.s j;

    public C5553u0(j$.util.concurrent.s sVar, AbstractC5453a abstractC5453a, Spliterator spliterator) {
        super(abstractC5453a, spliterator);
        this.j = sVar;
    }

    public C5553u0(C5553u0 c5553u0, Spliterator spliterator) {
        super(c5553u0, spliterator);
        this.j = c5553u0.j;
    }

    @Override // j$.util.stream.AbstractC5468d
    public final Object a() {
        AbstractC5559v1 abstractC5559v1 = this.a;
        AbstractC5543s0 abstractC5543s0 = (AbstractC5543s0) ((Supplier) this.j.c).get();
        abstractC5559v1.E0(this.b, abstractC5543s0);
        boolean z = abstractC5543s0.b;
        if (z == ((EnumC5548t0) this.j.b).b) {
            Boolean valueOf = Boolean.valueOf(z);
            AtomicReference atomicReference = this.h;
            while (!atomicReference.compareAndSet(null, valueOf) && atomicReference.get() == null) {
            }
        }
        return null;
    }

    @Override // j$.util.stream.AbstractC5468d
    public final AbstractC5468d c(Spliterator spliterator) {
        return new C5553u0(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC5458b
    public final Object h() {
        return Boolean.valueOf(!((EnumC5548t0) this.j.b).b);
    }
}
