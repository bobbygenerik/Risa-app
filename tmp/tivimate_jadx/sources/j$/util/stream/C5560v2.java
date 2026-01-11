package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.v2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5560v2 extends AbstractC5458b {
    public final AbstractC5453a j;
    public final IntFunction k;
    public final long l;
    public final long m;
    public long n;
    public volatile boolean o;

    public C5560v2(AbstractC5453a abstractC5453a, AbstractC5559v1 abstractC5559v1, Spliterator spliterator, IntFunction intFunction, long j, long j2) {
        super(abstractC5559v1, spliterator);
        this.j = abstractC5453a;
        this.k = intFunction;
        this.l = j;
        this.m = j2;
    }

    public C5560v2(C5560v2 c5560v2, Spliterator spliterator) {
        super(c5560v2, spliterator);
        this.j = c5560v2.j;
        this.k = c5560v2.k;
        this.l = c5560v2.l;
        this.m = c5560v2.m;
    }

    @Override // j$.util.stream.AbstractC5468d
    public final Object a() {
        if (b()) {
            Y2 y2 = Y2.SIZED;
            AbstractC5453a abstractC5453a = this.j;
            int i = abstractC5453a.j;
            int i2 = y2.e;
            InterfaceC5573y0 A0 = this.j.A0((i & i2) == i2 ? abstractC5453a.l0(this.b) : -1L, this.k);
            InterfaceC5511l2 P0 = this.j.P0(((AbstractC5453a) this.a).m, A0);
            AbstractC5559v1 abstractC5559v1 = this.a;
            abstractC5559v1.h0(this.b, abstractC5559v1.F0(P0));
            return A0.build();
        }
        InterfaceC5573y0 A02 = this.j.A0(-1L, this.k);
        if (this.l == 0) {
            InterfaceC5511l2 P02 = this.j.P0(((AbstractC5453a) this.a).m, A02);
            AbstractC5559v1 abstractC5559v12 = this.a;
            abstractC5559v12.h0(this.b, abstractC5559v12.F0(P02));
        } else {
            this.a.E0(this.b, A02);
        }
        G0 build = A02.build();
        this.n = build.count();
        this.o = true;
        this.b = null;
        return build;
    }

    @Override // j$.util.stream.AbstractC5468d
    public final AbstractC5468d c(Spliterator spliterator) {
        return new C5560v2(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC5458b
    public final void f() {
        this.i = true;
        if (this.o) {
            d(AbstractC5559v1.j0(this.j.L0()));
        }
    }

    @Override // j$.util.stream.AbstractC5458b
    public final Object h() {
        return AbstractC5559v1.j0(this.j.L0());
    }

    public final long j(long j) {
        if (this.o) {
            return this.n;
        }
        C5560v2 c5560v2 = (C5560v2) this.d;
        C5560v2 c5560v22 = (C5560v2) this.e;
        if (c5560v2 == null || c5560v22 == null) {
            return this.n;
        }
        long j2 = c5560v2.j(j);
        return j2 >= j ? j2 : c5560v22.j(j) + j2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e7, code lost:
    
        if (r2 >= r0) goto L49;
     */
    @Override // j$.util.stream.AbstractC5468d, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCompletion(java.util.concurrent.CountedCompleter r12) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.stream.C5560v2.onCompletion(java.util.concurrent.CountedCompleter):void");
    }
}
