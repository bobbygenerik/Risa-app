package p324;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import p012.C0902;
import p126.InterfaceC2139;
import p153.C2470;
import p153.C2475;
import p430.C5109;

/* renamed from: ᴵי.ˈʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4005 extends AbstractC4020 implements InterfaceC3995 {
    private volatile /* synthetic */ Object _delayed$volatile;
    private volatile /* synthetic */ int _isCompleted$volatile;
    private volatile /* synthetic */ Object _queue$volatile;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f15385 = AtomicReferenceFieldUpdater.newUpdater(AbstractC4005.class, Object.class, "_queue$volatile");

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f15383 = AtomicReferenceFieldUpdater.newUpdater(AbstractC4005.class, Object.class, "_delayed$volatile");

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f15384 = AtomicIntegerFieldUpdater.newUpdater(AbstractC4005.class, "_isCompleted$volatile");

    @Override // p324.AbstractC4020
    public void shutdown() {
        AbstractRunnableC4003 m5602;
        AbstractC4053.f15446.set(null);
        f15384.set(this, 1);
        C0902 c0902 = AbstractC3999.f15369;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f15385;
        loop0: while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj != null) {
                if (!(obj instanceof C2470)) {
                    if (obj != c0902) {
                        C2470 c2470 = new C2470(8, true);
                        c2470.m5601((Runnable) obj);
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c2470)) {
                            if (atomicReferenceFieldUpdater.get(this) != obj) {
                                break;
                            }
                        }
                        break loop0;
                    }
                    break;
                }
                ((C2470) obj).m5600();
                break;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, c0902)) {
                if (atomicReferenceFieldUpdater.get(this) != null) {
                    break;
                }
            }
            break loop0;
        }
        do {
        } while (mo8194() <= 0);
        long nanoTime = System.nanoTime();
        while (true) {
            C4045 c4045 = (C4045) f15383.get(this);
            if (c4045 == null) {
                return;
            }
            synchronized (c4045) {
                m5602 = C2475.f9451.get(c4045) > 0 ? c4045.m5602(0) : null;
            }
            if (m5602 == null) {
                return;
            } else {
                mo8147(nanoTime, m5602);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
    
        return true;
     */
    /* renamed from: ʻᴵ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8193(java.lang.Runnable r6) {
        /*
            r5 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = p324.AbstractC4005.f15385
            java.lang.Object r1 = r0.get(r5)
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r2 = p324.AbstractC4005.f15384
            int r2 = r2.get(r5)
            r3 = 1
            if (r2 != r3) goto L10
            goto L4a
        L10:
            if (r1 != 0) goto L21
        L12:
            r1 = 0
            boolean r1 = r0.compareAndSet(r5, r1, r6)
            if (r1 == 0) goto L1a
            goto L62
        L1a:
            java.lang.Object r1 = r0.get(r5)
            if (r1 == 0) goto L12
            goto L0
        L21:
            boolean r2 = r1 instanceof p153.C2470
            if (r2 == 0) goto L46
            r2 = r1
            ˊʽ.ˉʿ r2 = (p153.C2470) r2
            int r4 = r2.m5601(r6)
            if (r4 == 0) goto L62
            if (r4 == r3) goto L34
            r0 = 2
            if (r4 == r0) goto L4a
            goto L0
        L34:
            ˊʽ.ˉʿ r2 = r2.m5598()
        L38:
            boolean r3 = r0.compareAndSet(r5, r1, r2)
            if (r3 == 0) goto L3f
            goto L0
        L3f:
            java.lang.Object r3 = r0.get(r5)
            if (r3 == r1) goto L38
            goto L0
        L46:
            ʻᴵ.ﹳٴ r2 = p324.AbstractC3999.f15369
            if (r1 != r2) goto L4c
        L4a:
            r6 = 0
            return r6
        L4c:
            ˊʽ.ˉʿ r2 = new ˊʽ.ˉʿ
            r4 = 8
            r2.<init>(r4, r3)
            r4 = r1
            java.lang.Runnable r4 = (java.lang.Runnable) r4
            r2.m5601(r4)
            r2.m5601(r6)
        L5c:
            boolean r4 = r0.compareAndSet(r5, r1, r2)
            if (r4 == 0) goto L63
        L62:
            return r3
        L63:
            java.lang.Object r4 = r0.get(r5)
            if (r4 == r1) goto L5c
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: p324.AbstractC4005.m8193(java.lang.Runnable):boolean");
    }

    @Override // p324.InterfaceC3995
    /* renamed from: ʾˋ */
    public final void mo5611(long j, C4030 c4030) {
        long j2 = j > 0 ? j >= 9223372036854L ? Long.MAX_VALUE : 1000000 * j : 0L;
        if (j2 < 4611686018427387903L) {
            long nanoTime = System.nanoTime();
            C4039 c4039 = new C4039(this, j2 + nanoTime, c4030);
            m8197(nanoTime, c4039);
            c4030.m8207(new C4046(2, c4039));
        }
    }

    @Override // p324.AbstractC4020
    /* renamed from: יﹳ, reason: contains not printable characters */
    public final long mo8194() {
        Runnable runnable;
        AbstractRunnableC4003 abstractRunnableC4003;
        C0902 c0902 = AbstractC3999.f15369;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f15385;
        if (!m8200()) {
            m8196();
            loop0: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(this);
                if (obj == null) {
                    break;
                }
                if (!(obj instanceof C2470)) {
                    if (obj == c0902) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, null)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj) {
                            break;
                        }
                    }
                    runnable = (Runnable) obj;
                    break loop0;
                }
                C2470 c2470 = (C2470) obj;
                Object m5599 = c2470.m5599();
                if (m5599 != C2470.f9441) {
                    runnable = (Runnable) m5599;
                    break;
                }
                C2470 m5598 = c2470.m5598();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, m5598) && atomicReferenceFieldUpdater.get(this) == obj) {
                }
            }
            runnable = null;
            if (runnable != null) {
                runnable.run();
                return 0L;
            }
            C5109 c5109 = this.f15399;
            if (((c5109 == null || c5109.isEmpty()) ? Long.MAX_VALUE : 0L) != 0) {
                Object obj2 = atomicReferenceFieldUpdater.get(this);
                if (obj2 != null) {
                    if (obj2 instanceof C2470) {
                        long j = C2470.f9442.get((C2470) obj2);
                        if (((int) (1073741823 & j)) != ((int) ((j & 1152921503533105152L) >> 30))) {
                            return 0L;
                        }
                    } else if (obj2 == c0902) {
                        return Long.MAX_VALUE;
                    }
                }
                C4045 c4045 = (C4045) f15383.get(this);
                if (c4045 != null) {
                    synchronized (c4045) {
                        AbstractRunnableC4003[] abstractRunnableC4003Arr = c4045.f9452;
                        abstractRunnableC4003 = abstractRunnableC4003Arr != null ? abstractRunnableC4003Arr[0] : null;
                    }
                    if (abstractRunnableC4003 != null) {
                        long nanoTime = abstractRunnableC4003.f15380 - System.nanoTime();
                        if (nanoTime >= 0) {
                            return nanoTime;
                        }
                    }
                }
                return Long.MAX_VALUE;
            }
        }
        return 0L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0024, code lost:
    
        if ((p153.C2475.f9451.get(r0) == 0) == false) goto L29;
     */
    /* renamed from: ـˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8195() {
        /*
            r7 = this;
            ﹶˈ.ᵔᵢ r0 = r7.f15399
            r1 = 1
            if (r0 == 0) goto La
            boolean r0 = r0.isEmpty()
            goto Lb
        La:
            r0 = r1
        Lb:
            r2 = 0
            if (r0 != 0) goto Lf
            goto L54
        Lf:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = p324.AbstractC4005.f15383
            java.lang.Object r0 = r0.get(r7)
            ᴵי.ᵔٴ r0 = (p324.C4045) r0
            if (r0 == 0) goto L27
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r3 = p153.C2475.f9451
            int r0 = r3.get(r0)
            if (r0 != 0) goto L23
            r0 = r1
            goto L24
        L23:
            r0 = r2
        L24:
            if (r0 != 0) goto L27
            goto L54
        L27:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = p324.AbstractC4005.f15385
            java.lang.Object r0 = r0.get(r7)
            if (r0 != 0) goto L30
            goto L53
        L30:
            boolean r3 = r0 instanceof p153.C2470
            if (r3 == 0) goto L4f
            ˊʽ.ˉʿ r0 = (p153.C2470) r0
            java.util.concurrent.atomic.AtomicLongFieldUpdater r3 = p153.C2470.f9442
            long r3 = r3.get(r0)
            r5 = 1073741823(0x3fffffff, double:5.304989472E-315)
            long r5 = r5 & r3
            int r0 = (int) r5
            r5 = 1152921503533105152(0xfffffffc0000000, double:1.2882296003504729E-231)
            long r3 = r3 & r5
            r5 = 30
            long r3 = r3 >> r5
            int r3 = (int) r3
            if (r0 != r3) goto L4e
            return r1
        L4e:
            return r2
        L4f:
            ʻᴵ.ﹳٴ r3 = p324.AbstractC3999.f15369
            if (r0 != r3) goto L54
        L53:
            return r1
        L54:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p324.AbstractC4005.m8195():boolean");
    }

    @Override // p324.AbstractC4017
    /* renamed from: ـᵎ */
    public final void mo4764(InterfaceC2139 interfaceC2139, Runnable runnable) {
        mo8149(runnable);
    }

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public final void m8196() {
        AbstractRunnableC4003 abstractRunnableC4003;
        C4045 c4045 = (C4045) f15383.get(this);
        if (c4045 == null || C2475.f9451.get(c4045) == 0) {
            return;
        }
        long nanoTime = System.nanoTime();
        do {
            synchronized (c4045) {
                try {
                    AbstractRunnableC4003[] abstractRunnableC4003Arr = c4045.f9452;
                    AbstractRunnableC4003 abstractRunnableC40032 = abstractRunnableC4003Arr != null ? abstractRunnableC4003Arr[0] : null;
                    if (abstractRunnableC40032 != null) {
                        abstractRunnableC4003 = ((nanoTime - abstractRunnableC40032.f15380) > 0L ? 1 : ((nanoTime - abstractRunnableC40032.f15380) == 0L ? 0 : -1)) >= 0 ? m8193(abstractRunnableC40032) : false ? c4045.m5602(0) : null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } while (abstractRunnableC4003 != null);
    }

    /* renamed from: ᴵʼ */
    public InterfaceC4041 mo5613(long j, RunnableC3987 runnableC3987, InterfaceC2139 interfaceC2139) {
        return AbstractC4048.f15437.mo5613(j, runnableC3987, interfaceC2139);
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object, ᴵי.ᵔٴ] */
    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public final void m8197(long j, AbstractRunnableC4003 abstractRunnableC4003) {
        int m8190;
        Thread mo8146;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f15383;
        if (f15384.get(this) == 1) {
            m8190 = 1;
        } else {
            C4045 c4045 = (C4045) atomicReferenceFieldUpdater.get(this);
            if (c4045 == null) {
                ?? obj = new Object();
                obj.f15434 = j;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, null, obj) && atomicReferenceFieldUpdater.get(this) == null) {
                }
                c4045 = (C4045) atomicReferenceFieldUpdater.get(this);
            }
            m8190 = abstractRunnableC4003.m8190(j, c4045, this);
        }
        if (m8190 != 0) {
            if (m8190 == 1) {
                mo8147(j, abstractRunnableC4003);
                return;
            } else {
                if (m8190 != 2) {
                    throw new IllegalStateException("unexpected result");
                }
                return;
            }
        }
        C4045 c40452 = (C4045) atomicReferenceFieldUpdater.get(this);
        if (c40452 != null) {
            synchronized (c40452) {
                AbstractRunnableC4003[] abstractRunnableC4003Arr = c40452.f9452;
                r2 = abstractRunnableC4003Arr != null ? abstractRunnableC4003Arr[0] : null;
            }
        }
        if (r2 != abstractRunnableC4003 || Thread.currentThread() == (mo8146 = mo8146())) {
            return;
        }
        LockSupport.unpark(mo8146);
    }

    /* renamed from: ⁱˉ */
    public void mo8149(Runnable runnable) {
        m8196();
        if (!m8193(runnable)) {
            RunnableC3990.f15359.mo8149(runnable);
            return;
        }
        Thread mo8146 = mo8146();
        if (Thread.currentThread() != mo8146) {
            LockSupport.unpark(mo8146);
        }
    }
}
