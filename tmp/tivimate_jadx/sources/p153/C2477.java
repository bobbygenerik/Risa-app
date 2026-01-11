package p153;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import p035.AbstractC1220;
import p121.RunnableC2028;
import p126.InterfaceC2139;
import p324.AbstractC4017;
import p324.AbstractC4048;
import p324.C4030;
import p324.InterfaceC3995;
import p324.InterfaceC4041;
import p324.RunnableC3987;

/* renamed from: ˊʽ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2477 extends AbstractC4017 implements InterfaceC3995 {

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f9454 = AtomicIntegerFieldUpdater.newUpdater(C2477.class, "runningWorkers$volatile");
    private volatile /* synthetic */ int runningWorkers$volatile;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final AbstractC4017 f9455;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f9456;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final Object f9457;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC3995 f9458;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C2476 f9459;

    /* JADX WARN: Multi-variable type inference failed */
    public C2477(AbstractC4017 abstractC4017, int i) {
        InterfaceC3995 interfaceC3995 = abstractC4017 instanceof InterfaceC3995 ? (InterfaceC3995) abstractC4017 : null;
        this.f9458 = interfaceC3995 == null ? AbstractC4048.f15437 : interfaceC3995;
        this.f9455 = abstractC4017;
        this.f9456 = i;
        this.f9459 = new C2476();
        this.f9457 = new Object();
    }

    @Override // p324.AbstractC4017
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f9455);
        sb.append(".limitedParallelism(");
        return AbstractC1220.m3784(sb, this.f9456, ')');
    }

    @Override // p324.AbstractC4017
    /* renamed from: ʽᵔ */
    public final void mo4763(InterfaceC2139 interfaceC2139, Runnable runnable) {
        Runnable m5610;
        this.f9459.m5609(runnable);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f9454;
        if (atomicIntegerFieldUpdater.get(this) >= this.f9456 || !m5612() || (m5610 = m5610()) == null) {
            return;
        }
        try {
            this.f9455.mo4763(this, new RunnableC2028(this, m5610, 29, false));
        } catch (Throwable th) {
            atomicIntegerFieldUpdater.decrementAndGet(this);
            throw th;
        }
    }

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public final Runnable m5610() {
        while (true) {
            Runnable runnable = (Runnable) this.f9459.m5607();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.f9457) {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f9454;
                atomicIntegerFieldUpdater.decrementAndGet(this);
                if (this.f9459.m5606() == 0) {
                    return null;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
            }
        }
    }

    @Override // p324.InterfaceC3995
    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final void mo5611(long j, C4030 c4030) {
        this.f9458.mo5611(j, c4030);
    }

    /* renamed from: ˑ, reason: contains not printable characters */
    public final boolean m5612() {
        synchronized (this.f9457) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f9454;
            if (atomicIntegerFieldUpdater.get(this) >= this.f9456) {
                return false;
            }
            atomicIntegerFieldUpdater.incrementAndGet(this);
            return true;
        }
    }

    @Override // p324.AbstractC4017
    /* renamed from: ـᵎ */
    public final void mo4764(InterfaceC2139 interfaceC2139, Runnable runnable) {
        Runnable m5610;
        this.f9459.m5609(runnable);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f9454;
        if (atomicIntegerFieldUpdater.get(this) >= this.f9456 || !m5612() || (m5610 = m5610()) == null) {
            return;
        }
        try {
            AbstractC2481.m5618(this.f9455, this, new RunnableC2028(this, m5610, 29, false));
        } catch (Throwable th) {
            atomicIntegerFieldUpdater.decrementAndGet(this);
            throw th;
        }
    }

    @Override // p324.InterfaceC3995
    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final InterfaceC4041 mo5613(long j, RunnableC3987 runnableC3987, InterfaceC2139 interfaceC2139) {
        return this.f9458.mo5613(j, runnableC3987, interfaceC2139);
    }
}
