package p324;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.NoWhenBranchMatchedException;
import kotlinx.coroutines.DispatchException;
import kotlinx.coroutines.TimeoutCancellationException;
import p012.C0902;
import p013.AbstractC0915;
import p013.C0907;
import p013.C0922;
import p023.C1059;
import p091.C1842;
import p091.ExecutorC1840;
import p126.C2134;
import p126.C2137;
import p126.InterfaceC2136;
import p126.InterfaceC2138;
import p126.InterfaceC2139;
import p126.InterfaceC2142;
import p152.AbstractC2444;
import p153.AbstractC2481;
import p153.C2469;
import p153.C2480;
import p153.C2485;
import p299.C3696;
import p303.C3709;
import p303.EnumC3707;
import p316.AbstractC3902;
import p316.InterfaceC3903;
import p329.InterfaceC4087;
import p373.EnumC4532;
import ʼˋ.ᵔʾ;
import ʼⁱ.ˎᐧ;
import ʼⁱ.ᴵˊ;
import ʽٴ.ˈ;
import ˈˊ.ˉˆ;
import ˉᵎ.ⁱˊ;
import ﹳˋ.ʽʽ;
import ﹳٴ.ﹳٴ;

/* renamed from: ᴵי.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3999 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C0902 f15369;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C0902 f15371;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C0902 f15372;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C0902 f15373;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final C0902 f15374;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C0902 f15375;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C0902 f15376;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C0902 f15377;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final C4027 f15368 = new C4027(false);

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final C4027 f15370 = new C4027(true);

    static {
        int i = 5;
        f15376 = new C0902(i, "RESUME_TOKEN");
        f15375 = new C0902(i, "REMOVED_TASK");
        f15369 = new C0902(i, "CLOSED_EMPTY");
        f15371 = new C0902(i, "COMPLETING_ALREADY");
        f15372 = new C0902(i, "COMPLETING_WAITING_CHILDREN");
        f15377 = new C0902(i, "COMPLETING_RETRY");
        f15373 = new C0902(i, "TOO_LATE_TO_CANCEL");
        f15374 = new C0902(i, "SEALED");
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static final Object m8157(Object obj) {
        InterfaceC4024 interfaceC4024;
        C4050 c4050 = obj instanceof C4050 ? (C4050) obj : null;
        return (c4050 == null || (interfaceC4024 = c4050.f15439) == null) ? obj : interfaceC4024;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public static final Object m8158(long j, ᵔʾ r14, C1059 c1059) {
        long j2;
        int i = C3709.f14467;
        boolean z = j > 0;
        if (z) {
            long j3 = ﹳٴ.ˈⁱ(999999L, EnumC3707.NANOSECONDS);
            if (C3709.m7744(j)) {
                if (C3709.m7744(j3) && (j3 ^ j) < 0) {
                    throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
                }
            } else if (C3709.m7744(j3)) {
                j = j3;
            } else {
                int i2 = ((int) j) & 1;
                if (i2 == (((int) j3) & 1)) {
                    long j4 = (j >> 1) + (j3 >> 1);
                    j = i2 == 0 ? (-4611686018426999999L > j4 || j4 >= 4611686018427000000L) ? ﹳٴ.ʼᐧ(j4 / 1000000) : ﹳٴ.ᵔﹳ(j4) : (-4611686018426L > j4 || j4 >= 4611686018427L) ? ﹳٴ.ʼᐧ(ˉˆ.ˆʾ(j4, -4611686018427387903L, 4611686018427387903L)) : ﹳٴ.ᵔﹳ(j4 * 1000000);
                } else {
                    j = i2 == 1 ? C3709.m7747(j >> 1, j3 >> 1) : C3709.m7747(j3 >> 1, j >> 1);
                }
            }
            j2 = ((((int) j) & 1) != 1 || C3709.m7744(j)) ? C3709.m7745(j, EnumC3707.MILLISECONDS) : j >> 1;
        } else {
            if (z) {
                throw new NoWhenBranchMatchedException();
            }
            j2 = 0;
        }
        if (j2 > 0) {
            return m8169(new RunnableC3987(j2, c1059), r14);
        }
        throw new TimeoutCancellationException("Timed out immediately", null);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final AbstractC4017 m8159(Executor executor) {
        return new C4014(executor);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static final InterfaceC2139 m8160(InterfaceC4023 interfaceC4023, InterfaceC2139 interfaceC2139) {
        InterfaceC2139 m8176 = m8176(interfaceC4023.mo678(), interfaceC2139, true);
        C1842 c1842 = AbstractC4028.f15408;
        return (m8176 == c1842 || m8176.mo3419(C2137.f8327) != null) ? m8176 : m8176.mo3421(c1842);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C4011 m8161() {
        return new C4011(null);
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static final String m8162(InterfaceC2136 interfaceC2136) {
        Object c0922;
        if (interfaceC2136 instanceof C2485) {
            return ((C2485) interfaceC2136).toString();
        }
        try {
            c0922 = interfaceC2136 + '@' + m8173(interfaceC2136);
        } catch (Throwable th) {
            c0922 = new C0922(th);
        }
        if (AbstractC0915.m3188(c0922) != null) {
            c0922 = interfaceC2136.getClass().getName() + '@' + m8173(interfaceC2136);
        }
        return (String) c0922;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x008a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0089 A[RETURN] */
    /* JADX WARN: Type inference failed for: r4v1, types: [ˈי.ᵔᵢ, ˈי.ﹳٴ, ᴵי.ᐧﹶ] */
    /* renamed from: ʾˋ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m8163(p316.AbstractC3902 r8) {
        /*
            ˈי.ᵔᵢ r0 = r8.mo3551()
            m8174(r0)
            ˈי.ˈ r8 = ˉᵎ.ⁱˊ.ˈٴ(r8)
            boolean r1 = r8 instanceof p153.C2485
            if (r1 == 0) goto L12
            ˊʽ.ﾞᴵ r8 = (p153.C2485) r8
            goto L13
        L12:
            r8 = 0
        L13:
            ᵢˎ.ﹳٴ r1 = p373.EnumC4532.f16960
            ʻᵢ.ʼᐧ r2 = p013.C0907.f3832
            if (r8 != 0) goto L1c
        L19:
            r8 = r2
            goto L87
        L1c:
            ᴵי.ˏי r3 = r8.f9475
            boolean r4 = p153.AbstractC2481.m5620(r3, r0)
            r5 = 1
            if (r4 == 0) goto L2d
            r8.f9476 = r2
            r8.f15424 = r5
            r3.mo4763(r0, r8)
            goto L6b
        L2d:
            ᴵי.ᐧﹶ r4 = new ᴵי.ᐧﹶ
            ᴵי.ʽﹳ r6 = p324.C4032.f15417
            r4.<init>(r6)
            ˈי.ᵔᵢ r0 = r0.mo3421(r4)
            r8.f9476 = r2
            r8.f15424 = r5
            r3.mo4763(r0, r8)
            boolean r0 = r4.f15418
            if (r0 == 0) goto L6b
            ᴵי.ˑٴ r0 = p324.AbstractC4053.m8269()
            ﹶˈ.ᵔᵢ r3 = r0.f15399
            if (r3 == 0) goto L50
            boolean r3 = r3.isEmpty()
            goto L51
        L50:
            r3 = r5
        L51:
            if (r3 == 0) goto L54
            goto L19
        L54:
            long r3 = r0.f15400
            r6 = 4294967296(0x100000000, double:2.121995791E-314)
            int r3 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r3 < 0) goto L61
            r3 = r5
            goto L62
        L61:
            r3 = 0
        L62:
            if (r3 == 0) goto L6d
            r8.f9476 = r2
            r8.f15424 = r5
            r0.m8203(r8)
        L6b:
            r8 = r1
            goto L87
        L6d:
            r0.m8202(r5)
            r8.run()     // Catch: java.lang.Throwable -> L7d
        L73:
            boolean r3 = r0.m8200()     // Catch: java.lang.Throwable -> L7d
            if (r3 != 0) goto L73
        L79:
            r0.m8201(r5)
            goto L19
        L7d:
            r3 = move-exception
            r8.m8263(r3)     // Catch: java.lang.Throwable -> L82
            goto L79
        L82:
            r8 = move-exception
            r0.m8201(r5)
            throw r8
        L87:
            if (r8 != r1) goto L8a
            return r8
        L8a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p324.AbstractC3999.m8163(ᴵʾ.ʽ):java.lang.Object");
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static final Object m8164(InterfaceC2139 interfaceC2139, InterfaceC4087 interfaceC4087, InterfaceC2136 interfaceC2136) {
        InterfaceC2139 mo3551 = interfaceC2136.mo3551();
        InterfaceC2139 mo3421 = !((Boolean) interfaceC2139.mo3418(Boolean.FALSE, new ˎᐧ(13))).booleanValue() ? mo3551.mo3421(interfaceC2139) : m8176(mo3551, interfaceC2139, false);
        m8174(mo3421);
        if (mo3421 == mo3551) {
            C2480 c2480 = new C2480(interfaceC2136, mo3421);
            return ʽʽ.ˈٴ(c2480, true, c2480, interfaceC4087);
        }
        C2137 c2137 = C2137.f8327;
        if (AbstractC2444.m5562(mo3421.mo3419(c2137), mo3551.mo3419(c2137))) {
            C4038 c4038 = new C4038(interfaceC2136, mo3421);
            InterfaceC2139 interfaceC21392 = c4038.f15440;
            Object m5622 = AbstractC2481.m5622(interfaceC21392, null);
            try {
                return ʽʽ.ˈٴ(c4038, true, c4038, interfaceC4087);
            } finally {
                AbstractC2481.m5625(interfaceC21392, m5622);
            }
        }
        C2480 c24802 = new C2480(interfaceC2136, mo3421);
        try {
            AbstractC2481.m5626(C0907.f3832, ⁱˊ.ˈٴ(ⁱˊ.ﾞᴵ(c24802, c24802, interfaceC4087)));
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = C4007.f15386;
            do {
                int i = atomicIntegerFieldUpdater.get(c24802);
                if (i != 0) {
                    if (i != 2) {
                        throw new IllegalStateException("Already suspended");
                    }
                    Object m8157 = m8157(C4031.f15415.get(c24802));
                    if (m8157 instanceof C4022) {
                        throw ((C4022) m8157).f15404;
                    }
                    return m8157;
                }
            } while (!atomicIntegerFieldUpdater.compareAndSet(c24802, 0, 1));
            return EnumC4532.f16960;
        } catch (Throwable th) {
            th = th;
            if (th instanceof DispatchException) {
                th = ((DispatchException) th).f3106;
            }
            c24802.mo3549(new C0922(th));
            throw th;
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final InterfaceC3995 m8165(InterfaceC2139 interfaceC2139) {
        InterfaceC2142 mo3419 = interfaceC2139.mo3419(C2137.f8327);
        InterfaceC3995 interfaceC3995 = mo3419 instanceof InterfaceC3995 ? (InterfaceC3995) mo3419 : null;
        return interfaceC3995 == null ? AbstractC4048.f15437 : interfaceC3995;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ᴵי.ﹶᐧ, ᴵי.ˉـ] */
    /* renamed from: ˈ, reason: contains not printable characters */
    public static C4054 m8166() {
        return new C4011(null);
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static final void m8167(Throwable th, InterfaceC2139 interfaceC2139) {
        if (th instanceof DispatchException) {
            th = ((DispatchException) th).f3106;
        }
        try {
            C3696 c3696 = (C3696) interfaceC2139.mo3419(C3997.f15366);
            if (c3696 != null) {
                c3696.m7735(th);
            } else {
                AbstractC2481.m5621(th, interfaceC2139);
            }
        } catch (Throwable th2) {
            if (th != th2) {
                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                ˈ.ⁱˊ(runtimeException, th);
                th = runtimeException;
            }
            AbstractC2481.m5621(th, interfaceC2139);
        }
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [ᴵי.ﹳٴ, ᴵי.ˈˏ] */
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static C4006 m8168(InterfaceC4023 interfaceC4023, InterfaceC2139 interfaceC2139, InterfaceC4087 interfaceC4087, int i) {
        if ((i & 1) != 0) {
            interfaceC2139 = C2134.f8324;
        }
        ?? abstractC4051 = new AbstractC4051(m8160(interfaceC4023, interfaceC2139), true, true);
        abstractC4051.m8267(1, abstractC4051, interfaceC4087);
        return abstractC4051;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public static final Object m8169(RunnableC3987 runnableC3987, InterfaceC4087 interfaceC4087) {
        m8175(runnableC3987, true, new C4009(1, m8165(runnableC3987.f9462.mo3551()).mo5613(runnableC3987.f15356, runnableC3987, runnableC3987.f15440)));
        return ʽʽ.ˈٴ(runnableC3987, false, runnableC3987, interfaceC4087);
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [ᴵי.ﹳٴ, ᴵי.ᴵˊ] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static C4035 m8170(InterfaceC4023 interfaceC4023, InterfaceC4087 interfaceC4087, int i) {
        InterfaceC2139 interfaceC2139 = ExecutorC1840.f7404;
        if ((i & 1) != 0) {
            interfaceC2139 = C2134.f8324;
        }
        ?? abstractC4051 = new AbstractC4051(m8160(interfaceC4023, interfaceC2139), true, true);
        abstractC4051.m8267(1, abstractC4051, interfaceC4087);
        return abstractC4051;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static final Object m8171(InterfaceC2139 interfaceC2139, InterfaceC4087 interfaceC4087) {
        AbstractC4020 abstractC4020;
        InterfaceC2139 m8176;
        long mo8194;
        Thread currentThread = Thread.currentThread();
        InterfaceC2138 interfaceC2138 = C2137.f8327;
        AbstractC4017 abstractC4017 = (AbstractC4017) interfaceC2139.mo3419(interfaceC2138);
        C2134 c2134 = C2134.f8324;
        if (abstractC4017 == null) {
            abstractC4020 = AbstractC4053.m8269();
            m8176 = m8176(c2134, interfaceC2139.mo3421(abstractC4020), true);
            C1842 c1842 = AbstractC4028.f15408;
            if (m8176 != c1842 && m8176.mo3419(interfaceC2138) == null) {
                m8176 = m8176.mo3421(c1842);
            }
        } else {
            if (abstractC4017 instanceof AbstractC4020) {
            }
            abstractC4020 = (AbstractC4020) AbstractC4053.f15446.get();
            m8176 = m8176(c2134, interfaceC2139, true);
            C1842 c18422 = AbstractC4028.f15408;
            if (m8176 != c18422 && m8176.mo3419(interfaceC2138) == null) {
                m8176 = m8176.mo3421(c18422);
            }
        }
        C4056 c4056 = new C4056(m8176, currentThread, abstractC4020);
        c4056.m8267(1, c4056, interfaceC4087);
        AbstractC4020 abstractC40202 = c4056.f15449;
        if (abstractC40202 != null) {
            abstractC40202.m8202(false);
        }
        while (true) {
            if (abstractC40202 != null) {
                try {
                    mo8194 = abstractC40202.mo8194();
                } catch (Throwable th) {
                    if (abstractC40202 != null) {
                        abstractC40202.m8201(false);
                    }
                    throw th;
                }
            } else {
                mo8194 = Long.MAX_VALUE;
            }
            if (c4056.m8235()) {
                break;
            }
            LockSupport.parkNanos(c4056, mo8194);
            if (Thread.interrupted()) {
                c4056.m8256(new InterruptedException());
            }
        }
        if (abstractC40202 != null) {
            abstractC40202.m8201(false);
        }
        Object m8157 = m8157(C4031.f15415.get(c4056));
        C4022 c4022 = m8157 instanceof C4022 ? (C4022) m8157 : null;
        if (c4022 == null) {
            return m8157;
        }
        throw c4022.f15404;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static final C4038 m8172(InterfaceC2136 interfaceC2136, InterfaceC2139 interfaceC2139, Object obj) {
        C4038 c4038 = null;
        if ((interfaceC2136 instanceof InterfaceC3903) && interfaceC2139.mo3419(C4025.f15405) != null) {
            InterfaceC3903 interfaceC3903 = (InterfaceC3903) interfaceC2136;
            while (true) {
                if ((interfaceC3903 instanceof C4007) || (interfaceC3903 = interfaceC3903.mo4725()) == null) {
                    break;
                }
                if (interfaceC3903 instanceof C4038) {
                    c4038 = (C4038) interfaceC3903;
                    break;
                }
            }
            if (c4038 != null) {
                c4038.m8266(interfaceC2139, obj);
            }
        }
        return c4038;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final String m8173(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final void m8174(InterfaceC2139 interfaceC2139) {
        InterfaceC4036 interfaceC4036 = (InterfaceC4036) interfaceC2139.mo3419(C3997.f15367);
        if (interfaceC4036 != null && !interfaceC4036.mo8230()) {
            throw interfaceC4036.mo8236();
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static final InterfaceC4041 m8175(InterfaceC4036 interfaceC4036, boolean z, AbstractC4000 abstractC4000) {
        return interfaceC4036 instanceof C4031 ? ((C4031) interfaceC4036).m8255(z, abstractC4000) : interfaceC4036.mo8258(abstractC4000.mo8153(), z, new ᴵˊ(1, abstractC4000, AbstractC4000.class, "invoke", "invoke(Ljava/lang/Throwable;)V", 0, 0, 14));
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final InterfaceC2139 m8176(InterfaceC2139 interfaceC2139, InterfaceC2139 interfaceC21392, boolean z) {
        Boolean bool = Boolean.FALSE;
        boolean booleanValue = ((Boolean) interfaceC2139.mo3418(bool, new ˎᐧ(13))).booleanValue();
        boolean booleanValue2 = ((Boolean) interfaceC21392.mo3418(bool, new ˎᐧ(13))).booleanValue();
        if (!booleanValue && !booleanValue2) {
            return interfaceC2139.mo3421(interfaceC21392);
        }
        ˎᐧ r0 = new ˎᐧ(14);
        C2134 c2134 = C2134.f8324;
        InterfaceC2139 interfaceC21393 = (InterfaceC2139) interfaceC2139.mo3418(c2134, r0);
        Object obj = interfaceC21392;
        if (booleanValue2) {
            obj = interfaceC21392.mo3418(c2134, new ˎᐧ(15));
        }
        return interfaceC21393.mo3421((InterfaceC2139) obj);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static final Object m8177(Object obj) {
        return obj instanceof C4022 ? new C0922(((C4022) obj).f15404) : obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005d A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.Object, ˊʼ.ˏי] */
    /* renamed from: ᵢˏ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m8178(long r5, ᵢʿ.ʻˋ r7, p316.AbstractC3902 r8) {
        /*
            boolean r0 = r8 instanceof p324.C4019
            if (r0 == 0) goto L13
            r0 = r8
            ᴵי.ˑʼ r0 = (p324.C4019) r0
            int r1 = r0.f15396
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f15396 = r1
            goto L18
        L13:
            ᴵי.ˑʼ r0 = new ᴵי.ˑʼ
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f15397
            int r1 = r0.f15396
            r2 = 1
            if (r1 == 0) goto L31
            if (r1 != r2) goto L29
            ˊʼ.ˏי r5 = r0.f15395
            p121.AbstractC2026.m5044(r8)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L27
            return r8
        L27:
            r6 = move-exception
            goto L57
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            p121.AbstractC2026.m5044(r8)
            r3 = 0
            int r8 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r8 > 0) goto L3b
            goto L5d
        L3b:
            ˊʼ.ˏי r8 = new ˊʼ.ˏי
            r8.<init>()
            r0.f15395 = r8     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L55
            r0.f15396 = r2     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L55
            ᴵי.ʻˋ r1 = new ᴵי.ʻˋ     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L55
            r1.<init>(r5, r0)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L55
            r8.f9409 = r1     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L55
            java.lang.Object r5 = m8169(r1, r7)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L55
            ᵢˎ.ﹳٴ r6 = p373.EnumC4532.f16960
            if (r5 != r6) goto L54
            return r6
        L54:
            return r5
        L55:
            r6 = move-exception
            r5 = r8
        L57:
            ᴵי.ᴵˑ r7 = r6.f3108
            java.lang.Object r5 = r5.f9409
            if (r7 != r5) goto L5f
        L5d:
            r5 = 0
            return r5
        L5f:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: p324.AbstractC3999.m8178(long, ᵢʿ.ʻˋ, ᴵʾ.ʽ):java.lang.Object");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C2469 m8179(InterfaceC2139 interfaceC2139) {
        if (interfaceC2139.mo3419(C3997.f15367) == null) {
            interfaceC2139 = interfaceC2139.mo3421(m8161());
        }
        return new C2469(interfaceC2139);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ᴵי.ᐧᴵ, ᴵי.ᵔﹳ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C4047 m8180() {
        ?? c4031 = new C4031(true);
        c4031.m8246(null);
        return c4031;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static final void m8181(C4030 c4030, InterfaceC2136 interfaceC2136, boolean z) {
        Object obj = C4030.f15412.get(c4030);
        Throwable mo8216 = c4030.mo8216(obj);
        Object c0922 = mo8216 != null ? new C0922(mo8216) : c4030.mo8221(obj);
        if (!z) {
            interfaceC2136.mo3549(c0922);
            return;
        }
        C2485 c2485 = (C2485) interfaceC2136;
        AbstractC3902 abstractC3902 = c2485.f9478;
        Object obj2 = c2485.f9477;
        InterfaceC2139 mo3551 = abstractC3902.mo3551();
        Object m5622 = AbstractC2481.m5622(mo3551, obj2);
        C4038 m8172 = m5622 != AbstractC2481.f9464 ? m8172(abstractC3902, mo3551, m5622) : null;
        try {
            c2485.f9478.mo3549(c0922);
            if (m8172 == null || m8172.m8264()) {
                AbstractC2481.m5625(mo3551, m5622);
            }
        } catch (Throwable th) {
            if (m8172 == null || m8172.m8264()) {
                AbstractC2481.m5625(mo3551, m5622);
            }
            throw th;
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final C4030 m8182(InterfaceC2136 interfaceC2136) {
        C4030 c4030;
        C4030 c40302;
        if (!(interfaceC2136 instanceof C2485)) {
            return new C4030(1, interfaceC2136);
        }
        C2485 c2485 = (C2485) interfaceC2136;
        C0902 c0902 = AbstractC2481.f9463;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C2485.f9474;
        loop0: while (true) {
            Object obj = atomicReferenceFieldUpdater.get(c2485);
            c4030 = null;
            if (obj == null) {
                atomicReferenceFieldUpdater.set(c2485, c0902);
                c40302 = null;
                break;
            }
            if (obj instanceof C4030) {
                while (!atomicReferenceFieldUpdater.compareAndSet(c2485, obj, c0902)) {
                    if (atomicReferenceFieldUpdater.get(c2485) != obj) {
                        break;
                    }
                }
                c40302 = (C4030) obj;
                break loop0;
            }
            if (obj != c0902 && !(obj instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        }
        if (c40302 != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = C4030.f15412;
            Object obj2 = atomicReferenceFieldUpdater2.get(c40302);
            if (!(obj2 instanceof C4052) || ((C4052) obj2).f15442 == null) {
                C4030.f15411.set(c40302, 536870911);
                atomicReferenceFieldUpdater2.set(c40302, C4049.f15438);
                c4030 = c40302;
            } else {
                c40302.m8225();
            }
            if (c4030 != null) {
                return c4030;
            }
        }
        return new C4030(2, interfaceC2136);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final Object m8183(long j, InterfaceC2136 interfaceC2136) {
        if (j > 0) {
            C4030 c4030 = new C4030(1, ⁱˊ.ˈٴ(interfaceC2136));
            c4030.m8206();
            if (j < Long.MAX_VALUE) {
                m8165(c4030.f15414).mo5611(j, c4030);
            }
            Object m8209 = c4030.m8209();
            if (m8209 == EnumC4532.f16960) {
                return m8209;
            }
        }
        return C0907.f3832;
    }
}
