package j$.util;

import java.util.RandomAccess;

/* renamed from: j$.util.u, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5582u extends C5449o implements RandomAccess {
    private static final long serialVersionUID = -2542308836966382001L;

    private Object writeReplace() {
        return new C5449o(this.b);
    }

    @Override // j$.util.C5449o, java.util.List
    public final java.util.List subList(int i, int i2) {
        return new C5449o(this.b.subList(i, i2));
    }
}
