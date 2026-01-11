package p121;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import ﹳٴ.ﹳٴ;

/* renamed from: ˈˊ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2020 extends ﹳٴ {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final AtomicReferenceFieldUpdater f7911;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final AtomicReferenceFieldUpdater f7912;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final AtomicReferenceFieldUpdater f7913;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final AtomicReferenceFieldUpdater f7914;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final AtomicReferenceFieldUpdater f7915;

    public C2020(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f7914 = atomicReferenceFieldUpdater;
        this.f7915 = atomicReferenceFieldUpdater2;
        this.f7911 = atomicReferenceFieldUpdater3;
        this.f7912 = atomicReferenceFieldUpdater4;
        this.f7913 = atomicReferenceFieldUpdater5;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m5005(AbstractC2021 abstractC2021, C2032 c2032, C2032 c20322) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f7911;
            if (atomicReferenceFieldUpdater.compareAndSet(abstractC2021, c2032, c20322)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(abstractC2021) == c2032);
        return false;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final C2032 m5006(AbstractC2021 abstractC2021) {
        return (C2032) this.f7911.getAndSet(abstractC2021, C2032.f7944);
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m5007(C2032 c2032, Thread thread) {
        this.f7914.lazySet(c2032, thread);
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final C2018 m5008(AbstractC2021 abstractC2021) {
        return (C2018) this.f7912.getAndSet(abstractC2021, C2018.f7907);
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final void m5009(C2032 c2032, C2032 c20322) {
        this.f7915.lazySet(c2032, c20322);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m5010(AbstractC2021 abstractC2021, Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f7913;
            if (atomicReferenceFieldUpdater.compareAndSet(abstractC2021, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(abstractC2021) == obj);
        return false;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m5011(AbstractC2021 abstractC2021, C2018 c2018, C2018 c20182) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f7912;
            if (atomicReferenceFieldUpdater.compareAndSet(abstractC2021, c2018, c20182)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(abstractC2021) == c2018);
        return false;
    }
}
