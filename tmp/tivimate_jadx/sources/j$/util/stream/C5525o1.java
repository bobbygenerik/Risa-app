package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.o1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5525o1 extends AbstractC5539r1 implements InterfaceC5501j2 {
    public final int[] h;

    public C5525o1(Spliterator spliterator, AbstractC5559v1 abstractC5559v1, int[] iArr) {
        super(spliterator, abstractC5559v1, iArr.length);
        this.h = iArr;
    }

    public C5525o1(C5525o1 c5525o1, Spliterator spliterator, long j, long j2) {
        super(c5525o1, spliterator, j, j2, c5525o1.h.length);
        this.h = c5525o1.h;
    }

    @Override // j$.util.stream.AbstractC5539r1
    public final AbstractC5539r1 a(Spliterator spliterator, long j, long j2) {
        return new C5525o1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC5539r1, j$.util.stream.InterfaceC5511l2
    public final void accept(int i) {
        int i2 = this.f;
        if (i2 >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        int[] iArr = this.h;
        this.f = i2 + 1;
        iArr[i2] = i;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        d((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.a.e(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC5501j2
    public final /* synthetic */ void d(Integer num) {
        AbstractC5559v1.G(this, num);
    }
}
