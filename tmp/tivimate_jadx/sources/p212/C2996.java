package p212;

import j$.util.DesugarCollections;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import p074.InterfaceC1650;

/* renamed from: ˏ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2996 implements InterfaceC1650 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public volatile Set f11429;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public volatile Set f11430;

    @Override // p074.InterfaceC1650
    public final Object get() {
        if (this.f11429 == null) {
            synchronized (this) {
                try {
                    if (this.f11429 == null) {
                        this.f11429 = Collections.newSetFromMap(new ConcurrentHashMap());
                        m6526();
                    }
                } finally {
                }
            }
        }
        return DesugarCollections.unmodifiableSet(this.f11429);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized void m6526() {
        try {
            Iterator it = this.f11430.iterator();
            while (it.hasNext()) {
                this.f11429.add(((InterfaceC1650) it.next()).get());
            }
            this.f11430 = null;
        } catch (Throwable th) {
            throw th;
        }
    }
}
