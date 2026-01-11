package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class S3 extends AbstractC5458b {
    public final AbstractC5453a j;
    public final IntFunction k;
    public final boolean l;
    public long m;
    public boolean n;
    public volatile boolean o;

    public S3(S3 s3, Spliterator spliterator) {
        super(s3, spliterator);
        this.j = s3.j;
        this.k = s3.k;
        this.l = s3.l;
    }

    public S3(AbstractC5453a abstractC5453a, AbstractC5559v1 abstractC5559v1, Spliterator spliterator, IntFunction intFunction) {
        super(abstractC5559v1, spliterator);
        this.j = abstractC5453a;
        this.k = intFunction;
        this.l = Y2.ORDERED.q(((AbstractC5453a) abstractC5559v1).m);
    }

    @Override // j$.util.stream.AbstractC5468d
    public final Object a() {
        InterfaceC5573y0 A0 = this.a.A0(-1L, this.k);
        InterfaceC5511l2 P0 = this.j.P0(((AbstractC5453a) this.a).m, A0);
        AbstractC5559v1 abstractC5559v1 = this.a;
        boolean h0 = abstractC5559v1.h0(this.b, abstractC5559v1.F0(P0));
        this.n = h0;
        if (h0) {
            g();
        }
        G0 build = A0.build();
        this.m = build.count();
        return build;
    }

    @Override // j$.util.stream.AbstractC5468d
    public final AbstractC5468d c(Spliterator spliterator) {
        return new S3(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC5458b
    public final void f() {
        this.i = true;
        if (this.l && this.o) {
            d(AbstractC5559v1.j0(this.j.L0()));
        }
    }

    @Override // j$.util.stream.AbstractC5458b
    public final Object h() {
        return AbstractC5559v1.j0(this.j.L0());
    }

    @Override // j$.util.stream.AbstractC5468d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        Object f0;
        AbstractC5468d abstractC5468d = this.d;
        if (abstractC5468d != null) {
            this.n = ((S3) abstractC5468d).n | ((S3) this.e).n;
            if (this.l && this.i) {
                this.m = 0L;
                f0 = AbstractC5559v1.j0(this.j.L0());
            } else {
                if (this.l) {
                    S3 s3 = (S3) this.d;
                    if (s3.n) {
                        this.m = s3.m;
                        f0 = (G0) s3.i();
                    }
                }
                S3 s32 = (S3) this.d;
                long j = s32.m;
                S3 s33 = (S3) this.e;
                this.m = j + s33.m;
                f0 = s32.m == 0 ? (G0) s33.i() : s33.m == 0 ? (G0) s32.i() : AbstractC5559v1.f0(this.j.L0(), (G0) ((S3) this.d).i(), (G0) ((S3) this.e).i());
            }
            d(f0);
        }
        this.o = true;
        super.onCompletion(countedCompleter);
    }
}
