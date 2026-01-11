package j$.util.stream;

import j$.util.C5450p;
import j$.util.Spliterator;

/* renamed from: j$.util.stream.k, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5503k extends AbstractC5491h2 {
    public final /* synthetic */ int b = 2;
    public boolean c;
    public Object d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5503k(H3 h3, InterfaceC5511l2 interfaceC5511l2) {
        super(interfaceC5511l2);
        this.d = h3;
        this.c = true;
    }

    public /* synthetic */ C5503k(InterfaceC5511l2 interfaceC5511l2) {
        super(interfaceC5511l2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5503k(C5533q c5533q, InterfaceC5511l2 interfaceC5511l2) {
        super(interfaceC5511l2);
        this.d = c5533q;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        switch (this.b) {
            case 0:
                InterfaceC5511l2 interfaceC5511l2 = this.a;
                if (obj == null) {
                    if (this.c) {
                        return;
                    }
                    this.c = true;
                    this.d = null;
                    interfaceC5511l2.n((InterfaceC5511l2) null);
                    return;
                }
                Object obj2 = this.d;
                if (obj2 == null || !obj.equals(obj2)) {
                    this.d = obj;
                    interfaceC5511l2.n((InterfaceC5511l2) obj);
                    return;
                }
                return;
            case 1:
                Stream stream = (Stream) ((C5450p) ((C5533q) this.d).t).apply((C5450p) obj);
                if (stream != null) {
                    try {
                        boolean z = this.c;
                        InterfaceC5511l2 interfaceC5511l22 = this.a;
                        if (z) {
                            Spliterator spliterator = ((Stream) stream.sequential()).spliterator();
                            while (!interfaceC5511l22.e() && spliterator.tryAdvance(interfaceC5511l22)) {
                            }
                        } else {
                            ((Stream) stream.sequential()).forEach(interfaceC5511l22);
                        }
                    } catch (Throwable th) {
                        try {
                            stream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (stream != null) {
                    stream.close();
                    return;
                }
                return;
            default:
                if (this.c) {
                    boolean test = ((H3) this.d).t.test(obj);
                    this.c = test;
                    if (test) {
                        this.a.n((InterfaceC5511l2) obj);
                        return;
                    }
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.AbstractC5491h2, j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        switch (this.b) {
            case 0:
                this.c = false;
                this.d = null;
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
    public boolean e() {
        switch (this.b) {
            case 1:
                this.c = true;
                return this.a.e();
            case 2:
                return !this.c || this.a.e();
            default:
                return super.e();
        }
    }

    @Override // j$.util.stream.AbstractC5491h2, j$.util.stream.InterfaceC5511l2
    public void end() {
        switch (this.b) {
            case 0:
                this.c = false;
                this.d = null;
                this.a.end();
                return;
            default:
                super.end();
                return;
        }
    }
}
