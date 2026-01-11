package p145;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import p268.C3466;
import p409.InterfaceC4854;

/* renamed from: ˉᵎ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2404 implements InterfaceC4854 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final AtomicReference f9285 = new AtomicReference();

    @Override // p409.InterfaceC4854
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo5505(boolean z) {
        synchronized (C2405.f9286) {
            try {
                ArrayList arrayList = new ArrayList(C2405.f9287.values());
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    C2405 c2405 = (C2405) obj;
                    if (c2405.f9292.get()) {
                        Iterator it = c2405.f9288.iterator();
                        while (it.hasNext()) {
                            C2405 c24052 = ((C2403) it.next()).f9284;
                            if (!z) {
                                ((C3466) c24052.f9294.get()).m7383();
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
