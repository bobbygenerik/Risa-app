package j$.util.stream;

import java.util.Comparator;

/* renamed from: j$.util.stream.z2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5580z2 extends AbstractC5491h2 {
    public final Comparator b;
    public boolean c;

    public AbstractC5580z2(InterfaceC5511l2 interfaceC5511l2, Comparator comparator) {
        super(interfaceC5511l2);
        this.b = comparator;
    }

    @Override // j$.util.stream.AbstractC5491h2, j$.util.stream.InterfaceC5511l2
    public final boolean e() {
        this.c = true;
        return false;
    }
}
