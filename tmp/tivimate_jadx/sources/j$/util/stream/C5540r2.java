package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.r2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5540r2 extends AbstractC5489h0 {
    public final /* synthetic */ long s;
    public final /* synthetic */ long t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5540r2(AbstractC5499j0 abstractC5499j0, int i, long j, long j2) {
        super(abstractC5499j0, i);
        this.s = j;
        this.t = j2;
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [j$.util.stream.A3, j$.util.Spliterator] */
    @Override // j$.util.stream.AbstractC5453a
    public final G0 M0(AbstractC5559v1 abstractC5559v1, Spliterator spliterator, IntFunction intFunction) {
        long j;
        long j2;
        long l0 = abstractC5559v1.l0(spliterator);
        if (l0 > 0 && spliterator.hasCharacteristics(16384)) {
            AbstractC5453a abstractC5453a = (AbstractC5453a) abstractC5559v1;
            while (abstractC5453a.l > 0) {
                abstractC5453a = abstractC5453a.i;
            }
            return AbstractC5559v1.e0(abstractC5559v1, AbstractC5559v1.Y(abstractC5453a.L0(), spliterator, this.s, this.t), true);
        }
        if (Y2.ORDERED.q(((AbstractC5453a) abstractC5559v1).m)) {
            return (G0) new C5560v2(this, abstractC5559v1, spliterator, intFunction, this.s, this.t).invoke();
        }
        j$.util.a0 a0Var = (j$.util.a0) abstractC5559v1.G0(spliterator);
        long j3 = this.s;
        long j4 = this.t;
        if (j3 <= l0) {
            long j5 = l0 - j3;
            j = j4 >= 0 ? Math.min(j4, j5) : j5;
            j2 = 0;
        } else {
            j = j4;
            j2 = j3;
        }
        return AbstractC5559v1.e0(this, new A3(a0Var, j2, j), true);
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [j$.util.stream.A3, j$.util.Spliterator] */
    @Override // j$.util.stream.AbstractC5453a
    public final Spliterator N0(AbstractC5453a abstractC5453a, Spliterator spliterator) {
        long l0 = abstractC5453a.l0(spliterator);
        if (l0 > 0 && spliterator.hasCharacteristics(16384)) {
            j$.util.a0 a0Var = (j$.util.a0) abstractC5453a.G0(spliterator);
            long j = this.s;
            return new AbstractC5541r3(a0Var, j, AbstractC5559v1.a0(j, this.t));
        }
        if (Y2.ORDERED.q(abstractC5453a.m)) {
            return ((G0) new C5560v2(this, abstractC5453a, spliterator, new C5459b0(14), this.s, this.t).invoke()).spliterator();
        }
        j$.util.a0 a0Var2 = (j$.util.a0) abstractC5453a.G0(spliterator);
        long j2 = this.s;
        long j3 = this.t;
        if (j2 <= l0) {
            long j4 = l0 - j2;
            if (j3 >= 0) {
                j4 = Math.min(j3, j4);
            }
            j3 = j4;
            j2 = 0;
        }
        return new A3(a0Var2, j2, j3);
    }

    @Override // j$.util.stream.AbstractC5453a
    public final InterfaceC5511l2 P0(int i, InterfaceC5511l2 interfaceC5511l2) {
        return new C5536q2(this, interfaceC5511l2);
    }
}
