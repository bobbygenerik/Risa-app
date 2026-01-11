package j$.util.stream;

import java.util.function.Consumer;

/* loaded from: classes2.dex */
public abstract class I implements F3 {
    public boolean a;
    public Object b;

    @Override // j$.util.stream.InterfaceC5511l2, java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        AbstractC5559v1.D();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public /* synthetic */ void accept(int i) {
        AbstractC5559v1.K();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public /* synthetic */ void accept(long j) {
        AbstractC5559v1.L();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final void n(Object obj) {
        if (this.a) {
            return;
        }
        this.a = true;
        this.b = obj;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.a.c(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void c(long j) {
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final boolean e() {
        return this.a;
    }

    @Override // j$.util.stream.InterfaceC5511l2
    public final /* synthetic */ void end() {
    }
}
