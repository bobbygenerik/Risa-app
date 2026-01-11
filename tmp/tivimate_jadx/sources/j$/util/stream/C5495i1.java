package j$.util.stream;

import j$.util.Spliterator;
import java.util.Deque;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.i1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5495i1 extends AbstractC5500j1 {
    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.a == null) {
            return;
        }
        if (this.d == null) {
            Spliterator spliterator = this.c;
            if (spliterator != null) {
                spliterator.forEachRemaining(consumer);
                return;
            }
            Deque b = b();
            while (true) {
                G0 a = AbstractC5500j1.a(b);
                if (a == null) {
                    this.a = null;
                    return;
                }
                a.forEach(consumer);
            }
        }
        do {
        } while (tryAdvance(consumer));
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        G0 a;
        if (!c()) {
            return false;
        }
        boolean tryAdvance = this.d.tryAdvance(consumer);
        if (!tryAdvance) {
            if (this.c == null && (a = AbstractC5500j1.a(this.e)) != null) {
                Spliterator spliterator = a.spliterator();
                this.d = spliterator;
                return spliterator.tryAdvance(consumer);
            }
            this.a = null;
        }
        return tryAdvance;
    }
}
