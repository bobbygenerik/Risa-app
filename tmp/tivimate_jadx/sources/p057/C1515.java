package p057;

import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
import p080.C1694;
import p080.C1704;
import p087.C1750;
import p255.C3359;
import p255.C3368;
import p444.C5200;

/* renamed from: ʾ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1515 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C1694 f5985 = new C1694(Object.class, Object.class, Object.class, Collections.singletonList(new C1704(Object.class, Object.class, Object.class, Collections.EMPTY_LIST, new C5200(0), null)), null);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3359 f5987 = new C3368(0);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AtomicReference f5986 = new AtomicReference();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m4324(Class cls, Class cls2, Class cls3, C1694 c1694) {
        synchronized (this.f5987) {
            C3359 c3359 = this.f5987;
            C1750 c1750 = new C1750(cls, cls2, cls3);
            if (c1694 == null) {
                c1694 = f5985;
            }
            c3359.put(c1750, c1694);
        }
    }
}
