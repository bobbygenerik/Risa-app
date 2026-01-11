package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;

/* loaded from: classes2.dex */
public final class X1 extends AbstractC5468d {
    public final AbstractC5559v1 h;

    public X1(X1 x1, Spliterator spliterator) {
        super(x1, spliterator);
        this.h = x1.h;
    }

    public X1(AbstractC5559v1 abstractC5559v1, AbstractC5559v1 abstractC5559v12, Spliterator spliterator) {
        super(abstractC5559v12, spliterator);
        this.h = abstractC5559v1;
    }

    @Override // j$.util.stream.AbstractC5468d
    public final Object a() {
        AbstractC5559v1 abstractC5559v1 = this.a;
        Q1 D0 = this.h.D0();
        abstractC5559v1.E0(this.b, D0);
        return D0;
    }

    @Override // j$.util.stream.AbstractC5468d
    public final AbstractC5468d c(Spliterator spliterator) {
        return new X1(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC5468d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC5468d abstractC5468d = this.d;
        if (abstractC5468d != null) {
            Q1 q1 = (Q1) ((X1) abstractC5468d).f;
            q1.i((Q1) ((X1) this.e).f);
            this.f = q1;
        }
        super.onCompletion(countedCompleter);
    }
}
