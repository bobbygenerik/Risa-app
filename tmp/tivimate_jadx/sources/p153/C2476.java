package p153;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: ˊʽ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2476 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9453 = AtomicReferenceFieldUpdater.newUpdater(C2476.class, Object.class, "_cur$volatile");
    private volatile /* synthetic */ Object _cur$volatile = new C2470(8, false);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m5606() {
        C2470 c2470 = (C2470) f9453.get(this);
        c2470.getClass();
        long j = C2470.f9442.get(c2470);
        return (((int) ((j & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j))) & 1073741823;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object m5607() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9453;
            C2470 c2470 = (C2470) atomicReferenceFieldUpdater.get(this);
            Object m5599 = c2470.m5599();
            if (m5599 != C2470.f9441) {
                return m5599;
            }
            C2470 m5598 = c2470.m5598();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, c2470, m5598) && atomicReferenceFieldUpdater.get(this) == c2470) {
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5608() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9453;
            C2470 c2470 = (C2470) atomicReferenceFieldUpdater.get(this);
            if (c2470.m5600()) {
                return;
            }
            C2470 m5598 = c2470.m5598();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, c2470, m5598) && atomicReferenceFieldUpdater.get(this) == c2470) {
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m5609(Runnable runnable) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9453;
            C2470 c2470 = (C2470) atomicReferenceFieldUpdater.get(this);
            int m5601 = c2470.m5601(runnable);
            if (m5601 == 0) {
                return true;
            }
            if (m5601 == 1) {
                C2470 m5598 = c2470.m5598();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, c2470, m5598) && atomicReferenceFieldUpdater.get(this) == c2470) {
                }
            } else if (m5601 == 2) {
                return false;
            }
        }
    }
}
