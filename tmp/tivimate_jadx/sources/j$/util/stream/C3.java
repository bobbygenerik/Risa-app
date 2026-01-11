package j$.util.stream;

import j$.util.C5450p;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class C3 extends AbstractC5457a3 {
    @Override // j$.util.stream.AbstractC5457a3
    public final void d() {
        V2 v2 = new V2();
        this.h = v2;
        Objects.requireNonNull(v2);
        this.e = this.b.F0(new B3(v2, 0));
        this.f = new C5450p(13, this);
    }

    @Override // j$.util.stream.AbstractC5457a3
    public final AbstractC5457a3 e(Spliterator spliterator) {
        return new AbstractC5457a3(this.b, spliterator, this.a);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.h != null || this.i) {
            do {
            } while (tryAdvance(consumer));
            return;
        }
        Objects.requireNonNull(consumer);
        c();
        Objects.requireNonNull(consumer);
        B3 b3 = new B3(consumer, 1);
        this.b.E0(this.d, b3);
        this.i = true;
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean a = a();
        if (!a) {
            return a;
        }
        V2 v2 = (V2) this.h;
        long j = this.g;
        if (v2.c != 0) {
            if (j >= v2.count()) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            }
            for (int i = 0; i <= v2.c; i++) {
                long j2 = v2.d[i];
                Object[] objArr = v2.f[i];
                if (j < objArr.length + j2) {
                    obj = objArr[(int) (j - j2)];
                }
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        if (j >= v2.b) {
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        obj = v2.e[(int) j];
        consumer.n(obj);
        return a;
    }
}
