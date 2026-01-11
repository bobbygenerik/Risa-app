package j$.util.stream;

import java.util.function.Consumer;

/* renamed from: j$.util.stream.f3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5482f3 extends AbstractC5487g3 implements Consumer {
    public final Object[] b;

    public C5482f3(int i) {
        this.b = new Object[i];
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        this.a = i + 1;
        this.b[i] = obj;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.a.c(this, consumer);
    }
}
