package p383;

import java.util.ArrayDeque;
import p087.C1740;

/* renamed from: ⁱʼ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4585 extends C1740 {
    @Override // p087.C1740
    /* renamed from: ʽ */
    public final void mo4507(Object obj, Object obj2) {
        C4594 c4594 = (C4594) obj;
        c4594.getClass();
        ArrayDeque arrayDeque = C4594.f17110;
        synchronized (arrayDeque) {
            arrayDeque.offer(c4594);
        }
    }
}
