package p447;

import java.util.concurrent.ScheduledExecutorService;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˆˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC5247 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ ServiceConnectionC5334 f19770;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f19771;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC5260 f19772;

    public /* synthetic */ RunnableC5247(ServiceConnectionC5334 serviceConnectionC5334, InterfaceC5260 interfaceC5260, int i) {
        this.f19771 = i;
        this.f19772 = interfaceC5260;
        this.f19770 = serviceConnectionC5334;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final void m10357() {
        ServiceConnectionC5334 serviceConnectionC5334 = this.f19770;
        synchronized (serviceConnectionC5334) {
            try {
                serviceConnectionC5334.f20261 = false;
                C5240 c5240 = serviceConnectionC5334.f20260;
                if (!c5240.m10308()) {
                    C5344 c5344 = ((C5322) ((ᵎﹶ) c5240).ʾˋ).f20193;
                    C5322.m10556(c5344);
                    c5344.f20350.m10217("Connected to service");
                    InterfaceC5260 interfaceC5260 = this.f19772;
                    c5240.m10252();
                    c5240.f19693 = interfaceC5260;
                    c5240.m10297();
                    c5240.m10303();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19771) {
            case 0:
                m10357();
                return;
            default:
                ServiceConnectionC5334 serviceConnectionC5334 = this.f19770;
                synchronized (serviceConnectionC5334) {
                    try {
                        serviceConnectionC5334.f20261 = false;
                        C5240 c5240 = serviceConnectionC5334.f20260;
                        if (!c5240.m10308()) {
                            C5344 c5344 = ((C5322) ((ᵎﹶ) c5240).ʾˋ).f20193;
                            C5322.m10556(c5344);
                            c5344.f20340.m10217("Connected to remote service");
                            InterfaceC5260 interfaceC5260 = this.f19772;
                            c5240.m10252();
                            c5240.f19693 = interfaceC5260;
                            c5240.m10297();
                            c5240.m10303();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                C5240 c52402 = this.f19770.f20260;
                ScheduledExecutorService scheduledExecutorService = c52402.f19697;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdownNow();
                    c52402.f19697 = null;
                    return;
                }
                return;
        }
    }
}
