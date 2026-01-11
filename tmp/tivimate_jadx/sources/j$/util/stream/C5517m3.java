package j$.util.stream;

import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.m3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C5517m3 implements InterfaceC5506k2 {
    public final /* synthetic */ int a;
    public final /* synthetic */ LongConsumer b;

    public /* synthetic */ C5517m3(LongConsumer longConsumer, int i) {
        this.a = i;
        this.b = longConsumer;
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

    @Override // j$.util.stream.InterfaceC5506k2, j$.util.stream.InterfaceC5511l2
    public final void accept(long j) {
        switch (this.a) {
            case 0:
                this.b.accept(j);
                return;
            default:
                ((S2) this.b).accept(j);
                return;
        }
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        switch (this.a) {
            case 0:
                l((Long) obj);
                return;
            default:
                l((Long) obj);
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

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        switch (this.a) {
            case 0:
                return j$.util.function.a.f(this, longConsumer);
            default:
                return j$.util.function.a.f(this, longConsumer);
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

    @Override // j$.util.stream.InterfaceC5506k2
    public final /* synthetic */ void l(Long l) {
        switch (this.a) {
            case 0:
                AbstractC5559v1.I(this, l);
                return;
            default:
                AbstractC5559v1.I(this, l);
                return;
        }
    }
}
