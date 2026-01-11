package j$.util.stream;

import j$.util.C5450p;
import j$.util.Objects;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.e0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5474e0 extends AbstractC5486g2 {
    public boolean b;
    public final j$.util.L c;
    public final /* synthetic */ C5479f0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5474e0(C5479f0 c5479f0, InterfaceC5511l2 interfaceC5511l2) {
        super(interfaceC5511l2);
        this.d = c5479f0;
        InterfaceC5511l2 interfaceC5511l22 = this.a;
        Objects.requireNonNull(interfaceC5511l22);
        this.c = new j$.util.L(interfaceC5511l22, 1);
    }

    @Override // j$.util.stream.InterfaceC5506k2, j$.util.stream.InterfaceC5511l2
    public final void accept(long j) {
        InterfaceC5514m0 interfaceC5514m0 = (InterfaceC5514m0) ((C5450p) this.d.t).apply(j);
        if (interfaceC5514m0 != null) {
            try {
                boolean z = this.b;
                j$.util.L l = this.c;
                if (z) {
                    j$.util.a0 spliterator = interfaceC5514m0.sequential().spliterator();
                    while (!this.a.e() && spliterator.tryAdvance((LongConsumer) l)) {
                    }
                } else {
                    interfaceC5514m0.sequential().forEach(l);
                }
            } catch (Throwable th) {
                try {
                    interfaceC5514m0.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (interfaceC5514m0 != null) {
            interfaceC5514m0.close();
        }
    }

    @Override // j$.util.stream.AbstractC5486g2, j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        this.a.c(-1L);
    }

    @Override // j$.util.stream.AbstractC5486g2, j$.util.stream.InterfaceC5511l2
    public final boolean e() {
        this.b = true;
        return this.a.e();
    }
}
