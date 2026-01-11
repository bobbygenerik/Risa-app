package j$.util.stream;

import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.c3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5467c3 extends AbstractC5477e3 implements IntConsumer {
    public final int[] c;

    public C5467c3(int i) {
        this.c = new int[i];
    }

    @Override // j$.util.stream.AbstractC5477e3
    public final void a(Object obj, long j) {
        IntConsumer intConsumer = (IntConsumer) obj;
        for (int i = 0; i < j; i++) {
            intConsumer.accept(this.c[i]);
        }
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        int i2 = this.b;
        this.b = i2 + 1;
        this.c[i2] = i;
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.a.e(this, intConsumer);
    }
}
