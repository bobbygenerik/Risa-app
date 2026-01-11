package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.y3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5576y3 extends A3 implements Spliterator, Consumer {
    public Object f;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        this.f = obj;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.a.c(this, consumer);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.A3, j$.util.Spliterator] */
    @Override // j$.util.stream.A3
    public final Spliterator b(Spliterator spliterator) {
        return new A3(spliterator, this);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C5482f3 c5482f3 = null;
        while (true) {
            z3 f = f();
            if (f == z3.NO_MORE) {
                return;
            }
            z3 z3Var = z3.MAYBE_MORE;
            Spliterator spliterator = this.a;
            if (f != z3Var) {
                spliterator.forEachRemaining(consumer);
                return;
            }
            int i = this.c;
            if (c5482f3 == null) {
                c5482f3 = new C5482f3(i);
            } else {
                c5482f3.a = 0;
            }
            long j = 0;
            while (spliterator.tryAdvance(c5482f3)) {
                j++;
                if (j >= i) {
                    break;
                }
            }
            if (j == 0) {
                return;
            }
            long a = a(j);
            for (int i2 = 0; i2 < a; i2++) {
                consumer.n(c5482f3.b[i2]);
            }
        }
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return j$.com.android.tools.r8.a.l(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return j$.com.android.tools.r8.a.n(this, i);
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (f() != z3.NO_MORE && this.a.tryAdvance(this)) {
            if (a(1L) == 1) {
                consumer.n(this.f);
                this.f = null;
                return true;
            }
        }
        return false;
    }
}
