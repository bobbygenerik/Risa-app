package p153;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.DispatchException;
import kotlinx.coroutines.internal.DiagnosticCoroutineContextException;
import kotlinx.coroutines.internal.ExceptionSuccessfullyProcessed;
import p012.C0902;
import p013.AbstractC0915;
import p013.C0922;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p299.C3696;
import p307.AbstractC3740;
import p316.AbstractC3902;
import p324.AbstractC3999;
import p324.AbstractC4017;
import p324.AbstractC4020;
import p324.AbstractC4053;
import p324.C3997;
import p324.C4022;
import p324.C4038;
import p324.InterfaceC4036;
import p329.InterfaceC4087;
import p435.AbstractC5152;
import ʼⁱ.ˎᐧ;
import ʽٴ.ˈ;

/* renamed from: ˊʽ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2481 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C0902 f9463;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C0902 f9464;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C0902 f9467;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C0902 f9468;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final ˎᐧ f9465 = new ˎᐧ(9);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final ˎᐧ f9469 = new ˎᐧ(10);

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final ˎᐧ f9466 = new ˎᐧ(11);

    static {
        int i = 5;
        f9468 = new C0902(i, "CLOSED");
        f9467 = new C0902(i, "UNDEFINED");
        f9463 = new C0902(i, "REUSABLE_CLAIMED");
        f9464 = new C0902(i, "NO_THREAD_ELEMENTS");
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final void m5618(AbstractC4017 abstractC4017, InterfaceC2139 interfaceC2139, Runnable runnable) {
        try {
            abstractC4017.mo4764(interfaceC2139, runnable);
        } catch (Throwable th) {
            throw new DispatchException(th, abstractC4017, interfaceC2139);
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final AbstractC2483 m5619(Object obj) {
        if (obj != f9468) {
            return (AbstractC2483) obj;
        }
        throw new IllegalStateException("Does not contain segment");
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final boolean m5620(AbstractC4017 abstractC4017, InterfaceC2139 interfaceC2139) {
        try {
            return abstractC4017.mo7733(interfaceC2139);
        } catch (Throwable th) {
            throw new DispatchException(th, abstractC4017, interfaceC2139);
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final void m5621(Throwable th, InterfaceC2139 interfaceC2139) {
        Throwable runtimeException;
        Iterator it = AbstractC2473.f9449.iterator();
        while (it.hasNext()) {
            try {
                ((C3696) it.next()).m7735(th);
            } catch (ExceptionSuccessfullyProcessed unused) {
                return;
            } catch (Throwable th2) {
                if (th == th2) {
                    runtimeException = th;
                } else {
                    runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                    ˈ.ⁱˊ(runtimeException, th);
                }
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, runtimeException);
            }
        }
        try {
            ˈ.ⁱˊ(th, new DiagnosticCoroutineContextException(interfaceC2139));
        } catch (Throwable unused2) {
        }
        Thread currentThread2 = Thread.currentThread();
        currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, th);
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static final Object m5622(InterfaceC2139 interfaceC2139, Object obj) {
        if (obj == null) {
            obj = interfaceC2139.mo3418(0, f9465);
        }
        return obj == 0 ? f9464 : obj instanceof Integer ? interfaceC2139.mo3418(new C2467(((Number) obj).intValue(), interfaceC2139), f9466) : ((C2466) obj).m5591(interfaceC2139);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final boolean m5623(Object obj) {
        return obj == f9468;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final long m5624(String str, long j, long j2, long j3) {
        String str2;
        int i = AbstractC2472.f9448;
        try {
            str2 = System.getProperty(str);
        } catch (SecurityException unused) {
            str2 = null;
        }
        if (str2 == null) {
            return j;
        }
        Long m10148 = AbstractC5152.m10148(str2);
        if (m10148 == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + str2 + '\'').toString());
        }
        long longValue = m10148.longValue();
        if (j2 <= longValue && longValue <= j3) {
            return longValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j2 + ".." + j3 + ", but is '" + longValue + '\'').toString());
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final void m5625(InterfaceC2139 interfaceC2139, Object obj) {
        if (obj == f9464) {
            return;
        }
        if (!(obj instanceof C2467)) {
            ((C2466) interfaceC2139.mo3418(null, f9469)).m5592(obj);
            return;
        }
        C2467 c2467 = (C2467) obj;
        C2466[] c2466Arr = c2467.f9432;
        int length = c2466Arr.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i = length - 1;
            c2466Arr[length].m5592(c2467.f9434[length]);
            if (i < 0) {
                return;
            } else {
                length = i;
            }
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final void m5626(Object obj, InterfaceC2136 interfaceC2136) {
        if (!(interfaceC2136 instanceof C2485)) {
            interfaceC2136.mo3549(obj);
            return;
        }
        C2485 c2485 = (C2485) interfaceC2136;
        AbstractC4017 abstractC4017 = c2485.f9475;
        AbstractC3902 abstractC3902 = c2485.f9478;
        Throwable m3188 = AbstractC0915.m3188(obj);
        Object c4022 = m3188 == null ? obj : new C4022(m3188, false);
        if (m5620(abstractC4017, abstractC3902.mo3551())) {
            c2485.f9476 = c4022;
            c2485.f15424 = 1;
            m5618(abstractC4017, abstractC3902.mo3551(), c2485);
            return;
        }
        AbstractC4020 m8269 = AbstractC4053.m8269();
        if (m8269.f15400 >= 4294967296L) {
            c2485.f9476 = c4022;
            c2485.f15424 = 1;
            m8269.m8203(c2485);
            return;
        }
        m8269.m8202(true);
        try {
            InterfaceC4036 interfaceC4036 = (InterfaceC4036) abstractC3902.mo3551().mo3419(C3997.f15367);
            if (interfaceC4036 == null || interfaceC4036.mo8230()) {
                Object obj2 = c2485.f9477;
                InterfaceC2139 mo3551 = abstractC3902.mo3551();
                Object m5622 = m5622(mo3551, obj2);
                C4038 m8172 = m5622 != f9464 ? AbstractC3999.m8172(abstractC3902, mo3551, m5622) : null;
                try {
                    abstractC3902.mo3549(obj);
                } finally {
                    if (m8172 == null || m8172.m8264()) {
                        m5625(mo3551, m5622);
                    }
                }
            } else {
                c2485.mo3549(new C0922(interfaceC4036.mo8236()));
            }
            do {
            } while (m8269.m8200());
        } finally {
            try {
            } finally {
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Object m5627(AbstractC2483 abstractC2483, long j, InterfaceC4087 interfaceC4087) {
        while (true) {
            if (abstractC2483.f9472 >= j && !abstractC2483.mo5588()) {
                return abstractC2483;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = AbstractC2465.f9428;
            Object obj = atomicReferenceFieldUpdater.get(abstractC2483);
            C0902 c0902 = f9468;
            if (obj == c0902) {
                return c0902;
            }
            AbstractC2483 abstractC24832 = (AbstractC2483) ((AbstractC2465) obj);
            if (abstractC24832 == null) {
                abstractC24832 = (AbstractC2483) interfaceC4087.mo3749(Long.valueOf(abstractC2483.f9472 + 1), abstractC2483);
                while (!atomicReferenceFieldUpdater.compareAndSet(abstractC2483, null, abstractC24832)) {
                    if (atomicReferenceFieldUpdater.get(abstractC2483) != null) {
                        break;
                    }
                }
                if (abstractC2483.mo5588()) {
                    abstractC2483.m5589();
                }
            }
            abstractC2483 = abstractC24832;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final void m5628(int i) {
        if (i < 1) {
            throw new IllegalArgumentException(AbstractC3740.m7932(i, "Expected positive parallelism level, but got ").toString());
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static int m5629(int i, int i2, String str) {
        return (int) m5624(str, i, 1, (i2 & 8) != 0 ? Integer.MAX_VALUE : 2097150);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final Object m5630(Object obj, Object obj2) {
        if (obj == null) {
            return obj2;
        }
        if (obj instanceof ArrayList) {
            ((ArrayList) obj).add(obj2);
            return obj;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(obj2);
        return arrayList;
    }
}
