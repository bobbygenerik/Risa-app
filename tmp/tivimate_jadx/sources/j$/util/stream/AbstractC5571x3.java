package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.x3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5571x3 extends A3 implements j$.util.d0 {
    @Override // j$.util.d0
    public final void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
        AbstractC5477e3 abstractC5477e3 = null;
        while (true) {
            z3 f = f();
            if (f == z3.NO_MORE) {
                return;
            }
            z3 z3Var = z3.MAYBE_MORE;
            Spliterator spliterator = this.a;
            if (f != z3Var) {
                ((j$.util.d0) spliterator).forEachRemaining(obj);
                return;
            }
            int i = this.c;
            if (abstractC5477e3 == null) {
                abstractC5477e3 = j(i);
            } else {
                abstractC5477e3.b = 0;
            }
            long j = 0;
            while (((j$.util.d0) spliterator).tryAdvance(abstractC5477e3)) {
                j++;
                if (j >= i) {
                    break;
                }
            }
            if (j == 0) {
                return;
            } else {
                abstractC5477e3.a(obj, a(j));
            }
        }
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        forEachRemaining((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        forEachRemaining((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        forEachRemaining((Object) longConsumer);
    }

    public abstract void g(Object obj);

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

    public abstract AbstractC5477e3 j(int i);

    @Override // j$.util.d0
    public final boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        while (f() != z3.NO_MORE && ((j$.util.d0) this.a).tryAdvance(this)) {
            if (a(1L) == 1) {
                g(obj);
                return true;
            }
        }
        return false;
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return tryAdvance((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return tryAdvance((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return tryAdvance((Object) longConsumer);
    }
}
