package j$.util.stream;

import j$.util.Optional;

/* loaded from: classes2.dex */
public final class H extends I {
    public static final D c;
    public static final D d;

    static {
        Z2 z2 = Z2.REFERENCE;
        C5523o c5523o = new C5523o(8);
        C5523o c5523o2 = new C5523o(9);
        Optional optional = Optional.b;
        c = new D(true, z2, optional, c5523o, c5523o2);
        d = new D(false, z2, optional, new C5523o(8), new C5523o(9));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return new Optional(this.b);
        }
        return null;
    }
}
