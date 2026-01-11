package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.q1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5535q1 extends AbstractC5539r1 {
    public final Object[] h;

    public C5535q1(Spliterator spliterator, AbstractC5559v1 abstractC5559v1, Object[] objArr) {
        super(spliterator, abstractC5559v1, objArr.length);
        this.h = objArr;
    }

    public C5535q1(C5535q1 c5535q1, Spliterator spliterator, long j, long j2) {
        super(c5535q1, spliterator, j, j2, c5535q1.h.length);
        this.h = c5535q1.h;
    }

    @Override // j$.util.stream.AbstractC5539r1
    public final AbstractC5539r1 a(Spliterator spliterator, long j, long j2) {
        return new C5535q1(this, spliterator, j, j2);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        int i = this.f;
        if (i >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        Object[] objArr = this.h;
        this.f = i + 1;
        objArr[i] = obj;
    }
}
