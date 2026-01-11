package j$.util.stream;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.i3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C5497i3 implements InterfaceC5496i2 {
    public final /* synthetic */ int a;
    public final /* synthetic */ DoubleConsumer b;

    public /* synthetic */ C5497i3(DoubleConsumer doubleConsumer, int i) {
        this.a = i;
        this.b = doubleConsumer;
    }

    private final /* synthetic */ void a(long j) {
    }

    private final /* synthetic */ void b(long j) {
    }

    private final /* synthetic */ void f() {
    }

    private final /* synthetic */ void g() {
    }

    @Override // j$.util.stream.InterfaceC5496i2, j$.util.stream.InterfaceC5511l2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        switch (this.a) {
            case 0:
                this.b.accept(d);
                return;
            default:
                ((O2) this.b).accept(d);
                return;
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
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        switch (this.a) {
            case 0:
                n((Double) obj);
                return;
            default:
                n((Double) obj);
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

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        switch (this.a) {
            case 0:
                return j$.util.function.a.d(this, doubleConsumer);
            default:
                return j$.util.function.a.d(this, doubleConsumer);
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

    @Override // j$.util.stream.InterfaceC5496i2
    public final /* synthetic */ void n(Double d) {
        switch (this.a) {
            case 0:
                AbstractC5559v1.E(this, d);
                return;
            default:
                AbstractC5559v1.E(this, d);
                return;
        }
    }
}
