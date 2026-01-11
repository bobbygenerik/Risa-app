package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.p1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5530p1 extends AbstractC5539r1 implements InterfaceC5506k2 {
    public final long[] h;

    public C5530p1(Spliterator spliterator, AbstractC5559v1 abstractC5559v1, long[] jArr) {
        super(spliterator, abstractC5559v1, jArr.length);
        this.h = jArr;
    }

    public C5530p1(C5530p1 c5530p1, Spliterator spliterator, long j, long j2) {
        super(c5530p1, spliterator, j, j2, c5530p1.h.length);
        this.h = c5530p1.h;
    }

    @Override // j$.util.stream.AbstractC5539r1
    public final AbstractC5539r1 a(Spliterator spliterator, long j, long j2) {
        return new C5530p1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC5539r1, j$.util.stream.InterfaceC5511l2
    public final void accept(long j) {
        int i = this.f;
        if (i >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        long[] jArr = this.h;
        this.f = i + 1;
        jArr[i] = j;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        l((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.util.function.a.f(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC5506k2
    public final /* synthetic */ void l(Long l) {
        AbstractC5559v1.I(this, l);
    }
}
