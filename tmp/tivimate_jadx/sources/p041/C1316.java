package p041;

import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p012.C0902;
import p013.C0907;
import p013.C0922;
import p034.InterfaceC1196;
import p035.AbstractC1220;
import p089.C1766;
import p126.InterfaceC2136;
import p153.AbstractC2481;
import p153.AbstractC2483;
import p324.C4030;
import p324.InterfaceC3996;
import p324.InterfaceC4002;
import p373.EnumC4532;
import ˉᵎ.ⁱˊ;

/* renamed from: ʽʿ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C1316 implements InterfaceC1299 {
    private volatile /* synthetic */ Object _closeCause$volatile;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f5043;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicLongFieldUpdater f5040 = AtomicLongFieldUpdater.newUpdater(C1316.class, "sendersAndCloseStatus$volatile");

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicLongFieldUpdater f5034 = AtomicLongFieldUpdater.newUpdater(C1316.class, "receivers$volatile");

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicLongFieldUpdater f5035 = AtomicLongFieldUpdater.newUpdater(C1316.class, "bufferEnd$volatile");

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicLongFieldUpdater f5041 = AtomicLongFieldUpdater.newUpdater(C1316.class, "completedExpandBuffersAndPauseFlag$volatile");

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f5037 = AtomicReferenceFieldUpdater.newUpdater(C1316.class, Object.class, "sendSegment$volatile");

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f5039 = AtomicReferenceFieldUpdater.newUpdater(C1316.class, Object.class, "receiveSegment$volatile");

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f5036 = AtomicReferenceFieldUpdater.newUpdater(C1316.class, Object.class, "bufferEndSegment$volatile");

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f5042 = AtomicReferenceFieldUpdater.newUpdater(C1316.class, Object.class, "_closeCause$volatile");

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f5038 = AtomicReferenceFieldUpdater.newUpdater(C1316.class, Object.class, "closeHandler$volatile");

    public C1316(int i) {
        this.f5043 = i;
        if (i < 0) {
            throw new IllegalArgumentException(AbstractC1220.m3773(i, "Invalid channel capacity: ", ", should be >=0").toString());
        }
        C1302 c1302 = AbstractC1310.f5026;
        this.bufferEnd$volatile = i != 0 ? i != Integer.MAX_VALUE ? i : Long.MAX_VALUE : 0L;
        this.completedExpandBuffersAndPauseFlag$volatile = f5035.get(this);
        C1302 c13022 = new C1302(0L, null, this, 3);
        this.sendSegment$volatile = c13022;
        this.receiveSegment$volatile = c13022;
        this.bufferEndSegment$volatile = m3921() ? AbstractC1310.f5026 : c13022;
        this._closeCause$volatile = AbstractC1310.f5019;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C1302 m3914(C1316 c1316, long j, C1302 c1302) {
        Object m5627;
        C1316 c13162;
        C1302 c13022 = AbstractC1310.f5026;
        C1308 c1308 = C1308.f5008;
        loop0: while (true) {
            m5627 = AbstractC2481.m5627(c1302, j, c1308);
            if (!AbstractC2481.m5623(m5627)) {
                AbstractC2483 m5619 = AbstractC2481.m5619(m5627);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f5037;
                    AbstractC2483 abstractC2483 = (AbstractC2483) atomicReferenceFieldUpdater.get(c1316);
                    if (abstractC2483.f9472 >= m5619.f9472) {
                        break loop0;
                    }
                    if (!m5619.m5632()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(c1316, abstractC2483, m5619)) {
                        if (atomicReferenceFieldUpdater.get(c1316) != abstractC2483) {
                            if (m5619.m5633()) {
                                m5619.m5589();
                            }
                        }
                    }
                    if (abstractC2483.m5633()) {
                        abstractC2483.m5589();
                    }
                }
            } else {
                break;
            }
        }
        boolean m5623 = AbstractC2481.m5623(m5627);
        AtomicLongFieldUpdater atomicLongFieldUpdater = f5034;
        if (m5623) {
            c1316.m3931();
            if (c1302.f9472 * AbstractC1310.f5025 < atomicLongFieldUpdater.get(c1316)) {
                c1302.m5590();
                return null;
            }
        } else {
            C1302 c13023 = (C1302) AbstractC2481.m5619(m5627);
            long j2 = c13023.f9472;
            if (j2 <= j) {
                return c13023;
            }
            long j3 = AbstractC1310.f5025 * j2;
            while (true) {
                long j4 = f5040.get(c1316);
                long j5 = 1152921504606846975L & j4;
                if (j5 >= j3) {
                    c13162 = c1316;
                    break;
                }
                c13162 = c1316;
                if (f5040.compareAndSet(c13162, j4, (((int) (j4 >> 60)) << 60) + j5)) {
                    break;
                }
                c1316 = c13162;
            }
            if (j2 * AbstractC1310.f5025 < atomicLongFieldUpdater.get(c13162)) {
                c13023.m5590();
            }
        }
        return null;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final void m3915(C1316 c1316, Object obj, C4030 c4030) {
        c4030.mo3549(new C0922(c1316.m3940()));
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static boolean m3916(Object obj) {
        if (obj instanceof InterfaceC4002) {
            return AbstractC1310.m3909((InterfaceC4002) obj, C0907.f3832, null);
        }
        throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public static void m3917(C1316 c1316) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f5041;
        if ((atomicLongFieldUpdater.addAndGet(c1316, 1L) & 4611686018427387904L) == 0) {
            return;
        }
        do {
        } while ((atomicLongFieldUpdater.get(c1316) & 4611686018427387904L) != 0);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final int m3918(C1316 c1316, C1302 c1302, int i, Object obj, long j, Object obj2, boolean z) {
        c1302.m3904(i, obj);
        if (z) {
            return c1316.m3929(c1302, i, obj, j, obj2, z);
        }
        Object m3906 = c1302.m3906(i);
        if (m3906 == null) {
            if (c1316.m3942(j)) {
                if (c1302.m3902(null, i, AbstractC1310.f5015)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (c1302.m3902(null, i, obj2)) {
                    return 2;
                }
            }
        } else if (m3906 instanceof InterfaceC3996) {
            c1302.m3904(i, null);
            if (c1316.m3934(m3906, obj)) {
                c1302.m3901(i, AbstractC1310.f5011);
                return 0;
            }
            C0902 c0902 = AbstractC1310.f5020;
            if (c1302.f5001.getAndSet((i * 2) + 1, c0902) == c0902) {
                return 5;
            }
            c1302.m3900(i, true);
            return 5;
        }
        return c1316.m3929(c1302, i, obj, j, obj2, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0021  */
    /* renamed from: ᴵˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m3919(p041.C1316 r13, p316.AbstractC3902 r14) {
        /*
            boolean r0 = r14 instanceof p041.C1300
            if (r0 == 0) goto L14
            r0 = r14
            ʽʿ.ˈ r0 = (p041.C1300) r0
            int r1 = r0.f4998
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f4998 = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            ʽʿ.ˈ r0 = new ʽʿ.ˈ
            r0.<init>(r13, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r6.f4997
            int r0 = r6.f4998
            r1 = 1
            if (r0 == 0) goto L33
            if (r0 != r1) goto L2b
            p121.AbstractC2026.m5044(r14)
            ʽʿ.ᵔʾ r14 = (p041.C1309) r14
            java.lang.Object r13 = r14.f5010
            return r13
        L2b:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L33:
            p121.AbstractC2026.m5044(r14)
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r14 = p041.C1316.f5039
            java.lang.Object r14 = r14.get(r13)
            ʽʿ.ˉˆ r14 = (p041.C1302) r14
        L3e:
            boolean r0 = r13.m3920()
            if (r0 == 0) goto L4e
            java.lang.Throwable r13 = r13.m3922()
            ʽʿ.ﾞʻ r14 = new ʽʿ.ﾞʻ
            r14.<init>(r13)
            return r14
        L4e:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = p041.C1316.f5034
            long r4 = r0.getAndIncrement(r13)
            int r0 = p041.AbstractC1310.f5025
            long r2 = (long) r0
            long r7 = r4 / r2
            long r2 = r4 % r2
            int r3 = (int) r2
            long r9 = r14.f9472
            int r0 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r0 == 0) goto L6b
            ʽʿ.ˉˆ r0 = r13.m3928(r7, r14)
            if (r0 != 0) goto L69
            goto L3e
        L69:
            r2 = r0
            goto L6c
        L6b:
            r2 = r14
        L6c:
            r12 = 0
            r7 = r13
            r8 = r2
            r9 = r3
            r10 = r4
            java.lang.Object r13 = r7.m3932(r8, r9, r10, r12)
            ʻᴵ.ﹳٴ r14 = p041.AbstractC1310.f5016
            if (r13 == r14) goto La0
            ʻᴵ.ﹳٴ r14 = p041.AbstractC1310.f5017
            if (r13 != r14) goto L8b
            long r13 = r7.m3930()
            int r13 = (r4 > r13 ? 1 : (r4 == r13 ? 0 : -1))
            if (r13 >= 0) goto L88
            r2.m5590()
        L88:
            r14 = r2
            r13 = r7
            goto L3e
        L8b:
            ʻᴵ.ﹳٴ r14 = p041.AbstractC1310.f5022
            if (r13 != r14) goto L9c
            r6.f4998 = r1
            r1 = r7
            java.lang.Object r13 = r1.m3923(r2, r3, r4, r6)
            ᵢˎ.ﹳٴ r14 = p373.EnumC4532.f16960
            if (r13 != r14) goto L9b
            return r14
        L9b:
            return r13
        L9c:
            r2.m5590()
            return r13
        La0:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "unexpected"
            r13.<init>(r14)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: p041.C1316.m3919(ʽʿ.ﾞᴵ, ᴵʾ.ʽ):java.lang.Object");
    }

    @Override // p041.InterfaceC1298
    public final C1297 iterator() {
        return new C1297(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:92:0x019d, code lost:
    
        r16 = r7;
        r3 = (p041.C1302) r3.m5587();
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01a6, code lost:
    
        if (r3 != null) goto L82;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p041.C1316.toString():java.lang.String");
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final boolean m3920() {
        return m3924(true, f5040.get(this));
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final boolean m3921() {
        long j = f5035.get(this);
        return j == 0 || j == Long.MAX_VALUE;
    }

    @Override // p041.InterfaceC1298
    /* renamed from: ʼˎ */
    public final Object mo3897() {
        C1302 c1302;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f5034;
        long j = atomicLongFieldUpdater.get(this);
        long j2 = f5040.get(this);
        if (m3924(true, j2)) {
            return new C1315(m3922());
        }
        long j3 = j2 & 1152921504606846975L;
        C1301 c1301 = C1309.f5009;
        if (j >= j3) {
            return c1301;
        }
        Object obj = AbstractC1310.f5020;
        C1302 c13022 = (C1302) f5039.get(this);
        while (!m3920()) {
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j4 = AbstractC1310.f5025;
            long j5 = andIncrement / j4;
            int i = (int) (andIncrement % j4);
            if (c13022.f9472 != j5) {
                C1302 m3928 = m3928(j5, c13022);
                if (m3928 == null) {
                    continue;
                } else {
                    c1302 = m3928;
                }
            } else {
                c1302 = c13022;
            }
            Object m3932 = m3932(c1302, i, andIncrement, obj);
            C1302 c13023 = c1302;
            if (m3932 == AbstractC1310.f5016) {
                InterfaceC3996 interfaceC3996 = obj instanceof InterfaceC3996 ? (InterfaceC3996) obj : null;
                if (interfaceC3996 != null) {
                    interfaceC3996.mo3896(c13023, i);
                }
                m3935(andIncrement);
                c13023.m5631();
                return c1301;
            }
            if (m3932 != AbstractC1310.f5017) {
                if (m3932 == AbstractC1310.f5022) {
                    throw new IllegalStateException("unexpected");
                }
                c13023.m5590();
                return m3932;
            }
            if (andIncrement < m3930()) {
                c13023.m5590();
            }
            c13022 = c13023;
        }
        return new C1315(m3922());
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final Throwable m3922() {
        return (Throwable) f5042.get(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* renamed from: ʽʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m3923(p041.C1302 r14, int r15, long r16, p316.AbstractC3902 r18) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p041.C1316.m3923(ʽʿ.ˉˆ, int, long, ᴵʾ.ʽ):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x00a2, code lost:
    
        r0 = (p041.C1302) ((p153.AbstractC2465) p153.AbstractC2465.f9427.get(r0));
     */
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3924(boolean r14, long r15) {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p041.C1316.m3924(boolean, long):boolean");
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object m3925(Object obj, InterfaceC2136 interfaceC2136) {
        C4030 c4030 = new C4030(1, ⁱˊ.ˈٴ(interfaceC2136));
        c4030.m8206();
        c4030.mo3549(new C0922(m3940()));
        Object m8209 = c4030.m8209();
        return m8209 == EnumC4532.f16960 ? m8209 : C0907.f3832;
    }

    /* renamed from: ʾᵎ */
    public boolean mo3892() {
        return false;
    }

    @Override // p041.InterfaceC1298
    /* renamed from: ˆʾ */
    public final Object mo3898(C1766 c1766) {
        return m3919(this, c1766);
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m3926(InterfaceC3996 interfaceC3996, boolean z) {
        if (interfaceC3996 instanceof InterfaceC4002) {
            ((InterfaceC2136) interfaceC3996).mo3549(new C0922(z ? m3938() : m3940()));
            return;
        }
        if (interfaceC3996 instanceof C1303) {
            ((C1303) interfaceC3996).f5002.mo3549(new C1309(new C1315(m3922())));
            return;
        }
        if (!(interfaceC3996 instanceof C1297)) {
            throw new IllegalStateException(("Unexpected waiter: " + interfaceC3996).toString());
        }
        C1297 c1297 = (C1297) interfaceC3996;
        C4030 c4030 = c1297.f4995;
        c1297.f4995 = null;
        c1297.f4994 = AbstractC1310.f5028;
        Throwable m3922 = c1297.f4993.m3922();
        if (m3922 == null) {
            c4030.mo3549(Boolean.FALSE);
        } else {
            c4030.mo3549(new C0922(m3922));
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m3927(long j) {
        C1302 c1302 = (C1302) f5039.get(this);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f5034;
            long j2 = atomicLongFieldUpdater.get(this);
            if (j < Math.max(this.f5043 + j2, f5035.get(this))) {
                return;
            }
            if (atomicLongFieldUpdater.compareAndSet(this, j2, 1 + j2)) {
                long j3 = AbstractC1310.f5025;
                long j4 = j2 / j3;
                int i = (int) (j2 % j3);
                if (c1302.f9472 != j4) {
                    C1302 m3928 = m3928(j4, c1302);
                    if (m3928 != null) {
                        c1302 = m3928;
                    }
                }
                C1302 c13022 = c1302;
                if (m3932(c13022, i, j2, null) != AbstractC1310.f5017) {
                    c13022.m5590();
                } else if (j2 < m3930()) {
                    c13022.m5590();
                }
                c1302 = c13022;
            }
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final C1302 m3928(long j, C1302 c1302) {
        Object m5627;
        long j2;
        C1302 c13022 = AbstractC1310.f5026;
        C1308 c1308 = C1308.f5008;
        loop0: while (true) {
            m5627 = AbstractC2481.m5627(c1302, j, c1308);
            if (!AbstractC2481.m5623(m5627)) {
                AbstractC2483 m5619 = AbstractC2481.m5619(m5627);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f5039;
                    AbstractC2483 abstractC2483 = (AbstractC2483) atomicReferenceFieldUpdater.get(this);
                    if (abstractC2483.f9472 >= m5619.f9472) {
                        break loop0;
                    }
                    if (!m5619.m5632()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, abstractC2483, m5619)) {
                        if (atomicReferenceFieldUpdater.get(this) != abstractC2483) {
                            if (m5619.m5633()) {
                                m5619.m5589();
                            }
                        }
                    }
                    if (abstractC2483.m5633()) {
                        abstractC2483.m5589();
                    }
                }
            } else {
                break;
            }
        }
        if (AbstractC2481.m5623(m5627)) {
            m3931();
            if (c1302.f9472 * AbstractC1310.f5025 < m3930()) {
                c1302.m5590();
                return null;
            }
        } else {
            C1302 c13023 = (C1302) AbstractC2481.m5619(m5627);
            long j3 = c13023.f9472;
            if (!m3921() && j <= f5035.get(this) / AbstractC1310.f5025) {
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f5036;
                    AbstractC2483 abstractC24832 = (AbstractC2483) atomicReferenceFieldUpdater2.get(this);
                    if (abstractC24832.f9472 >= j3) {
                        break;
                    }
                    if (!c13023.m5632()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater2.compareAndSet(this, abstractC24832, c13023)) {
                        if (atomicReferenceFieldUpdater2.get(this) != abstractC24832) {
                            if (c13023.m5633()) {
                                c13023.m5589();
                            }
                        }
                    }
                    if (abstractC24832.m5633()) {
                        abstractC24832.m5589();
                    }
                }
            }
            if (j3 <= j) {
                return c13023;
            }
            long j4 = j3 * AbstractC1310.f5025;
            do {
                j2 = f5034.get(this);
                if (j2 >= j4) {
                    break;
                }
            } while (!f5034.compareAndSet(this, j2, j4));
            if (j3 * AbstractC1310.f5025 < m3930()) {
                c13023.m5590();
            }
        }
        return null;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int m3929(C1302 c1302, int i, Object obj, long j, Object obj2, boolean z) {
        while (true) {
            Object m3906 = c1302.m3906(i);
            if (m3906 == null) {
                if (!m3942(j) || z) {
                    if (z) {
                        if (c1302.m3902(null, i, AbstractC1310.f5014)) {
                            c1302.m5631();
                            return 4;
                        }
                    } else {
                        if (obj2 == null) {
                            return 3;
                        }
                        if (c1302.m3902(null, i, obj2)) {
                            return 2;
                        }
                    }
                } else if (c1302.m3902(null, i, AbstractC1310.f5015)) {
                    break;
                }
            } else {
                if (m3906 != AbstractC1310.f5018) {
                    C0902 c0902 = AbstractC1310.f5020;
                    if (m3906 == c0902) {
                        c1302.m3904(i, null);
                        return 5;
                    }
                    if (m3906 == AbstractC1310.f5023) {
                        c1302.m3904(i, null);
                        return 5;
                    }
                    if (m3906 == AbstractC1310.f5028) {
                        c1302.m3904(i, null);
                        m3931();
                        return 4;
                    }
                    c1302.m3904(i, null);
                    if (m3906 instanceof C1306) {
                        m3906 = ((C1306) m3906).f5006;
                    }
                    if (m3934(m3906, obj)) {
                        c1302.m3901(i, AbstractC1310.f5011);
                        return 0;
                    }
                    if (c1302.f5001.getAndSet((i * 2) + 1, c0902) != c0902) {
                        c1302.m3900(i, true);
                    }
                    return 5;
                }
                if (c1302.m3902(m3906, i, AbstractC1310.f5015)) {
                    break;
                }
            }
        }
        return 1;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final long m3930() {
        return f5040.get(this) & 1152921504606846975L;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final boolean m3931() {
        return m3924(false, f5040.get(this));
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final Object m3932(C1302 c1302, int i, long j, Object obj) {
        Object m3906 = c1302.m3906(i);
        AtomicReferenceArray atomicReferenceArray = c1302.f5001;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f5040;
        if (m3906 == null) {
            if (j >= (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return AbstractC1310.f5022;
                }
                if (c1302.m3902(m3906, i, obj)) {
                    m3936();
                    return AbstractC1310.f5016;
                }
            }
        } else if (m3906 == AbstractC1310.f5015 && c1302.m3902(m3906, i, AbstractC1310.f5011)) {
            m3936();
            Object obj2 = atomicReferenceArray.get(i * 2);
            c1302.m3904(i, null);
            return obj2;
        }
        while (true) {
            Object m39062 = c1302.m3906(i);
            if (m39062 == null || m39062 == AbstractC1310.f5018) {
                if (j < (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                    if (c1302.m3902(m39062, i, AbstractC1310.f5023)) {
                        m3936();
                        return AbstractC1310.f5017;
                    }
                } else {
                    if (obj == null) {
                        return AbstractC1310.f5022;
                    }
                    if (c1302.m3902(m39062, i, obj)) {
                        m3936();
                        return AbstractC1310.f5016;
                    }
                }
            } else {
                if (m39062 != AbstractC1310.f5015) {
                    C0902 c0902 = AbstractC1310.f5014;
                    if (m39062 != c0902 && m39062 != AbstractC1310.f5023) {
                        if (m39062 == AbstractC1310.f5028) {
                            m3936();
                            return AbstractC1310.f5017;
                        }
                        if (m39062 != AbstractC1310.f5021 && c1302.m3902(m39062, i, AbstractC1310.f5029)) {
                            boolean z = m39062 instanceof C1306;
                            if (z) {
                                m39062 = ((C1306) m39062).f5006;
                            }
                            if (m3916(m39062)) {
                                c1302.m3901(i, AbstractC1310.f5011);
                                m3936();
                                Object obj3 = atomicReferenceArray.get(i * 2);
                                c1302.m3904(i, null);
                                return obj3;
                            }
                            c1302.m3901(i, c0902);
                            c1302.m5631();
                            if (z) {
                                m3936();
                            }
                            return AbstractC1310.f5017;
                        }
                    }
                    return AbstractC1310.f5017;
                }
                if (c1302.m3902(m39062, i, AbstractC1310.f5011)) {
                    m3936();
                    Object obj4 = atomicReferenceArray.get(i * 2);
                    c1302.m3904(i, null);
                    return obj4;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002d, code lost:
    
        if (r6.compareAndSet(r12, r5, r13) == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
    
        if (r6.get(r12) == r5) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003a, code lost:
    
        if (r14 == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003c, code lost:
    
        r5 = r3.get(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0049, code lost:
    
        if (r3.compareAndSet(r4, r5, (3 << 60) + (r5 & 1152921504606846975L)) == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0069, code lost:
    
        m3931();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006c, code lost:
    
        if (r10 == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006e, code lost:
    
        r13 = p041.C1316.f5038;
        r14 = r13.get(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
    
        if (r14 != null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0076, code lost:
    
        r0 = p041.AbstractC1310.f5024;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007f, code lost:
    
        if (r13.compareAndSet(r12, r14, r0) == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0095, code lost:
    
        if (r13.get(r12) == r14) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x000a, code lost:
    
        if (r14 != false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0081, code lost:
    
        if (r14 != null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0084, code lost:
    
        p152.AbstractC2451.m5576(1, r14);
        ((p329.InterfaceC4106) r14).mo3844(m3922());
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0090, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0079, code lost:
    
        r0 = p041.AbstractC1310.f5027;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0098, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000c, code lost:
    
        r5 = r3.get(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x004c, code lost:
    
        r5 = r3.get(r12);
        r13 = (int) (r5 >> 60);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0053, code lost:
    
        if (r13 == 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0055, code lost:
    
        if (r13 == 1) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0058, code lost:
    
        r13 = r5 & 1152921504606846975L;
        r7 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0067, code lost:
    
        if (r3.compareAndSet(r4, r5, (r7 << 60) + r13) == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0013, code lost:
    
        if (((int) (r5 >> 60)) != 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x005e, code lost:
    
        r13 = r5 & 1152921504606846975L;
        r7 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x002f, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0024, code lost:
    
        r4 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
    
        r4 = p041.AbstractC1310.f5026;
        r4 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
    
        if (r3.compareAndSet(r4, r5, (r5 & 1152921504606846975L) + (1 << 60)) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0025, code lost:
    
        r5 = p041.AbstractC1310.f5019;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
    
        r6 = p041.C1316.f5042;
     */
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3933(java.lang.Throwable r13, boolean r14) {
        /*
            r12 = this;
            r0 = 60
            r1 = 1152921504606846975(0xfffffffffffffff, double:1.2882297539194265E-231)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r3 = p041.C1316.f5040
            r9 = 1
            if (r14 == 0) goto L24
        Lc:
            long r5 = r3.get(r12)
            long r7 = r5 >> r0
            int r4 = (int) r7
            if (r4 != 0) goto L24
            long r7 = r5 & r1
            ʽʿ.ˉˆ r4 = p041.AbstractC1310.f5026
            long r10 = (long) r9
            long r10 = r10 << r0
            long r7 = r7 + r10
            r4 = r12
            boolean r5 = r3.compareAndSet(r4, r5, r7)
            if (r5 == 0) goto Lc
            goto L25
        L24:
            r4 = r12
        L25:
            ʻᴵ.ﹳٴ r5 = p041.AbstractC1310.f5019
        L27:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r6 = p041.C1316.f5042
            boolean r7 = r6.compareAndSet(r12, r5, r13)
            if (r7 == 0) goto L31
            r10 = r9
            goto L39
        L31:
            java.lang.Object r6 = r6.get(r12)
            if (r6 == r5) goto L27
            r13 = 0
            r10 = r13
        L39:
            r11 = 3
            if (r14 == 0) goto L4c
        L3c:
            long r5 = r3.get(r12)
            long r13 = r5 & r1
            long r7 = (long) r11
            long r7 = r7 << r0
            long r7 = r7 + r13
            boolean r13 = r3.compareAndSet(r4, r5, r7)
            if (r13 == 0) goto L3c
            goto L69
        L4c:
            long r5 = r3.get(r12)
            long r13 = r5 >> r0
            int r13 = (int) r13
            if (r13 == 0) goto L5e
            if (r13 == r9) goto L58
            goto L69
        L58:
            long r13 = r5 & r1
            long r7 = (long) r11
        L5b:
            long r7 = r7 << r0
            long r7 = r7 + r13
            goto L63
        L5e:
            long r13 = r5 & r1
            r7 = 2
            long r7 = (long) r7
            goto L5b
        L63:
            boolean r13 = r3.compareAndSet(r4, r5, r7)
            if (r13 == 0) goto L4c
        L69:
            r12.m3931()
            if (r10 == 0) goto L98
        L6e:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r13 = p041.C1316.f5038
            java.lang.Object r14 = r13.get(r12)
            if (r14 != 0) goto L79
            ʻᴵ.ﹳٴ r0 = p041.AbstractC1310.f5024
            goto L7b
        L79:
            ʻᴵ.ﹳٴ r0 = p041.AbstractC1310.f5027
        L7b:
            boolean r1 = r13.compareAndSet(r12, r14, r0)
            if (r1 == 0) goto L91
            if (r14 != 0) goto L84
            goto L98
        L84:
            p152.AbstractC2451.m5576(r9, r14)
            ᴵⁱ.ﾞʻ r14 = (p329.InterfaceC4106) r14
            java.lang.Throwable r13 = r12.m3922()
            r14.mo3844(r13)
            return r10
        L91:
            java.lang.Object r1 = r13.get(r12)
            if (r1 == r14) goto L7b
            goto L6e
        L98:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: p041.C1316.m3933(java.lang.Throwable, boolean):boolean");
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final boolean m3934(Object obj, Object obj2) {
        if (obj instanceof C1303) {
            return AbstractC1310.m3909(((C1303) obj).f5002, new C1309(obj2), null);
        }
        if (obj instanceof C1297) {
            C1297 c1297 = (C1297) obj;
            C4030 c4030 = c1297.f4995;
            c1297.f4995 = null;
            c1297.f4994 = obj2;
            return AbstractC1310.m3909(c4030, Boolean.TRUE, null);
        }
        if (obj instanceof InterfaceC4002) {
            return AbstractC1310.m3909((InterfaceC4002) obj, obj2, null);
        }
        throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m3935(long j) {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        C1316 c1316 = this;
        if (c1316.m3921()) {
            return;
        }
        while (true) {
            atomicLongFieldUpdater = f5035;
            if (atomicLongFieldUpdater.get(c1316) > j) {
                break;
            } else {
                c1316 = this;
            }
        }
        int i = AbstractC1310.f5013;
        int i2 = 0;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater2 = f5041;
            if (i2 < i) {
                long j2 = atomicLongFieldUpdater.get(c1316);
                if (j2 == (4611686018427387903L & atomicLongFieldUpdater2.get(c1316)) && j2 == atomicLongFieldUpdater.get(c1316)) {
                    return;
                } else {
                    i2++;
                }
            } else {
                while (true) {
                    long j3 = atomicLongFieldUpdater2.get(c1316);
                    if (atomicLongFieldUpdater2.compareAndSet(c1316, j3, (j3 & 4611686018427387903L) + 4611686018427387904L)) {
                        break;
                    } else {
                        c1316 = this;
                    }
                }
                while (true) {
                    long j4 = atomicLongFieldUpdater.get(c1316);
                    long j5 = atomicLongFieldUpdater2.get(c1316);
                    long j6 = j5 & 4611686018427387903L;
                    boolean z = (j5 & 4611686018427387904L) != 0;
                    if (j4 == j6 && j4 == atomicLongFieldUpdater.get(c1316)) {
                        break;
                    }
                    if (z) {
                        c1316 = this;
                    } else {
                        c1316 = this;
                        atomicLongFieldUpdater2.compareAndSet(c1316, j5, 4611686018427387904L + j6);
                    }
                }
                while (true) {
                    long j7 = atomicLongFieldUpdater2.get(c1316);
                    if (atomicLongFieldUpdater2.compareAndSet(c1316, j7, j7 & 4611686018427387903L)) {
                        return;
                    } else {
                        c1316 = this;
                    }
                }
            }
        }
    }

    @Override // p041.InterfaceC1298
    /* renamed from: ᵎﹶ */
    public final void mo3899(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new CancellationException("Channel was cancelled");
        }
        m3933(cancellationException, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:0x00bf, code lost:
    
        if ((r0.addAndGet(r15, (r11 * r13) - r8) & 4611686018427387904L) != 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x00c8, code lost:
    
        if ((r0.get(r15) & 4611686018427387904L) == 0) goto L144;
     */
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3936() {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p041.C1316.m3936():void");
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean m3937(Throwable th) {
        return m3933(th, false);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final Throwable m3938() {
        Throwable m3922 = m3922();
        return m3922 == null ? new NoSuchElementException("Channel was closed") : m3922;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0011, code lost:
    
        continue;
     */
    /* renamed from: ᵢˏ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3939(long r5, p041.C1302 r7) {
        /*
            r4 = this;
        L0:
            long r0 = r7.f9472
            int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r0 >= 0) goto L11
            ˊʽ.ʽ r0 = r7.m5587()
            ʽʿ.ˉˆ r0 = (p041.C1302) r0
            if (r0 != 0) goto Lf
            goto L11
        Lf:
            r7 = r0
            goto L0
        L11:
            boolean r5 = r7.mo5588()
            if (r5 == 0) goto L22
            ˊʽ.ʽ r5 = r7.m5587()
            ʽʿ.ˉˆ r5 = (p041.C1302) r5
            if (r5 != 0) goto L20
            goto L22
        L20:
            r7 = r5
            goto L11
        L22:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = p041.C1316.f5036
            java.lang.Object r6 = r5.get(r4)
            ˊʽ.ﹳᐧ r6 = (p153.AbstractC2483) r6
            long r0 = r6.f9472
            long r2 = r7.f9472
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L33
            goto L49
        L33:
            boolean r0 = r7.m5632()
            if (r0 != 0) goto L3a
            goto L11
        L3a:
            boolean r0 = r5.compareAndSet(r4, r6, r7)
            if (r0 == 0) goto L4a
            boolean r5 = r6.m5633()
            if (r5 == 0) goto L49
            r6.m5589()
        L49:
            return
        L4a:
            java.lang.Object r0 = r5.get(r4)
            if (r0 == r6) goto L3a
            boolean r5 = r7.m5633()
            if (r5 == 0) goto L22
            r7.m5589()
            goto L22
        */
        throw new UnsupportedOperationException("Method not decompiled: p041.C1316.m3939(long, ʽʿ.ˉˆ):void");
    }

    @Override // p041.InterfaceC1294
    /* renamed from: ⁱˊ */
    public Object mo3890(Object obj) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f5040;
        boolean z = false;
        long j = 1152921504606846975L;
        boolean z2 = m3924(false, atomicLongFieldUpdater.get(this)) ? false : !m3942(r1 & 1152921504606846975L);
        C1301 c1301 = C1309.f5009;
        if (z2) {
            return c1301;
        }
        InterfaceC1196 interfaceC1196 = AbstractC1310.f5014;
        C1302 c1302 = (C1302) f5037.get(this);
        while (true) {
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j2 = andIncrement & j;
            boolean m3924 = m3924(z, andIncrement);
            int i = AbstractC1310.f5025;
            long j3 = i;
            long j4 = j2 / j3;
            int i2 = (int) (j2 % j3);
            if (c1302.f9472 != j4) {
                C1302 m3914 = m3914(this, j4, c1302);
                if (m3914 != null) {
                    c1302 = m3914;
                } else {
                    if (m3924) {
                        return new C1315(m3940());
                    }
                    z = false;
                    j = 1152921504606846975L;
                }
            }
            int m3918 = m3918(this, c1302, i2, obj, j2, interfaceC1196, m3924);
            C0907 c0907 = C0907.f3832;
            if (m3918 == 0) {
                c1302.m5590();
                return c0907;
            }
            if (m3918 == 1) {
                return c0907;
            }
            if (m3918 == 2) {
                if (m3924) {
                    c1302.m5631();
                    return new C1315(m3940());
                }
                InterfaceC3996 interfaceC3996 = interfaceC1196 instanceof InterfaceC3996 ? (InterfaceC3996) interfaceC1196 : null;
                if (interfaceC3996 != null) {
                    interfaceC3996.mo3896(c1302, i2 + i);
                }
                c1302.m5631();
                return c1301;
            }
            if (m3918 == 3) {
                throw new IllegalStateException("unexpected");
            }
            if (m3918 == 4) {
                if (j2 < f5034.get(this)) {
                    c1302.m5590();
                }
                return new C1315(m3940());
            }
            if (m3918 == 5) {
                c1302.m5590();
            }
            z = false;
            j = 1152921504606846975L;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0177, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x00c2, code lost:
    
        m3915(r1, r4, r7);
     */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0163 A[RETURN] */
    @Override // p041.InterfaceC1294
    /* renamed from: ﹳٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo3891(java.lang.Object r23, p126.InterfaceC2136 r24) {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p041.C1316.mo3891(java.lang.Object, ˈי.ˈ):java.lang.Object");
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final Throwable m3940() {
        Throwable m3922 = m3922();
        return m3922 == null ? new IllegalStateException("Channel was closed") : m3922;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x008d, code lost:
    
        r1 = (p041.C1302) ((p153.AbstractC2465) p153.AbstractC2465.f9427.get(r1));
     */
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p041.C1302 m3941(long r13) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p041.C1316.m3941(long):ʽʿ.ˉˆ");
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean m3942(long j) {
        return j < f5035.get(this) || j < f5034.get(this) + ((long) this.f5043);
    }
}
