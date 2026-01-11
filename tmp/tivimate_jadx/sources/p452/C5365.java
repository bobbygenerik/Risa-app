package p452;

import java.util.ArrayList;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.logging.Logger;
import p035.AbstractC1220;
import p307.AbstractC3740;
import p394.AbstractC4710;
import p394.AbstractC4712;
import p394.ThreadFactoryC4711;
import p409.RunnableC4848;
import ᐧﹳ.ʽ;

/* renamed from: ﾞʿ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5365 {

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final Logger f20413 = Logger.getLogger(C5365.class.getName());

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final C5365 f20414;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f20418;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long f20419;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f20420;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ʽ f20423;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f20424;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Logger f20422 = f20413;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f20416 = 10000;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final ArrayList f20421 = new ArrayList();

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final ArrayList f20415 = new ArrayList();

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final RunnableC4848 f20417 = new RunnableC4848(10, this);

    /* JADX WARN: Type inference failed for: r3v1, types: [ⁱᐧ.ˈ] */
    static {
        final String m3775 = AbstractC1220.m3775(new StringBuilder(), AbstractC4712.f17803, " TaskRunner");
        final boolean z = true;
        f20414 = new C5365(new ʽ((ThreadFactoryC4711) new ThreadFactory() { // from class: ⁱᐧ.ˈ
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, m3775);
                thread.setDaemon(z);
                return thread;
            }
        }));
    }

    public C5365(ʽ r2) {
        this.f20423 = r2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final void m10759(C5365 c5365, AbstractC5367 abstractC5367, long j, boolean z) {
        TimeZone timeZone = AbstractC4712.f17804;
        C5366 c5366 = abstractC5367.f20431;
        if (c5366.f20426 != abstractC5367) {
            throw new IllegalStateException("Check failed.");
        }
        boolean z2 = c5366.f20430;
        c5366.f20430 = false;
        c5366.f20426 = null;
        c5365.f20421.remove(c5366);
        if (j != -1 && !z2 && !c5366.f20425) {
            c5366.m10766(abstractC5367, j, true);
        }
        if (c5366.f20427.isEmpty()) {
            return;
        }
        c5365.f20415.add(c5366);
        if (z) {
            return;
        }
        c5365.m10762();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m10760(C5366 c5366) {
        TimeZone timeZone = AbstractC4712.f17804;
        if (c5366.f20426 == null) {
            boolean isEmpty = c5366.f20427.isEmpty();
            ArrayList arrayList = this.f20415;
            if (isEmpty) {
                arrayList.remove(c5366);
            } else {
                byte[] bArr = AbstractC4710.f17800;
                if (!arrayList.contains(c5366)) {
                    arrayList.add(c5366);
                }
            }
        }
        if (this.f20418) {
            notify();
        } else {
            m10762();
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C5366 m10761() {
        int i;
        synchronized (this) {
            i = this.f20416;
            this.f20416 = i + 1;
        }
        return new C5366(this, AbstractC3740.m7932(i, "Q"));
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m10762() {
        TimeZone timeZone = AbstractC4712.f17804;
        int i = this.f20424;
        if (i > this.f20420) {
            return;
        }
        this.f20424 = i + 1;
        ((ThreadPoolExecutor) this.f20423.ᴵˊ).execute(this.f20417);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC5367 m10763() {
        long j;
        AbstractC5367 abstractC5367;
        boolean z;
        TimeZone timeZone = AbstractC4712.f17804;
        while (true) {
            ArrayList arrayList = this.f20415;
            if (arrayList.isEmpty()) {
                return null;
            }
            long nanoTime = System.nanoTime();
            int size = arrayList.size();
            long j2 = Long.MAX_VALUE;
            int i = 0;
            AbstractC5367 abstractC53672 = null;
            while (true) {
                if (i >= size) {
                    j = nanoTime;
                    abstractC5367 = null;
                    z = false;
                    break;
                }
                Object obj = arrayList.get(i);
                i++;
                AbstractC5367 abstractC53673 = (AbstractC5367) ((C5366) obj).f20427.get(0);
                j = nanoTime;
                abstractC5367 = null;
                long max = Math.max(0L, abstractC53673.f20432 - j);
                if (max > 0) {
                    j2 = Math.min(max, j2);
                } else {
                    if (abstractC53672 != null) {
                        z = true;
                        break;
                    }
                    abstractC53672 = abstractC53673;
                }
                nanoTime = j;
            }
            ArrayList arrayList2 = this.f20421;
            if (abstractC53672 != null) {
                TimeZone timeZone2 = AbstractC4712.f17804;
                abstractC53672.f20432 = -1L;
                C5366 c5366 = abstractC53672.f20431;
                c5366.f20427.remove(abstractC53672);
                arrayList.remove(c5366);
                c5366.f20426 = abstractC53672;
                arrayList2.add(c5366);
                if (z || (!this.f20418 && !arrayList.isEmpty())) {
                    m10762();
                }
                return abstractC53672;
            }
            if (this.f20418) {
                if (j2 >= this.f20419 - j) {
                    return abstractC5367;
                }
                notify();
                return abstractC5367;
            }
            this.f20418 = true;
            this.f20419 = j + j2;
            try {
                try {
                    TimeZone timeZone3 = AbstractC4712.f17804;
                    if (j2 > 0) {
                        long j3 = j2 / 1000000;
                        Long.signum(j3);
                        long j4 = j2 - (1000000 * j3);
                        if (j3 > 0 || j2 > 0) {
                            wait(j3, (int) j4);
                        }
                    }
                } catch (InterruptedException unused) {
                    TimeZone timeZone4 = AbstractC4712.f17804;
                    for (int size2 = arrayList2.size() - 1; -1 < size2; size2--) {
                        ((C5366) arrayList2.get(size2)).m10767();
                    }
                    for (int size3 = arrayList.size() - 1; -1 < size3; size3--) {
                        C5366 c53662 = (C5366) arrayList.get(size3);
                        c53662.m10767();
                        if (c53662.f20427.isEmpty()) {
                            arrayList.remove(size3);
                        }
                    }
                }
            } finally {
                this.f20418 = false;
            }
        }
    }
}
