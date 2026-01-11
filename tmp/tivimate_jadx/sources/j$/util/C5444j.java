package j$.util;

import java.util.RandomAccess;

/* renamed from: j$.util.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5444j extends C5442h implements RandomAccess {
    private static final long serialVersionUID = 1530674583602358482L;

    private Object writeReplace() {
        return new C5442h(this.c);
    }

    @Override // j$.util.C5442h, java.util.List
    public final java.util.List subList(int i, int i2) {
        C5442h c5442h;
        synchronized (this.b) {
            c5442h = new C5442h(this.c.subList(i, i2), this.b);
        }
        return c5442h;
    }
}
