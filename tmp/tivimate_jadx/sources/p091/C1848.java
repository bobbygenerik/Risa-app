package p091;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p152.C2448;

/* renamed from: ʿⁱ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1848 extends Thread {

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f7427 = AtomicIntegerFieldUpdater.newUpdater(C1848.class, "workerCtl$volatile");
    private volatile int indexInArray;
    private volatile Object nextParkedWorker;
    private volatile /* synthetic */ int workerCtl$volatile;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f7428;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C1849 f7429;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public long f7430;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final /* synthetic */ ExecutorC1847 f7431;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f7432;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public boolean f7433;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2448 f7434;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public long f7435;

    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object, ˊʼ.ˏי] */
    public C1848(ExecutorC1847 executorC1847, int i) {
        this.f7431 = executorC1847;
        setDaemon(true);
        setContextClassLoader(ExecutorC1847.class.getClassLoader());
        this.f7429 = new C1849();
        this.f7434 = new Object();
        this.f7428 = 4;
        this.nextParkedWorker = ExecutorC1847.f7418;
        int nanoTime = (int) System.nanoTime();
        this.f7432 = nanoTime == 0 ? 42 : nanoTime;
        m4780(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x0004, code lost:
    
        continue;
     */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p091.C1848.run():void");
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final AbstractRunnableC1846 m4772(int i) {
        long j;
        AbstractRunnableC1846 abstractRunnableC1846;
        long j2;
        long j3;
        AbstractRunnableC1846 abstractRunnableC18462;
        AtomicLongFieldUpdater atomicLongFieldUpdater = ExecutorC1847.f7419;
        ExecutorC1847 executorC1847 = this.f7431;
        int i2 = (int) (atomicLongFieldUpdater.get(executorC1847) & 2097151);
        AbstractRunnableC1846 abstractRunnableC18463 = null;
        if (i2 < 2) {
            return null;
        }
        int m4774 = m4774(i2);
        int i3 = 0;
        long j4 = Long.MAX_VALUE;
        while (i3 < i2) {
            m4774++;
            if (m4774 > i2) {
                m4774 = 1;
            }
            C1848 c1848 = (C1848) executorC1847.f7424.m5585(m4774);
            if (c1848 != null && c1848 != this) {
                C1849 c1849 = c1848.f7429;
                if (i == 3) {
                    abstractRunnableC1846 = c1849.m4782();
                    j = 0;
                } else {
                    c1849.getClass();
                    int i4 = C1849.f7437.get(c1849);
                    int i5 = C1849.f7436.get(c1849);
                    boolean z = i == 1;
                    while (true) {
                        if (i4 == i5) {
                            j = 0;
                            break;
                        }
                        j = 0;
                        if (!z || C1849.f7438.get(c1849) != 0) {
                            int i6 = i4 + 1;
                            abstractRunnableC1846 = c1849.m4781(i4, z);
                            if (abstractRunnableC1846 != null) {
                                break;
                            }
                            i4 = i6;
                        } else {
                            break;
                        }
                    }
                    abstractRunnableC1846 = abstractRunnableC18463;
                }
                C2448 c2448 = this.f7434;
                if (abstractRunnableC1846 != null) {
                    c2448.f9409 = abstractRunnableC1846;
                    abstractRunnableC18462 = abstractRunnableC18463;
                    j3 = -1;
                    j2 = -1;
                } else {
                    while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C1849.f7439;
                        AbstractRunnableC1846 abstractRunnableC18464 = (AbstractRunnableC1846) atomicReferenceFieldUpdater.get(c1849);
                        if (abstractRunnableC18464 == null) {
                            j2 = -1;
                            break;
                        }
                        j2 = -1;
                        if (((abstractRunnableC18464.f7415 ? 1 : 2) & i) == 0) {
                            break;
                        }
                        AbstractC1841.f7410.getClass();
                        C1849 c18492 = c1849;
                        long nanoTime = System.nanoTime() - abstractRunnableC18464.f7414;
                        long j5 = AbstractC1841.f7408;
                        if (nanoTime < j5) {
                            j3 = j5 - nanoTime;
                            abstractRunnableC18462 = null;
                            break;
                        }
                        do {
                            abstractRunnableC18462 = null;
                            if (atomicReferenceFieldUpdater.compareAndSet(c18492, abstractRunnableC18464, null)) {
                                c2448.f9409 = abstractRunnableC18464;
                                j3 = -1;
                                break;
                            }
                        } while (atomicReferenceFieldUpdater.get(c18492) == abstractRunnableC18464);
                        c1849 = c18492;
                        abstractRunnableC18463 = null;
                    }
                    j3 = -2;
                    abstractRunnableC18462 = abstractRunnableC18463;
                }
                if (j3 == j2) {
                    AbstractRunnableC1846 abstractRunnableC18465 = (AbstractRunnableC1846) c2448.f9409;
                    c2448.f9409 = abstractRunnableC18462;
                    return abstractRunnableC18465;
                }
                if (j3 > j) {
                    j4 = Math.min(j4, j3);
                }
            }
            i3++;
            abstractRunnableC18463 = null;
        }
        if (j4 == Long.MAX_VALUE) {
            j4 = 0;
        }
        this.f7435 = j4;
        return null;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object m4773() {
        return this.nextParkedWorker;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int m4774(int i) {
        int i2 = this.f7432;
        int i3 = i2 ^ (i2 << 13);
        int i4 = i3 ^ (i3 >> 17);
        int i5 = i4 ^ (i4 << 5);
        this.f7432 = i5;
        int i6 = i - 1;
        return (i6 & i) == 0 ? i5 & i6 : (i5 & Integer.MAX_VALUE) % i;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AbstractRunnableC1846 m4775() {
        int m4774 = m4774(2);
        ExecutorC1847 executorC1847 = this.f7431;
        if (m4774 == 0) {
            AbstractRunnableC1846 abstractRunnableC1846 = (AbstractRunnableC1846) executorC1847.f7426.m5607();
            return abstractRunnableC1846 != null ? abstractRunnableC1846 : (AbstractRunnableC1846) executorC1847.f7423.m5607();
        }
        AbstractRunnableC1846 abstractRunnableC18462 = (AbstractRunnableC1846) executorC1847.f7423.m5607();
        return abstractRunnableC18462 != null ? abstractRunnableC18462 : (AbstractRunnableC1846) executorC1847.f7426.m5607();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m4776(Object obj) {
        this.nextParkedWorker = obj;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean m4777(int i) {
        int i2 = this.f7428;
        boolean z = i2 == 1;
        if (z) {
            ExecutorC1847.f7419.addAndGet(this.f7431, 4398046511104L);
        }
        if (i2 != i) {
            this.f7428 = i;
        }
        return z;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m4778() {
        return this.indexInArray;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractRunnableC1846 m4779(boolean z) {
        AbstractRunnableC1846 m4775;
        AbstractRunnableC1846 m47752;
        long j;
        int i = this.f7428;
        ExecutorC1847 executorC1847 = this.f7431;
        AbstractRunnableC1846 abstractRunnableC1846 = null;
        C1849 c1849 = this.f7429;
        if (i != 1) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = ExecutorC1847.f7419;
            do {
                j = atomicLongFieldUpdater.get(executorC1847);
                if (((int) ((9223367638808264704L & j) >> 42)) == 0) {
                    c1849.getClass();
                    loop1: while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C1849.f7439;
                        AbstractRunnableC1846 abstractRunnableC18462 = (AbstractRunnableC1846) atomicReferenceFieldUpdater.get(c1849);
                        if (abstractRunnableC18462 == null || !abstractRunnableC18462.f7415) {
                            break;
                        }
                        while (!atomicReferenceFieldUpdater.compareAndSet(c1849, abstractRunnableC18462, null)) {
                            if (atomicReferenceFieldUpdater.get(c1849) != abstractRunnableC18462) {
                                break;
                            }
                        }
                        abstractRunnableC1846 = abstractRunnableC18462;
                    }
                    int i2 = C1849.f7437.get(c1849);
                    int i3 = C1849.f7436.get(c1849);
                    while (true) {
                        if (i2 == i3 || C1849.f7438.get(c1849) == 0) {
                            break;
                        }
                        i3--;
                        AbstractRunnableC1846 m4781 = c1849.m4781(i3, true);
                        if (m4781 != null) {
                            abstractRunnableC1846 = m4781;
                            break;
                        }
                    }
                    if (abstractRunnableC1846 != null) {
                        return abstractRunnableC1846;
                    }
                    AbstractRunnableC1846 abstractRunnableC18463 = (AbstractRunnableC1846) executorC1847.f7423.m5607();
                    return abstractRunnableC18463 == null ? m4772(1) : abstractRunnableC18463;
                }
            } while (!ExecutorC1847.f7419.compareAndSet(executorC1847, j, j - 4398046511104L));
            this.f7428 = 1;
        }
        if (z) {
            boolean z2 = m4774(executorC1847.f7421 * 2) == 0;
            if (z2 && (m47752 = m4775()) != null) {
                return m47752;
            }
            c1849.getClass();
            AbstractRunnableC1846 abstractRunnableC18464 = (AbstractRunnableC1846) C1849.f7439.getAndSet(c1849, null);
            if (abstractRunnableC18464 == null) {
                abstractRunnableC18464 = c1849.m4782();
            }
            if (abstractRunnableC18464 != null) {
                return abstractRunnableC18464;
            }
            if (!z2 && (m4775 = m4775()) != null) {
                return m4775;
            }
        } else {
            AbstractRunnableC1846 m47753 = m4775();
            if (m47753 != null) {
                return m47753;
            }
        }
        return m4772(3);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m4780(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f7431.f7422);
        sb.append("-worker-");
        sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
        setName(sb.toString());
        this.indexInArray = i;
    }
}
