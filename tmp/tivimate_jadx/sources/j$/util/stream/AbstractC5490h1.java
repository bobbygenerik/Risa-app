package j$.util.stream;

import j$.util.Spliterator;
import java.util.Deque;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.h1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5490h1 extends AbstractC5500j1 implements j$.util.d0 {
    @Override // j$.util.d0
    public final void forEachRemaining(Object obj) {
        if (this.a == null) {
            return;
        }
        if (this.d == null) {
            Spliterator spliterator = this.c;
            if (spliterator != null) {
                ((j$.util.d0) spliterator).forEachRemaining(obj);
                return;
            }
            Deque b = b();
            while (true) {
                F0 f0 = (F0) AbstractC5500j1.a(b);
                if (f0 == null) {
                    this.a = null;
                    return;
                }
                f0.g(obj);
            }
        }
        do {
        } while (tryAdvance(obj));
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

    @Override // j$.util.d0
    public final boolean tryAdvance(Object obj) {
        F0 f0;
        if (!c()) {
            return false;
        }
        boolean tryAdvance = ((j$.util.d0) this.d).tryAdvance(obj);
        if (!tryAdvance) {
            if (this.c == null && (f0 = (F0) AbstractC5500j1.a(this.e)) != null) {
                j$.util.d0 spliterator = f0.spliterator();
                this.d = spliterator;
                return spliterator.tryAdvance(obj);
            }
            this.a = null;
        }
        return tryAdvance;
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
