package j$.util.stream;

import java.util.function.LongPredicate;

/* loaded from: classes2.dex */
public final class M3 extends AbstractC5486g2 implements Q3 {
    public M3(F2 f2, InterfaceC5511l2 interfaceC5511l2, boolean z) {
        super(interfaceC5511l2);
    }

    @Override // j$.util.stream.InterfaceC5506k2, j$.util.stream.InterfaceC5511l2
    public final void accept(long j) {
        LongPredicate longPredicate = null;
        longPredicate.test(j);
        throw null;
    }

    @Override // j$.util.stream.Q3
    public final long h() {
        return 0L;
    }
}
