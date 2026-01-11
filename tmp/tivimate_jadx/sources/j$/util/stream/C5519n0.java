package j$.util.stream;

import java.util.function.Supplier;

/* renamed from: j$.util.stream.n0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C5519n0 implements Supplier {
    public final /* synthetic */ int a;
    public final /* synthetic */ EnumC5548t0 b;

    public /* synthetic */ C5519n0(EnumC5548t0 enumC5548t0, int i) {
        this.a = i;
        this.b = enumC5548t0;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.a) {
            case 0:
                return new AbstractC5543s0(this.b);
            case 1:
                return new AbstractC5543s0(this.b);
            default:
                return new AbstractC5543s0(this.b);
        }
    }
}
