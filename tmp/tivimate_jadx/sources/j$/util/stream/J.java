package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class J extends AbstractC5458b {
    public final D j;
    public final boolean k;

    public J(D d, boolean z, AbstractC5453a abstractC5453a, Spliterator spliterator) {
        super(abstractC5453a, spliterator);
        this.k = z;
        this.j = d;
    }

    public J(J j, Spliterator spliterator) {
        super(j, spliterator);
        this.k = j.k;
        this.j = j.j;
    }

    @Override // j$.util.stream.AbstractC5468d
    public final Object a() {
        AbstractC5559v1 abstractC5559v1 = this.a;
        F3 f3 = (F3) this.j.d.get();
        abstractC5559v1.E0(this.b, f3);
        Object obj = f3.get();
        if (this.k) {
            if (obj != null) {
                AbstractC5468d abstractC5468d = this;
                while (abstractC5468d != null) {
                    AbstractC5468d abstractC5468d2 = (AbstractC5468d) abstractC5468d.getCompleter();
                    if (abstractC5468d2 != null && abstractC5468d2.d != abstractC5468d) {
                        g();
                        return obj;
                    }
                    abstractC5468d = abstractC5468d2;
                }
                AtomicReference atomicReference = this.h;
                while (!atomicReference.compareAndSet(null, obj) && atomicReference.get() == null) {
                }
                return obj;
            }
        } else if (obj != null) {
            AtomicReference atomicReference2 = this.h;
            while (!atomicReference2.compareAndSet(null, obj) && atomicReference2.get() == null) {
            }
        }
        return null;
    }

    @Override // j$.util.stream.AbstractC5468d
    public final AbstractC5468d c(Spliterator spliterator) {
        return new J(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC5458b
    public final Object h() {
        return this.j.b;
    }

    @Override // j$.util.stream.AbstractC5468d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        if (this.k) {
            J j = (J) this.d;
            J j2 = null;
            while (true) {
                if (j != j2) {
                    Object i = j.i();
                    if (i != null && this.j.c.test(i)) {
                        d(i);
                        AbstractC5468d abstractC5468d = this;
                        while (true) {
                            if (abstractC5468d != null) {
                                AbstractC5468d abstractC5468d2 = (AbstractC5468d) abstractC5468d.getCompleter();
                                if (abstractC5468d2 != null && abstractC5468d2.d != abstractC5468d) {
                                    g();
                                    break;
                                }
                                abstractC5468d = abstractC5468d2;
                            } else {
                                AtomicReference atomicReference = this.h;
                                while (!atomicReference.compareAndSet(null, i) && atomicReference.get() == null) {
                                }
                            }
                        }
                    } else {
                        j2 = j;
                        j = (J) this.e;
                    }
                } else {
                    break;
                }
            }
        }
        super.onCompletion(countedCompleter);
    }
}
