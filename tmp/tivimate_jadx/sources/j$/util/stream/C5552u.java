package j$.util.stream;

import j$.util.C5450p;
import j$.util.Objects;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.u, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5552u extends AbstractC5476e2 {
    public boolean b;
    public final j$.util.D c;
    public final /* synthetic */ C5557v d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5552u(C5557v c5557v, InterfaceC5511l2 interfaceC5511l2) {
        super(interfaceC5511l2);
        this.d = c5557v;
        InterfaceC5511l2 interfaceC5511l22 = this.a;
        Objects.requireNonNull(interfaceC5511l22);
        this.c = new j$.util.D(interfaceC5511l22, 1);
    }

    @Override // j$.util.stream.InterfaceC5496i2, j$.util.stream.InterfaceC5511l2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        C c = (C) ((C5450p) this.d.t).apply(d);
        if (c != null) {
            try {
                boolean z = this.b;
                j$.util.D d2 = this.c;
                if (z) {
                    j$.util.U spliterator = c.sequential().spliterator();
                    while (!this.a.e() && spliterator.tryAdvance((DoubleConsumer) d2)) {
                    }
                } else {
                    c.sequential().forEach(d2);
                }
            } catch (Throwable th) {
                try {
                    c.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (c != null) {
            c.close();
        }
    }

    @Override // j$.util.stream.AbstractC5476e2, j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        this.a.c(-1L);
    }

    @Override // j$.util.stream.AbstractC5476e2, j$.util.stream.InterfaceC5511l2
    public final boolean e() {
        this.b = true;
        return this.a.e();
    }
}
