package p091;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: ʿⁱ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1849 {
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    private volatile /* synthetic */ int consumerIndex$volatile;
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AtomicReferenceArray f7440 = new AtomicReferenceArray(128);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f7439 = AtomicReferenceFieldUpdater.newUpdater(C1849.class, Object.class, "lastScheduledTask$volatile");

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f7436 = AtomicIntegerFieldUpdater.newUpdater(C1849.class, "producerIndex$volatile");

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f7437 = AtomicIntegerFieldUpdater.newUpdater(C1849.class, "consumerIndex$volatile");

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f7438 = AtomicIntegerFieldUpdater.newUpdater(C1849.class, "blockingTasksInBuffer$volatile");

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0017, code lost:
    
        if (r6 == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0019, code lost:
    
        p091.C1849.f7438.decrementAndGet(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001e, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000f, code lost:
    
        if (r1.f7415 == r6) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0015, code lost:
    
        if (r0.compareAndSet(r5, r1, null) == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0023, code lost:
    
        if (r0.get(r5) == r1) goto L16;
     */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p091.AbstractRunnableC1846 m4781(int r5, boolean r6) {
        /*
            r4 = this;
            r5 = r5 & 127(0x7f, float:1.78E-43)
            java.util.concurrent.atomic.AtomicReferenceArray r0 = r4.f7440
            java.lang.Object r1 = r0.get(r5)
            ʿⁱ.ᵔᵢ r1 = (p091.AbstractRunnableC1846) r1
            r2 = 0
            if (r1 == 0) goto L25
            boolean r3 = r1.f7415
            if (r3 != r6) goto L25
        L11:
            boolean r3 = r0.compareAndSet(r5, r1, r2)
            if (r3 == 0) goto L1f
            if (r6 == 0) goto L1e
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r5 = p091.C1849.f7438
            r5.decrementAndGet(r4)
        L1e:
            return r1
        L1f:
            java.lang.Object r3 = r0.get(r5)
            if (r3 == r1) goto L11
        L25:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p091.C1849.m4781(int, boolean):ʿⁱ.ᵔᵢ");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractRunnableC1846 m4782() {
        AbstractRunnableC1846 abstractRunnableC1846;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f7437;
            int i = atomicIntegerFieldUpdater.get(this);
            if (i - f7436.get(this) == 0) {
                return null;
            }
            int i2 = i & 127;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i, i + 1) && (abstractRunnableC1846 = (AbstractRunnableC1846) this.f7440.getAndSet(i2, null)) != null) {
                if (abstractRunnableC1846.f7415) {
                    f7438.decrementAndGet(this);
                }
                return abstractRunnableC1846;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractRunnableC1846 m4783(AbstractRunnableC1846 abstractRunnableC1846) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f7436;
        if (atomicIntegerFieldUpdater.get(this) - f7437.get(this) == 127) {
            return abstractRunnableC1846;
        }
        if (abstractRunnableC1846.f7415) {
            f7438.incrementAndGet(this);
        }
        int i = atomicIntegerFieldUpdater.get(this) & 127;
        while (true) {
            AtomicReferenceArray atomicReferenceArray = this.f7440;
            if (atomicReferenceArray.get(i) == null) {
                atomicReferenceArray.lazySet(i, abstractRunnableC1846);
                atomicIntegerFieldUpdater.incrementAndGet(this);
                return null;
            }
            Thread.yield();
        }
    }
}
