package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: j$.util.stream.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5458b extends AbstractC5468d {
    public final AtomicReference h;
    public volatile boolean i;

    public AbstractC5458b(AbstractC5458b abstractC5458b, Spliterator spliterator) {
        super(abstractC5458b, spliterator);
        this.h = abstractC5458b.h;
    }

    public AbstractC5458b(AbstractC5559v1 abstractC5559v1, Spliterator spliterator) {
        super(abstractC5559v1, spliterator);
        this.h = new AtomicReference(null);
    }

    @Override // j$.util.stream.AbstractC5468d, java.util.concurrent.CountedCompleter
    public final void compute() {
        Object obj;
        Spliterator trySplit;
        Spliterator spliterator = this.b;
        long estimateSize = spliterator.estimateSize();
        long j = this.c;
        if (j == 0) {
            j = AbstractC5468d.e(estimateSize);
            this.c = j;
        }
        AtomicReference atomicReference = this.h;
        boolean z = false;
        AbstractC5458b abstractC5458b = this;
        while (true) {
            obj = atomicReference.get();
            if (obj != null) {
                break;
            }
            boolean z2 = abstractC5458b.i;
            if (!z2) {
                CountedCompleter<?> completer = abstractC5458b.getCompleter();
                while (true) {
                    AbstractC5458b abstractC5458b2 = (AbstractC5458b) ((AbstractC5468d) completer);
                    if (z2 || abstractC5458b2 == null) {
                        break;
                    }
                    z2 = abstractC5458b2.i;
                    completer = abstractC5458b2.getCompleter();
                }
            }
            if (z2) {
                obj = abstractC5458b.h();
                break;
            }
            if (estimateSize <= j || (trySplit = spliterator.trySplit()) == null) {
                break;
            }
            AbstractC5458b abstractC5458b3 = (AbstractC5458b) abstractC5458b.c(trySplit);
            abstractC5458b.d = abstractC5458b3;
            AbstractC5458b abstractC5458b4 = (AbstractC5458b) abstractC5458b.c(spliterator);
            abstractC5458b.e = abstractC5458b4;
            abstractC5458b.setPendingCount(1);
            if (z) {
                spliterator = trySplit;
                abstractC5458b = abstractC5458b3;
                abstractC5458b3 = abstractC5458b4;
            } else {
                abstractC5458b = abstractC5458b4;
            }
            z = !z;
            abstractC5458b3.fork();
            estimateSize = spliterator.estimateSize();
        }
        obj = abstractC5458b.a();
        abstractC5458b.d(obj);
        abstractC5458b.tryComplete();
    }

    @Override // j$.util.stream.AbstractC5468d
    public final void d(Object obj) {
        if (!b()) {
            this.f = obj;
        } else if (obj != null) {
            AtomicReference atomicReference = this.h;
            while (!atomicReference.compareAndSet(null, obj) && atomicReference.get() == null) {
            }
        }
    }

    public void f() {
        this.i = true;
    }

    public final void g() {
        AbstractC5458b abstractC5458b = this;
        for (AbstractC5458b abstractC5458b2 = (AbstractC5458b) ((AbstractC5468d) getCompleter()); abstractC5458b2 != null; abstractC5458b2 = (AbstractC5458b) ((AbstractC5468d) abstractC5458b2.getCompleter())) {
            if (abstractC5458b2.d == abstractC5458b) {
                AbstractC5458b abstractC5458b3 = (AbstractC5458b) abstractC5458b2.e;
                if (!abstractC5458b3.i) {
                    abstractC5458b3.f();
                }
            }
            abstractC5458b = abstractC5458b2;
        }
    }

    @Override // j$.util.stream.AbstractC5468d, java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public final Object getRawResult() {
        return i();
    }

    public abstract Object h();

    public final Object i() {
        if (!b()) {
            return this.f;
        }
        Object obj = this.h.get();
        return obj == null ? h() : obj;
    }
}
