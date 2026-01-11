package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.BinaryOperator;
import java.util.function.LongFunction;

/* loaded from: classes2.dex */
public class M0 extends AbstractC5468d {
    public final AbstractC5559v1 h;
    public final LongFunction i;
    public final BinaryOperator j;

    public M0(M0 m0, Spliterator spliterator) {
        super(m0, spliterator);
        this.h = m0.h;
        this.i = m0.i;
        this.j = m0.j;
    }

    public M0(AbstractC5559v1 abstractC5559v1, Spliterator spliterator, LongFunction longFunction, BinaryOperator binaryOperator) {
        super(abstractC5559v1, spliterator);
        this.h = abstractC5559v1;
        this.i = longFunction;
        this.j = binaryOperator;
    }

    @Override // j$.util.stream.AbstractC5468d
    public AbstractC5468d c(Spliterator spliterator) {
        return new M0(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC5468d
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final G0 a() {
        InterfaceC5573y0 interfaceC5573y0 = (InterfaceC5573y0) this.i.apply(this.h.l0(this.b));
        this.h.E0(this.b, interfaceC5573y0);
        return interfaceC5573y0.build();
    }

    @Override // j$.util.stream.AbstractC5468d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC5468d abstractC5468d = this.d;
        if (abstractC5468d != null) {
            this.f = (G0) this.j.apply((G0) ((M0) abstractC5468d).f, (G0) ((M0) this.e).f);
        }
        super.onCompletion(countedCompleter);
    }
}
