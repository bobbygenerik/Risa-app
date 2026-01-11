package p029;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: ʼᴵ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1129 implements InterfaceC1130 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AtomicReference f4398;

    public C1129(C1124 c1124) {
        this.f4398 = new AtomicReference(c1124);
    }

    @Override // p029.InterfaceC1130
    public final Iterator iterator() {
        InterfaceC1130 interfaceC1130 = (InterfaceC1130) this.f4398.getAndSet(null);
        if (interfaceC1130 != null) {
            return interfaceC1130.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
