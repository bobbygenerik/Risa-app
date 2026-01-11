package j$.util.stream;

import j$.util.C5450p;
import j$.util.Objects;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class Y1 extends AbstractC5491h2 {
    public final /* synthetic */ int b = 1;
    public boolean c;
    public final Object d;
    public final /* synthetic */ AbstractC5453a e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Y1(U u, InterfaceC5511l2 interfaceC5511l2) {
        super(interfaceC5511l2);
        this.e = u;
        InterfaceC5511l2 interfaceC5511l22 = this.a;
        Objects.requireNonNull(interfaceC5511l22);
        this.d = new j$.util.H(interfaceC5511l22, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Y1(C5479f0 c5479f0, InterfaceC5511l2 interfaceC5511l2) {
        super(interfaceC5511l2);
        this.e = c5479f0;
        InterfaceC5511l2 interfaceC5511l22 = this.a;
        Objects.requireNonNull(interfaceC5511l22);
        this.d = new j$.util.L(interfaceC5511l22, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Y1(C5557v c5557v, InterfaceC5511l2 interfaceC5511l2) {
        super(interfaceC5511l2);
        this.e = c5557v;
        InterfaceC5511l2 interfaceC5511l22 = this.a;
        Objects.requireNonNull(interfaceC5511l22);
        this.d = new j$.util.D(interfaceC5511l22, 1);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        switch (this.b) {
            case 0:
                j$.util.L l = (j$.util.L) this.d;
                InterfaceC5514m0 interfaceC5514m0 = (InterfaceC5514m0) ((C5450p) ((C5479f0) this.e).t).apply((C5450p) obj);
                if (interfaceC5514m0 != null) {
                    try {
                        if (this.c) {
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
                    return;
                }
                return;
            case 1:
                j$.util.H h = (j$.util.H) this.d;
                IntStream intStream = (IntStream) ((C5450p) ((U) this.e).t).apply((C5450p) obj);
                if (intStream != null) {
                    try {
                        if (this.c) {
                            j$.util.X spliterator2 = intStream.sequential().spliterator();
                            while (!this.a.e() && spliterator2.tryAdvance((IntConsumer) h)) {
                            }
                        } else {
                            intStream.sequential().forEach(h);
                        }
                    } catch (Throwable th3) {
                        try {
                            intStream.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                }
                if (intStream != null) {
                    intStream.close();
                    return;
                }
                return;
            default:
                j$.util.D d = (j$.util.D) this.d;
                C c = (C) ((C5450p) ((C5557v) this.e).t).apply((C5450p) obj);
                if (c != null) {
                    try {
                        if (this.c) {
                            j$.util.U spliterator3 = c.sequential().spliterator();
                            while (!this.a.e() && spliterator3.tryAdvance((DoubleConsumer) d)) {
                            }
                        } else {
                            c.sequential().forEach(d);
                        }
                    } catch (Throwable th5) {
                        try {
                            c.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (c != null) {
                    c.close();
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.AbstractC5491h2, j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        switch (this.b) {
            case 0:
                this.a.c(-1L);
                return;
            case 1:
                this.a.c(-1L);
                return;
            default:
                this.a.c(-1L);
                return;
        }
    }

    @Override // j$.util.stream.AbstractC5491h2, j$.util.stream.InterfaceC5511l2
    public final boolean e() {
        switch (this.b) {
            case 0:
                this.c = true;
                return this.a.e();
            case 1:
                this.c = true;
                return this.a.e();
            default:
                this.c = true;
                return this.a.e();
        }
    }
}
