package j$.util.stream;

import j$.util.Spliterator;

/* loaded from: classes2.dex */
public final class C1 extends AbstractC5559v1 {
    public final /* synthetic */ int h;

    public /* synthetic */ C1(int i) {
        this.h = i;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, j$.util.stream.Q1] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, j$.util.stream.Q1] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, j$.util.stream.Q1] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, j$.util.stream.Q1] */
    @Override // j$.util.stream.AbstractC5559v1
    public final Q1 D0() {
        switch (this.h) {
            case 0:
                return new Object();
            case 1:
                return new Object();
            case 2:
                return new Object();
            default:
                return new Object();
        }
    }

    @Override // j$.util.stream.AbstractC5559v1, j$.util.stream.E3
    public final Object f(AbstractC5453a abstractC5453a, Spliterator spliterator) {
        switch (this.h) {
            case 0:
                return Y2.SIZED.q(abstractC5453a.m) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.f(abstractC5453a, spliterator);
            case 1:
                return Y2.SIZED.q(abstractC5453a.m) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.f(abstractC5453a, spliterator);
            case 2:
                return Y2.SIZED.q(abstractC5453a.m) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.f(abstractC5453a, spliterator);
            default:
                return Y2.SIZED.q(abstractC5453a.m) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.f(abstractC5453a, spliterator);
        }
    }

    @Override // j$.util.stream.AbstractC5559v1, j$.util.stream.E3
    public final Object j(AbstractC5559v1 abstractC5559v1, Spliterator spliterator) {
        switch (this.h) {
            case 0:
                return Y2.SIZED.q(((AbstractC5453a) abstractC5559v1).m) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.j(abstractC5559v1, spliterator);
            case 1:
                return Y2.SIZED.q(((AbstractC5453a) abstractC5559v1).m) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.j(abstractC5559v1, spliterator);
            case 2:
                return Y2.SIZED.q(((AbstractC5453a) abstractC5559v1).m) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.j(abstractC5559v1, spliterator);
            default:
                return Y2.SIZED.q(((AbstractC5453a) abstractC5559v1).m) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.j(abstractC5559v1, spliterator);
        }
    }

    @Override // j$.util.stream.AbstractC5559v1, j$.util.stream.E3
    public final int w() {
        switch (this.h) {
            case 0:
                return Y2.r;
            case 1:
                return Y2.r;
            case 2:
                return Y2.r;
            default:
                return Y2.r;
        }
    }
}
