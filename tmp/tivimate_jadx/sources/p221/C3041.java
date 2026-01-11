package p221;

import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import ˊⁱ.ˑﹳ;

/* renamed from: ˏᐧ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3041 implements InterfaceC3045 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Runnable f11575;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f11576;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ long f11577;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ TimeUnit f11578;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ ScheduledExecutorServiceC3044 f11579;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ long f11580;

    public /* synthetic */ C3041(ScheduledExecutorServiceC3044 scheduledExecutorServiceC3044, Runnable runnable, long j, long j2, TimeUnit timeUnit, int i) {
        this.f11576 = i;
        this.f11579 = scheduledExecutorServiceC3044;
        this.f11575 = runnable;
        this.f11577 = j;
        this.f11580 = j2;
        this.f11578 = timeUnit;
    }

    @Override // p221.InterfaceC3045
    /* renamed from: ﹳٴ */
    public final ScheduledFuture mo6580(ˑﹳ r9) {
        switch (this.f11576) {
            case 0:
                ScheduledExecutorServiceC3044 scheduledExecutorServiceC3044 = this.f11579;
                return scheduledExecutorServiceC3044.f11589.scheduleAtFixedRate(new RunnableC3042(scheduledExecutorServiceC3044, this.f11575, r9, 0), this.f11577, this.f11580, this.f11578);
            default:
                ScheduledExecutorServiceC3044 scheduledExecutorServiceC30442 = this.f11579;
                return scheduledExecutorServiceC30442.f11589.scheduleWithFixedDelay(new RunnableC3042(scheduledExecutorServiceC30442, this.f11575, r9, 2), this.f11577, this.f11580, this.f11578);
        }
    }
}
