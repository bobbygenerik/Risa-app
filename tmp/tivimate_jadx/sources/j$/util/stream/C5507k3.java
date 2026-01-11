package j$.util.stream;

import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.k3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C5507k3 implements InterfaceC5501j2 {
    public final /* synthetic */ int a;
    public final /* synthetic */ IntConsumer b;

    public /* synthetic */ C5507k3(IntConsumer intConsumer, int i) {
        this.a = i;
        this.b = intConsumer;
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

    @Override // j$.util.stream.InterfaceC5501j2, j$.util.stream.InterfaceC5511l2
    public final void accept(int i) {
        switch (this.a) {
            case 0:
                this.b.accept(i);
                return;
            default:
                ((Q2) this.b).accept(i);
                return;
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
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        switch (this.a) {
            case 0:
                d((Integer) obj);
                return;
            default:
                d((Integer) obj);
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

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        switch (this.a) {
            case 0:
                return j$.util.function.a.e(this, intConsumer);
            default:
                return j$.util.function.a.e(this, intConsumer);
        }
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void c(long j) {
        int i = this.a;
    }

    @Override // j$.util.stream.InterfaceC5501j2
    public final /* synthetic */ void d(Integer num) {
        switch (this.a) {
            case 0:
                AbstractC5559v1.G(this, num);
                return;
            default:
                AbstractC5559v1.G(this, num);
                return;
        }
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
