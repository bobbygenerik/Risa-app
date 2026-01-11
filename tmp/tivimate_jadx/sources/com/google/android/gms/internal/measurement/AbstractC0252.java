package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import p255.C3356;
import p255.C3359;
import p255.C3368;

/* renamed from: com.google.android.gms.internal.measurement.ʻᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0252 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C3359 f1746 = new C3368(0);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static synchronized void m1200() {
        synchronized (AbstractC0252.class) {
            C3359 c3359 = f1746;
            Iterator it = ((C3356) c3359.values()).iterator();
            if (it.hasNext()) {
                ((AbstractC0252) it.next()).getClass();
                throw null;
            }
            c3359.clear();
        }
    }
}
