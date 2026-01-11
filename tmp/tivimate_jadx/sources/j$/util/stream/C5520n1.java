package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.n1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5520n1 extends AbstractC5539r1 implements InterfaceC5496i2 {
    public final double[] h;

    public C5520n1(Spliterator spliterator, AbstractC5559v1 abstractC5559v1, double[] dArr) {
        super(spliterator, abstractC5559v1, dArr.length);
        this.h = dArr;
    }

    public C5520n1(C5520n1 c5520n1, Spliterator spliterator, long j, long j2) {
        super(c5520n1, spliterator, j, j2, c5520n1.h.length);
        this.h = c5520n1.h;
    }

    @Override // j$.util.stream.AbstractC5539r1
    public final AbstractC5539r1 a(Spliterator spliterator, long j, long j2) {
        return new C5520n1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC5539r1, j$.util.stream.InterfaceC5511l2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        int i = this.f;
        if (i >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        double[] dArr = this.h;
        this.f = i + 1;
        dArr[i] = d;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        n((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.util.function.a.d(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC5496i2
    public final /* synthetic */ void n(Double d) {
        AbstractC5559v1.E(this, d);
    }
}
