package j$.util.stream;

import java.util.function.LongBinaryOperator;

/* renamed from: j$.util.stream.w1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5564w1 extends AbstractC5559v1 {
    public final /* synthetic */ LongBinaryOperator h;
    public final /* synthetic */ long i;

    public C5564w1(Z2 z2, LongBinaryOperator longBinaryOperator, long j) {
        this.h = longBinaryOperator;
        this.i = j;
    }

    @Override // j$.util.stream.AbstractC5559v1
    public final Q1 D0() {
        return new O1(this.i, this.h);
    }
}
