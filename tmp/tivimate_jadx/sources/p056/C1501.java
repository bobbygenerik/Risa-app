package p056;

import com.bumptech.glide.ˈ;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: ʽﹳ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1501 extends ˈ {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final AtomicReferenceFieldUpdater f5947;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final AtomicReferenceFieldUpdater f5948;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final AtomicReferenceFieldUpdater f5949;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final AtomicReferenceFieldUpdater f5950;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final AtomicReferenceFieldUpdater f5951;

    public C1501(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f5947 = atomicReferenceFieldUpdater;
        this.f5948 = atomicReferenceFieldUpdater2;
        this.f5950 = atomicReferenceFieldUpdater3;
        this.f5951 = atomicReferenceFieldUpdater4;
        this.f5949 = atomicReferenceFieldUpdater5;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void m4302(C1512 c1512, C1512 c15122) {
        this.f5948.lazySet(c1512, c15122);
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m4303(C1512 c1512, Thread thread) {
        this.f5947.lazySet(c1512, thread);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean m4304(AbstractC1506 abstractC1506, C1499 c1499, C1499 c14992) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f5951;
            if (atomicReferenceFieldUpdater.compareAndSet(abstractC1506, c1499, c14992)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(abstractC1506) == c1499);
        return false;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean m4305(AbstractC1506 abstractC1506, C1512 c1512, C1512 c15122) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f5950;
            if (atomicReferenceFieldUpdater.compareAndSet(abstractC1506, c1512, c15122)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(abstractC1506) == c1512);
        return false;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean m4306(AbstractC1506 abstractC1506, Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f5949;
            if (atomicReferenceFieldUpdater.compareAndSet(abstractC1506, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(abstractC1506) == obj);
        return false;
    }
}
