package j$.util;

import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;

/* renamed from: j$.util.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5446l implements Iterator, InterfaceC5586y {
    public final /* synthetic */ int a = 0;
    public final Iterator b;

    public C5446l(C5447m c5447m) {
        this.b = c5447m.a.iterator();
    }

    public C5446l(C5452s c5452s) {
        this.b = c5452s.a.iterator();
    }

    @Override // java.util.Iterator, j$.util.InterfaceC5586y
    public final void forEachRemaining(Consumer consumer) {
        switch (this.a) {
            case 0:
                j$.com.android.tools.r8.a.L(this.b, consumer);
                return;
            default:
                j$.com.android.tools.r8.a.L(this.b, new C5450p(0, consumer));
                return;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.a) {
            case 0:
                return this.b.hasNext();
            default:
                return this.b.hasNext();
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.a) {
            case 0:
                return this.b.next();
            default:
                return new C5451q((Map.Entry) this.b.next());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }
}
