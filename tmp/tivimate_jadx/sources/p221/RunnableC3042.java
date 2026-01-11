package p221;

import java.util.concurrent.ExecutorService;
import ˊⁱ.ˑﹳ;

/* renamed from: ˏᐧ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC3042 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Runnable f11581;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f11582;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ ˑﹳ f11583;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ ScheduledExecutorServiceC3044 f11584;

    public /* synthetic */ RunnableC3042(ScheduledExecutorServiceC3044 scheduledExecutorServiceC3044, Runnable runnable, ˑﹳ r3, int i) {
        this.f11582 = i;
        this.f11584 = scheduledExecutorServiceC3044;
        this.f11581 = runnable;
        this.f11583 = r3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f11582) {
            case 0:
                ExecutorService executorService = this.f11584.f11588;
                final int i = 0;
                final Runnable runnable = this.f11581;
                final ˑﹳ r4 = this.f11583;
                executorService.execute(new Runnable() { // from class: ˏᐧ.ⁱˊ
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i) {
                            case 0:
                                try {
                                    runnable.run();
                                    return;
                                } catch (Exception e) {
                                    ((ScheduledFutureC3038) r4.ᴵˊ).mo4321(e);
                                    throw e;
                                }
                            case 1:
                                try {
                                    runnable.run();
                                    return;
                                } catch (Exception e2) {
                                    ((ScheduledFutureC3038) r4.ᴵˊ).mo4321(e2);
                                    return;
                                }
                            default:
                                Runnable runnable2 = runnable;
                                ScheduledFutureC3038 scheduledFutureC3038 = (ScheduledFutureC3038) r4.ᴵˊ;
                                try {
                                    runnable2.run();
                                    scheduledFutureC3038.m4320(null);
                                    return;
                                } catch (Exception e3) {
                                    scheduledFutureC3038.mo4321(e3);
                                    return;
                                }
                        }
                    }
                });
                return;
            case 1:
                ExecutorService executorService2 = this.f11584.f11588;
                final int i2 = 2;
                final Runnable runnable2 = this.f11581;
                final ˑﹳ r42 = this.f11583;
                executorService2.execute(new Runnable() { // from class: ˏᐧ.ⁱˊ
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i2) {
                            case 0:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e) {
                                    ((ScheduledFutureC3038) r42.ᴵˊ).mo4321(e);
                                    throw e;
                                }
                            case 1:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e2) {
                                    ((ScheduledFutureC3038) r42.ᴵˊ).mo4321(e2);
                                    return;
                                }
                            default:
                                Runnable runnable22 = runnable2;
                                ScheduledFutureC3038 scheduledFutureC3038 = (ScheduledFutureC3038) r42.ᴵˊ;
                                try {
                                    runnable22.run();
                                    scheduledFutureC3038.m4320(null);
                                    return;
                                } catch (Exception e3) {
                                    scheduledFutureC3038.mo4321(e3);
                                    return;
                                }
                        }
                    }
                });
                return;
            default:
                ExecutorService executorService3 = this.f11584.f11588;
                final int i3 = 1;
                final Runnable runnable3 = this.f11581;
                final ˑﹳ r43 = this.f11583;
                executorService3.execute(new Runnable() { // from class: ˏᐧ.ⁱˊ
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i3) {
                            case 0:
                                try {
                                    runnable3.run();
                                    return;
                                } catch (Exception e) {
                                    ((ScheduledFutureC3038) r43.ᴵˊ).mo4321(e);
                                    throw e;
                                }
                            case 1:
                                try {
                                    runnable3.run();
                                    return;
                                } catch (Exception e2) {
                                    ((ScheduledFutureC3038) r43.ᴵˊ).mo4321(e2);
                                    return;
                                }
                            default:
                                Runnable runnable22 = runnable3;
                                ScheduledFutureC3038 scheduledFutureC3038 = (ScheduledFutureC3038) r43.ᴵˊ;
                                try {
                                    runnable22.run();
                                    scheduledFutureC3038.m4320(null);
                                    return;
                                } catch (Exception e3) {
                                    scheduledFutureC3038.mo4321(e3);
                                    return;
                                }
                        }
                    }
                });
                return;
        }
    }
}
