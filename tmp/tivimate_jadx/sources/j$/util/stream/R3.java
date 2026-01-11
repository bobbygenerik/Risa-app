package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class R3 extends AbstractC5468d {
    public final AbstractC5453a h;
    public final IntFunction i;
    public final boolean j;
    public long k;
    public long l;

    public R3(R3 r3, Spliterator spliterator) {
        super(r3, spliterator);
        this.h = r3.h;
        this.i = r3.i;
        this.j = r3.j;
    }

    public R3(AbstractC5453a abstractC5453a, AbstractC5559v1 abstractC5559v1, Spliterator spliterator, IntFunction intFunction) {
        super(abstractC5559v1, spliterator);
        this.h = abstractC5453a;
        this.i = intFunction;
        this.j = Y2.ORDERED.q(((AbstractC5453a) abstractC5559v1).m);
    }

    @Override // j$.util.stream.AbstractC5468d
    public final Object a() {
        long j;
        boolean b = b();
        if (!b && this.j) {
            Y2 y2 = Y2.SIZED;
            AbstractC5453a abstractC5453a = this.h;
            int i = abstractC5453a.j;
            int i2 = y2.e;
            if ((i & i2) == i2) {
                j = abstractC5453a.l0(this.b);
                InterfaceC5573y0 A0 = this.a.A0(j, this.i);
                Q3 i3 = ((P3) this.h).i(A0, (this.j || b) ? false : true);
                this.a.E0(this.b, i3);
                G0 build = A0.build();
                this.k = build.count();
                this.l = i3.h();
                return build;
            }
        }
        j = -1;
        InterfaceC5573y0 A02 = this.a.A0(j, this.i);
        Q3 i32 = ((P3) this.h).i(A02, (this.j || b) ? false : true);
        this.a.E0(this.b, i32);
        G0 build2 = A02.build();
        this.k = build2.count();
        this.l = i32.h();
        return build2;
    }

    @Override // j$.util.stream.AbstractC5468d
    public final AbstractC5468d c(Spliterator spliterator) {
        return new R3(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC5468d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC5468d abstractC5468d = this.d;
        if (abstractC5468d != null) {
            if (this.j) {
                R3 r3 = (R3) abstractC5468d;
                long j = r3.l;
                this.l = j;
                if (j == r3.k) {
                    this.l = j + ((R3) this.e).l;
                }
            }
            R3 r32 = (R3) abstractC5468d;
            long j2 = r32.k;
            R3 r33 = (R3) this.e;
            this.k = j2 + r33.k;
            G0 f0 = r32.k == 0 ? (G0) r33.f : r33.k == 0 ? (G0) r32.f : AbstractC5559v1.f0(this.h.L0(), (G0) ((R3) this.d).f, (G0) ((R3) this.e).f);
            if (b() && this.j) {
                f0 = f0.j(this.l, f0.count(), this.i);
            }
            this.f = f0;
        }
        super.onCompletion(countedCompleter);
    }
}
