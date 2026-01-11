package p221;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p056.AbstractC1506;
import p056.C1510;
import ˊⁱ.ˑﹳ;

/* renamed from: ˏᐧ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ScheduledFutureC3038 extends AbstractC1506 implements ScheduledFuture {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final ScheduledFuture f11563;

    public ScheduledFutureC3038(InterfaceC3045 interfaceC3045) {
        this.f11563 = interfaceC3045.mo6580(new ˑﹳ(8, this));
    }

    @Override // java.lang.Comparable
    public final int compareTo(Delayed delayed) {
        return this.f11563.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.f11563.getDelay(timeUnit);
    }

    @Override // p056.AbstractC1506
    /* renamed from: ˈ */
    public final void mo4319() {
        ScheduledFuture scheduledFuture = this.f11563;
        Object obj = this.f5964;
        scheduledFuture.cancel((obj instanceof C1510) && ((C1510) obj).f5974);
    }
}
