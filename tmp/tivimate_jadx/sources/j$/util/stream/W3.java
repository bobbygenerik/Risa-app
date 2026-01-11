package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* loaded from: classes2.dex */
public final class W3 extends X3 implements Consumer {
    public final Predicate e;
    public Object f;
    public final /* synthetic */ int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W3(Spliterator spliterator, W3 w3, int i) {
        super(spliterator, w3);
        this.g = i;
        this.e = w3.e;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W3(Spliterator spliterator, Predicate predicate, int i) {
        super(spliterator);
        this.g = i;
        this.e = predicate;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        this.d = (this.d + 1) & 63;
        this.f = obj;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.a.c(this, consumer);
    }

    @Override // j$.util.stream.X3
    public final Spliterator b(Spliterator spliterator) {
        switch (this.g) {
            case 0:
                return new W3(spliterator, this, 0);
            default:
                return new W3(spliterator, this, 1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0059, code lost:
    
        if (r0 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005b, code lost:
    
        r6.b.set(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0060, code lost:
    
        r7.accept(r6.f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:?, code lost:
    
        return r2;
     */
    @Override // j$.util.Spliterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean tryAdvance(java.util.function.Consumer r7) {
        /*
            r6 = this;
            int r0 = r6.g
            switch(r0) {
                case 0: goto L35;
                default: goto L5;
            }
        L5:
            boolean r0 = r6.c
            r1 = 1
            if (r0 == 0) goto L28
            boolean r0 = r6.a()
            if (r0 == 0) goto L28
            j$.util.Spliterator r0 = r6.a
            boolean r0 = r0.tryAdvance(r6)
            if (r0 == 0) goto L28
            java.util.function.Predicate r0 = r6.e
            java.lang.Object r2 = r6.f
            boolean r0 = r0.test(r2)
            if (r0 == 0) goto L29
            java.lang.Object r0 = r6.f
            r7.n(r0)
            goto L34
        L28:
            r0 = r1
        L29:
            r7 = 0
            r6.c = r7
            if (r0 != 0) goto L33
            java.util.concurrent.atomic.AtomicBoolean r0 = r6.b
            r0.set(r1)
        L33:
            r1 = r7
        L34:
            return r1
        L35:
            boolean r0 = r6.c
            j$.util.Spliterator r1 = r6.a
            if (r0 == 0) goto L66
            r0 = 0
            r6.c = r0
        L3e:
            boolean r2 = r1.tryAdvance(r6)
            r3 = 1
            if (r2 == 0) goto L57
            boolean r4 = r6.a()
            if (r4 == 0) goto L57
            java.util.function.Predicate r4 = r6.e
            java.lang.Object r5 = r6.f
            boolean r4 = r4.test(r5)
            if (r4 == 0) goto L57
            r0 = r3
            goto L3e
        L57:
            if (r2 == 0) goto L6a
            if (r0 == 0) goto L60
            java.util.concurrent.atomic.AtomicBoolean r0 = r6.b
            r0.set(r3)
        L60:
            java.lang.Object r0 = r6.f
            r7.n(r0)
            goto L6a
        L66:
            boolean r2 = r1.tryAdvance(r7)
        L6a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.stream.W3.tryAdvance(java.util.function.Consumer):boolean");
    }

    @Override // j$.util.stream.X3, j$.util.Spliterator
    public Spliterator trySplit() {
        switch (this.g) {
            case 1:
                if (this.b.get()) {
                    return null;
                }
                return super.trySplit();
            default:
                return super.trySplit();
        }
    }
}
