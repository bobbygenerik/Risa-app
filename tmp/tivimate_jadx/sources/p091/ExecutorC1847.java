package p091;

import android.support.v4.media.session.AbstractC0001;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.NoWhenBranchMatchedException;
import p010.AbstractC0844;
import p012.C0902;
import p035.AbstractC1220;
import p152.AbstractC2444;
import p153.C2464;
import p153.C2476;
import p324.AbstractC3999;

/* renamed from: ʿⁱ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ExecutorC1847 implements Executor, Closeable {
    private volatile /* synthetic */ int _isTerminated$volatile;
    private volatile /* synthetic */ long controlState$volatile;
    private volatile /* synthetic */ long parkedWorkersStack$volatile;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final long f7420;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f7421;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final String f7422;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C1843 f7423;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final C2464 f7424;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f7425;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C1843 f7426;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicLongFieldUpdater f7416 = AtomicLongFieldUpdater.newUpdater(ExecutorC1847.class, "parkedWorkersStack$volatile");

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicLongFieldUpdater f7419 = AtomicLongFieldUpdater.newUpdater(ExecutorC1847.class, "controlState$volatile");

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f7417 = AtomicIntegerFieldUpdater.newUpdater(ExecutorC1847.class, "_isTerminated$volatile");

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static final C0902 f7418 = new C0902(5, "NOT_IN_STACK");

    /* JADX WARN: Type inference failed for: r4v10, types: [ˊʽ.ٴﹶ, ʿⁱ.ˑﹳ] */
    /* JADX WARN: Type inference failed for: r4v9, types: [ˊʽ.ٴﹶ, ʿⁱ.ˑﹳ] */
    public ExecutorC1847(int i, int i2, long j, String str) {
        this.f7421 = i;
        this.f7425 = i2;
        this.f7420 = j;
        this.f7422 = str;
        if (i < 1) {
            throw new IllegalArgumentException(AbstractC1220.m3773(i, "Core pool size ", " should be at least 1").toString());
        }
        if (i2 < i) {
            throw new IllegalArgumentException(AbstractC0001.m14(i2, i, "Max pool size ", " should be greater than or equals to core pool size ").toString());
        }
        if (i2 > 2097150) {
            throw new IllegalArgumentException(AbstractC1220.m3773(i2, "Max pool size ", " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j + " must be positive").toString());
        }
        this.f7426 = new C2476();
        this.f7423 = new C2476();
        this.f7424 = new C2464((i + 1) * 2);
        this.controlState$volatile = i << 42;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static /* synthetic */ void m4766(ExecutorC1847 executorC1847, Runnable runnable, int i) {
        executorC1847.m4770(runnable, false, (i & 4) == 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0085, code lost:
    
        if (r1 == null) goto L39;
     */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() {
        /*
            r8 = this;
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = p091.ExecutorC1847.f7417
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r8, r1, r2)
            if (r0 != 0) goto Lb
            return
        Lb:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            boolean r1 = r0 instanceof p091.C1848
            r3 = 0
            if (r1 == 0) goto L17
            ʿⁱ.ﹳٴ r0 = (p091.C1848) r0
            goto L18
        L17:
            r0 = r3
        L18:
            if (r0 == 0) goto L23
            ʿⁱ.ⁱˊ r1 = r0.f7431
            boolean r1 = p152.AbstractC2444.m5562(r1, r8)
            if (r1 == 0) goto L23
            goto L24
        L23:
            r0 = r3
        L24:
            ˊʽ.ʼᐧ r1 = r8.f7424
            monitor-enter(r1)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r4 = p091.ExecutorC1847.f7419     // Catch: java.lang.Throwable -> Lbf
            long r4 = r4.get(r8)     // Catch: java.lang.Throwable -> Lbf
            r6 = 2097151(0x1fffff, double:1.0361303E-317)
            long r4 = r4 & r6
            int r4 = (int) r4
            monitor-exit(r1)
            if (r2 > r4) goto L75
            r1 = r2
        L36:
            ˊʽ.ʼᐧ r5 = r8.f7424
            java.lang.Object r5 = r5.m5585(r1)
            ʿⁱ.ﹳٴ r5 = (p091.C1848) r5
            if (r5 == r0) goto L70
        L40:
            java.lang.Thread$State r6 = r5.getState()
            java.lang.Thread$State r7 = java.lang.Thread.State.TERMINATED
            if (r6 == r7) goto L51
            java.util.concurrent.locks.LockSupport.unpark(r5)
            r6 = 10000(0x2710, double:4.9407E-320)
            r5.join(r6)
            goto L40
        L51:
            ʿⁱ.ﾞʻ r5 = r5.f7429
            ʿⁱ.ˑﹳ r6 = r8.f7423
            r5.getClass()
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r7 = p091.C1849.f7439
            java.lang.Object r7 = r7.getAndSet(r5, r3)
            ʿⁱ.ᵔᵢ r7 = (p091.AbstractRunnableC1846) r7
            if (r7 == 0) goto L65
            r6.m5609(r7)
        L65:
            ʿⁱ.ᵔᵢ r7 = r5.m4782()
            if (r7 != 0) goto L6c
            goto L70
        L6c:
            r6.m5609(r7)
            goto L65
        L70:
            if (r1 == r4) goto L75
            int r1 = r1 + 1
            goto L36
        L75:
            ʿⁱ.ˑﹳ r1 = r8.f7423
            r1.m5608()
            ʿⁱ.ˑﹳ r1 = r8.f7426
            r1.m5608()
        L7f:
            if (r0 == 0) goto L87
            ʿⁱ.ᵔᵢ r1 = r0.m4779(r2)
            if (r1 != 0) goto Lae
        L87:
            ʿⁱ.ˑﹳ r1 = r8.f7426
            java.lang.Object r1 = r1.m5607()
            ʿⁱ.ᵔᵢ r1 = (p091.AbstractRunnableC1846) r1
            if (r1 != 0) goto Lae
            ʿⁱ.ˑﹳ r1 = r8.f7423
            java.lang.Object r1 = r1.m5607()
            ʿⁱ.ᵔᵢ r1 = (p091.AbstractRunnableC1846) r1
            if (r1 != 0) goto Lae
            if (r0 == 0) goto La1
            r1 = 5
            r0.m4777(r1)
        La1:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = p091.ExecutorC1847.f7416
            r1 = 0
            r0.set(r8, r1)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = p091.ExecutorC1847.f7419
            r0.set(r8, r1)
            return
        Lae:
            r1.run()     // Catch: java.lang.Throwable -> Lb2
            goto L7f
        Lb2:
            r1 = move-exception
            java.lang.Thread r3 = java.lang.Thread.currentThread()
            java.lang.Thread$UncaughtExceptionHandler r4 = r3.getUncaughtExceptionHandler()
            r4.uncaughtException(r3, r1)
            goto L7f
        Lbf:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p091.ExecutorC1847.close():void");
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        m4766(this, runnable, 6);
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        C2464 c2464 = this.f7424;
        int m5586 = c2464.m5586();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 1; i6 < m5586; i6++) {
            C1848 c1848 = (C1848) c2464.m5585(i6);
            if (c1848 != null) {
                C1849 c1849 = c1848.f7429;
                c1849.getClass();
                int i7 = C1849.f7439.get(c1849) != null ? (C1849.f7436.get(c1849) - C1849.f7437.get(c1849)) + 1 : C1849.f7436.get(c1849) - C1849.f7437.get(c1849);
                int m3018 = AbstractC0844.m3018(c1848.f7428);
                if (m3018 == 0) {
                    i++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(i7);
                    sb.append('c');
                    arrayList.add(sb.toString());
                } else if (m3018 == 1) {
                    i2++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i7);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (m3018 == 2) {
                    i3++;
                } else if (m3018 == 3) {
                    i4++;
                    if (i7 > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(i7);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else {
                    if (m3018 != 4) {
                        throw new NoWhenBranchMatchedException();
                    }
                    i5++;
                }
            }
        }
        long j = f7419.get(this);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.f7422);
        sb4.append('@');
        sb4.append(AbstractC3999.m8173(this));
        sb4.append("[Pool Size {core = ");
        int i8 = this.f7421;
        sb4.append(i8);
        sb4.append(", max = ");
        sb4.append(this.f7425);
        sb4.append("}, Worker States {CPU = ");
        sb4.append(i);
        sb4.append(", blocking = ");
        sb4.append(i2);
        sb4.append(", parked = ");
        sb4.append(i3);
        sb4.append(", dormant = ");
        sb4.append(i4);
        sb4.append(", terminated = ");
        sb4.append(i5);
        sb4.append("}, running workers queues = ");
        sb4.append(arrayList);
        sb4.append(", global CPU queue size = ");
        sb4.append(this.f7426.m5606());
        sb4.append(", global blocking queue size = ");
        sb4.append(this.f7423.m5606());
        sb4.append(", Control State {created workers= ");
        sb4.append((int) (2097151 & j));
        sb4.append(", blocking tasks = ");
        sb4.append((int) ((4398044413952L & j) >> 21));
        sb4.append(", CPUs acquired = ");
        sb4.append(i8 - ((int) ((j & 9223367638808264704L) >> 42)));
        sb4.append("}]");
        return sb4.toString();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m4767() {
        synchronized (this.f7424) {
            try {
                if (f7417.get(this) == 1) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = f7419;
                long j = atomicLongFieldUpdater.get(this);
                int i = (int) (j & 2097151);
                int i2 = i - ((int) ((j & 4398044413952L) >> 21));
                if (i2 < 0) {
                    i2 = 0;
                }
                if (i2 >= this.f7421) {
                    return 0;
                }
                if (i >= this.f7425) {
                    return 0;
                }
                int i3 = ((int) (atomicLongFieldUpdater.get(this) & 2097151)) + 1;
                if (i3 <= 0 || this.f7424.m5585(i3) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                C1848 c1848 = new C1848(this, i3);
                this.f7424.m5584(i3, c1848);
                if (i3 != ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i4 = i2 + 1;
                c1848.start();
                return i4;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean m4768() {
        C0902 c0902;
        int i;
        while (true) {
            long j = f7416.get(this);
            C1848 c1848 = (C1848) this.f7424.m5585((int) (2097151 & j));
            if (c1848 == null) {
                c1848 = null;
            } else {
                long j2 = (2097152 + j) & (-2097152);
                Object m4773 = c1848.m4773();
                while (true) {
                    c0902 = f7418;
                    if (m4773 == c0902) {
                        i = -1;
                        break;
                    }
                    if (m4773 == null) {
                        i = 0;
                        break;
                    }
                    C1848 c18482 = (C1848) m4773;
                    i = c18482.m4778();
                    if (i != 0) {
                        break;
                    }
                    m4773 = c18482.m4773();
                }
                if (i >= 0) {
                    if (f7416.compareAndSet(this, j, i | j2)) {
                        c1848.m4776(c0902);
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
            if (c1848 == null) {
                return false;
            }
            if (C1848.f7427.compareAndSet(c1848, -1, 0)) {
                LockSupport.unpark(c1848);
                return true;
            }
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final boolean m4769(long j) {
        int i = ((int) (2097151 & j)) - ((int) ((j & 4398044413952L) >> 21));
        if (i < 0) {
            i = 0;
        }
        int i2 = this.f7421;
        if (i < i2) {
            int m4767 = m4767();
            if (m4767 == 1 && i2 > 1) {
                m4767();
            }
            if (m4767 > 0) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m4770(Runnable runnable, boolean z, boolean z2) {
        AbstractRunnableC1846 c1839;
        int i;
        AbstractC1841.f7410.getClass();
        long nanoTime = System.nanoTime();
        if (runnable instanceof AbstractRunnableC1846) {
            c1839 = (AbstractRunnableC1846) runnable;
            c1839.f7414 = nanoTime;
            c1839.f7415 = z;
        } else {
            c1839 = new C1839(runnable, nanoTime, z);
        }
        boolean z3 = c1839.f7415;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f7419;
        long addAndGet = z3 ? atomicLongFieldUpdater.addAndGet(this, 2097152L) : 0L;
        Thread currentThread = Thread.currentThread();
        C1848 c1848 = currentThread instanceof C1848 ? (C1848) currentThread : null;
        if (c1848 == null || !AbstractC2444.m5562(c1848.f7431, this)) {
            c1848 = null;
        }
        if (c1848 != null && (i = c1848.f7428) != 5 && (c1839.f7415 || i != 2)) {
            c1848.f7433 = true;
            C1849 c1849 = c1848.f7429;
            if (z2) {
                c1839 = c1849.m4783(c1839);
            } else {
                c1849.getClass();
                AbstractRunnableC1846 abstractRunnableC1846 = (AbstractRunnableC1846) C1849.f7439.getAndSet(c1849, c1839);
                c1839 = abstractRunnableC1846 == null ? null : c1849.m4783(abstractRunnableC1846);
            }
        }
        if (c1839 != null) {
            if (!(c1839.f7415 ? this.f7423.m5609(c1839) : this.f7426.m5609(c1839))) {
                throw new RejectedExecutionException(AbstractC1220.m3775(new StringBuilder(), this.f7422, " was terminated"));
            }
        }
        if (z3) {
            if (m4768() || m4769(addAndGet)) {
                return;
            }
            m4768();
            return;
        }
        if (m4768() || m4769(atomicLongFieldUpdater.get(this))) {
            return;
        }
        m4768();
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m4771(C1848 c1848, int i, int i2) {
        while (true) {
            long j = f7416.get(this);
            int i3 = (int) (2097151 & j);
            long j2 = (2097152 + j) & (-2097152);
            if (i3 == i) {
                if (i2 == 0) {
                    Object m4773 = c1848.m4773();
                    while (true) {
                        if (m4773 == f7418) {
                            i3 = -1;
                            break;
                        }
                        if (m4773 == null) {
                            i3 = 0;
                            break;
                        }
                        C1848 c18482 = (C1848) m4773;
                        int m4778 = c18482.m4778();
                        if (m4778 != 0) {
                            i3 = m4778;
                            break;
                        }
                        m4773 = c18482.m4773();
                    }
                } else {
                    i3 = i2;
                }
            }
            if (i3 >= 0) {
                if (f7416.compareAndSet(this, j, i3 | j2)) {
                    return;
                }
            }
        }
    }
}
