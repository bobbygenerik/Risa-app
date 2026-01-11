package j$.util.stream;

import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.d3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5472d3 extends AbstractC5477e3 implements LongConsumer {
    public final long[] c;

    public C5472d3(int i) {
        this.c = new long[i];
    }

    @Override // j$.util.stream.AbstractC5477e3
    public final void a(Object obj, long j) {
        LongConsumer longConsumer = (LongConsumer) obj;
        for (int i = 0; i < j; i++) {
            longConsumer.accept(this.c[i]);
        }
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        int i = this.b;
        this.b = i + 1;
        this.c[i] = j;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.util.function.a.f(this, longConsumer);
    }
}
