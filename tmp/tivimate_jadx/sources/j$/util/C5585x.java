package j$.util;

import java.util.function.IntConsumer;

/* renamed from: j$.util.x, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5585x implements IntConsumer {
    private long count;
    private long sum;
    private int min = Integer.MAX_VALUE;
    private int max = Integer.MIN_VALUE;

    public final void a(C5585x c5585x) {
        this.count += c5585x.count;
        this.sum += c5585x.sum;
        this.min = Math.min(this.min, c5585x.min);
        this.max = Math.max(this.max, c5585x.max);
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.count++;
        this.sum += i;
        this.min = Math.min(this.min, i);
        this.max = Math.max(this.max, i);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.a.e(this, intConsumer);
    }

    public final String toString() {
        String simpleName = C5585x.class.getSimpleName();
        Long valueOf = Long.valueOf(this.count);
        Long valueOf2 = Long.valueOf(this.sum);
        Integer valueOf3 = Integer.valueOf(this.min);
        long j = this.count;
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", simpleName, valueOf, valueOf2, valueOf3, Double.valueOf(j > 0 ? this.sum / j : 0.0d), Integer.valueOf(this.max));
    }
}
