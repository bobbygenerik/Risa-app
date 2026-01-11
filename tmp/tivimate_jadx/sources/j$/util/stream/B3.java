package j$.util.stream;

import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class B3 implements InterfaceC5511l2 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Consumer b;

    public /* synthetic */ B3(Consumer consumer, int i) {
        this.a = i;
        this.b = consumer;
    }

    private final /* synthetic */ void a(long j) {
    }

    private final /* synthetic */ void b(long j) {
    }

    private final /* synthetic */ void f() {
    }

    private final /* synthetic */ void g() {
    }

    @Override // j$.util.stream.InterfaceC5511l2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        switch (this.a) {
            case 0:
                AbstractC5559v1.D();
                throw null;
            default:
                AbstractC5559v1.D();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void accept(int i) {
        switch (this.a) {
            case 0:
                AbstractC5559v1.K();
                throw null;
            default:
                AbstractC5559v1.K();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void accept(long j) {
        switch (this.a) {
            case 0:
                AbstractC5559v1.L();
                throw null;
            default:
                AbstractC5559v1.L();
                throw null;
        }
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        switch (this.a) {
            case 0:
                ((V2) this.b).n(obj);
                return;
            default:
                this.b.n(obj);
                return;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.a) {
            case 0:
                return j$.util.function.a.c(this, consumer);
            default:
                return j$.util.function.a.c(this, consumer);
        }
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void c(long j) {
        int i = this.a;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ boolean e() {
        switch (this.a) {
            case 0:
                return false;
            default:
                return false;
        }
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void end() {
        int i = this.a;
    }
}
