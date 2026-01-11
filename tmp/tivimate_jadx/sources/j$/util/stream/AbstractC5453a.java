package j$.util.stream;

import j$.util.C5450p;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5453a extends AbstractC5559v1 implements InterfaceC5483g {
    public final AbstractC5453a h;
    public final AbstractC5453a i;
    public final int j;
    public final AbstractC5453a k;
    public int l;
    public int m;
    public Spliterator n;
    public boolean o;
    public final boolean p;
    public Runnable q;
    public boolean r;

    public AbstractC5453a(Spliterator spliterator, int i, boolean z) {
        this.i = null;
        this.n = spliterator;
        this.h = this;
        int i2 = Y2.g & i;
        this.j = i2;
        this.m = (~(i2 << 1)) & Y2.l;
        this.l = 0;
        this.r = z;
    }

    public AbstractC5453a(AbstractC5453a abstractC5453a, int i) {
        if (abstractC5453a.o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC5453a.o = true;
        abstractC5453a.k = this;
        this.i = abstractC5453a;
        this.j = Y2.h & i;
        this.m = Y2.k(i, abstractC5453a.m);
        AbstractC5453a abstractC5453a2 = abstractC5453a.h;
        this.h = abstractC5453a2;
        if (O0()) {
            abstractC5453a2.p = true;
        }
        this.l = abstractC5453a.l + 1;
    }

    @Override // j$.util.stream.AbstractC5559v1
    public final InterfaceC5511l2 E0(Spliterator spliterator, InterfaceC5511l2 interfaceC5511l2) {
        g0(spliterator, F0((InterfaceC5511l2) Objects.requireNonNull(interfaceC5511l2)));
        return interfaceC5511l2;
    }

    @Override // j$.util.stream.AbstractC5559v1
    public final InterfaceC5511l2 F0(InterfaceC5511l2 interfaceC5511l2) {
        Objects.requireNonNull(interfaceC5511l2);
        for (AbstractC5453a abstractC5453a = this; abstractC5453a.l > 0; abstractC5453a = abstractC5453a.i) {
            interfaceC5511l2 = abstractC5453a.P0(abstractC5453a.i.m, interfaceC5511l2);
        }
        return interfaceC5511l2;
    }

    @Override // j$.util.stream.AbstractC5559v1
    public final Spliterator G0(Spliterator spliterator) {
        return this.l == 0 ? spliterator : S0(this, new C5450p(3, spliterator), this.h.r);
    }

    public final Object H0(E3 e3) {
        if (this.o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.o = true;
        return this.h.r ? e3.j(this, Q0(e3.w())) : e3.f(this, Q0(e3.w()));
    }

    public final G0 I0(IntFunction intFunction) {
        if (this.o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.o = true;
        if (!this.h.r || this.i == null || !O0()) {
            return k0(Q0(0), true, intFunction);
        }
        this.l = 0;
        AbstractC5453a abstractC5453a = this.i;
        return M0(abstractC5453a, abstractC5453a.Q0(0), intFunction);
    }

    public abstract G0 J0(AbstractC5453a abstractC5453a, Spliterator spliterator, boolean z, IntFunction intFunction);

    public abstract boolean K0(Spliterator spliterator, InterfaceC5511l2 interfaceC5511l2);

    public abstract Z2 L0();

    public G0 M0(AbstractC5559v1 abstractC5559v1, Spliterator spliterator, IntFunction intFunction) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    public Spliterator N0(AbstractC5453a abstractC5453a, Spliterator spliterator) {
        return M0(abstractC5453a, spliterator, new j$.time.f(12)).spliterator();
    }

    public abstract boolean O0();

    public abstract InterfaceC5511l2 P0(int i, InterfaceC5511l2 interfaceC5511l2);

    public final Spliterator Q0(int i) {
        int i2;
        int i3;
        AbstractC5453a abstractC5453a = this.h;
        Spliterator spliterator = abstractC5453a.n;
        if (spliterator == null) {
            throw new IllegalStateException("source already consumed or closed");
        }
        abstractC5453a.n = null;
        if (abstractC5453a.r && abstractC5453a.p) {
            AbstractC5453a abstractC5453a2 = abstractC5453a.k;
            int i4 = 1;
            while (abstractC5453a != this) {
                int i5 = abstractC5453a2.j;
                if (abstractC5453a2.O0()) {
                    if (Y2.SHORT_CIRCUIT.q(i5)) {
                        i5 &= ~Y2.u;
                    }
                    spliterator = abstractC5453a2.N0(abstractC5453a, spliterator);
                    if (spliterator.hasCharacteristics(64)) {
                        i2 = (~Y2.t) & i5;
                        i3 = Y2.s;
                    } else {
                        i2 = (~Y2.s) & i5;
                        i3 = Y2.t;
                    }
                    i5 = i2 | i3;
                    i4 = 0;
                }
                int i6 = i4 + 1;
                abstractC5453a2.l = i4;
                abstractC5453a2.m = Y2.k(i5, abstractC5453a.m);
                AbstractC5453a abstractC5453a3 = abstractC5453a2;
                abstractC5453a2 = abstractC5453a2.k;
                abstractC5453a = abstractC5453a3;
                i4 = i6;
            }
        }
        if (i != 0) {
            this.m = Y2.k(i, this.m);
        }
        return spliterator;
    }

    public final Spliterator R0() {
        AbstractC5453a abstractC5453a = this.h;
        if (this != abstractC5453a) {
            throw new IllegalStateException();
        }
        if (this.o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.o = true;
        Spliterator spliterator = abstractC5453a.n;
        if (spliterator == null) {
            throw new IllegalStateException("source already consumed or closed");
        }
        abstractC5453a.n = null;
        return spliterator;
    }

    public abstract Spliterator S0(AbstractC5453a abstractC5453a, Supplier supplier, boolean z);

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.o = true;
        this.n = null;
        AbstractC5453a abstractC5453a = this.h;
        Runnable runnable = abstractC5453a.q;
        if (runnable != null) {
            abstractC5453a.q = null;
            runnable.run();
        }
    }

    @Override // j$.util.stream.AbstractC5559v1
    public final void g0(Spliterator spliterator, InterfaceC5511l2 interfaceC5511l2) {
        Objects.requireNonNull(interfaceC5511l2);
        if (Y2.SHORT_CIRCUIT.q(this.m)) {
            h0(spliterator, interfaceC5511l2);
            return;
        }
        interfaceC5511l2.c(spliterator.getExactSizeIfKnown());
        spliterator.forEachRemaining(interfaceC5511l2);
        interfaceC5511l2.end();
    }

    @Override // j$.util.stream.AbstractC5559v1
    public final boolean h0(Spliterator spliterator, InterfaceC5511l2 interfaceC5511l2) {
        AbstractC5453a abstractC5453a = this;
        while (abstractC5453a.l > 0) {
            abstractC5453a = abstractC5453a.i;
        }
        interfaceC5511l2.c(spliterator.getExactSizeIfKnown());
        boolean K0 = abstractC5453a.K0(spliterator, interfaceC5511l2);
        interfaceC5511l2.end();
        return K0;
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final boolean isParallel() {
        return this.h.r;
    }

    @Override // j$.util.stream.AbstractC5559v1
    public final G0 k0(Spliterator spliterator, boolean z, IntFunction intFunction) {
        if (this.h.r) {
            return J0(this, spliterator, z, intFunction);
        }
        InterfaceC5573y0 A0 = A0(l0(spliterator), intFunction);
        E0(spliterator, A0);
        return A0.build();
    }

    @Override // j$.util.stream.AbstractC5559v1
    public final long l0(Spliterator spliterator) {
        if (Y2.SIZED.q(this.m)) {
            return spliterator.getExactSizeIfKnown();
        }
        return -1L;
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final InterfaceC5483g onClose(Runnable runnable) {
        if (this.o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        Objects.requireNonNull(runnable);
        AbstractC5453a abstractC5453a = this.h;
        Runnable runnable2 = abstractC5453a.q;
        if (runnable2 != null) {
            runnable = new D3(runnable2, runnable);
        }
        abstractC5453a.q = runnable;
        return this;
    }

    public final InterfaceC5483g parallel() {
        this.h.r = true;
        return this;
    }

    public final InterfaceC5483g sequential() {
        this.h.r = false;
        return this;
    }

    public Spliterator spliterator() {
        if (this.o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.o = true;
        AbstractC5453a abstractC5453a = this.h;
        if (this != abstractC5453a) {
            return S0(this, new C5450p(2, this), abstractC5453a.r);
        }
        Spliterator spliterator = abstractC5453a.n;
        if (spliterator == null) {
            throw new IllegalStateException("source already consumed or closed");
        }
        abstractC5453a.n = null;
        return spliterator;
    }
}
