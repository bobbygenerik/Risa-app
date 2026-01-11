package com.google.android.gms.internal.play_billing;

import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* renamed from: com.google.android.gms.internal.play_billing.ˉـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC0563 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C0547 f2351;

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceFutureC0614 interfaceFutureC0614;
        C0564 c0564;
        C0547 c0547 = this.f2351;
        if (c0547 == null || (interfaceFutureC0614 = c0547.f2325) == null) {
            return;
        }
        this.f2351 = null;
        if (interfaceFutureC0614.isDone()) {
            Object obj = c0547.f2340;
            if (obj == null) {
                if (interfaceFutureC0614.isDone()) {
                    if (AbstractC0555.f2337.ٴᵢ(c0547, (Object) null, C0547.m2108(interfaceFutureC0614))) {
                        C0547.m2104(c0547);
                        return;
                    }
                    return;
                }
                RunnableC0565 runnableC0565 = new RunnableC0565(c0547, interfaceFutureC0614);
                if (AbstractC0555.f2337.ٴᵢ(c0547, (Object) null, runnableC0565)) {
                    try {
                        interfaceFutureC0614.mo2111(runnableC0565, EnumC0527.f2295);
                        return;
                    } catch (Throwable th) {
                        try {
                            c0564 = new C0564(th);
                        } catch (Error | Exception unused) {
                            c0564 = C0564.f2353;
                        }
                        AbstractC0555.f2337.ٴᵢ(c0547, runnableC0565, c0564);
                        return;
                    }
                }
                obj = c0547.f2340;
            }
            if (obj instanceof C0616) {
                interfaceFutureC0614.cancel(((C0616) obj).f2444);
                return;
            }
            return;
        }
        try {
            ScheduledFuture scheduledFuture = c0547.f2326;
            c0547.f2326 = null;
            String str = "Timed out";
            if (scheduledFuture != null) {
                try {
                    long abs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                    if (abs > 10) {
                        str = "Timed out (timeout delayed by " + abs + " ms after scheduled time)";
                    }
                } catch (Throwable th2) {
                    if (AbstractC0555.f2337.ٴᵢ(c0547, (Object) null, new C0564(new TimeoutException(str)))) {
                        C0547.m2104(c0547);
                    }
                    throw th2;
                }
            }
            if (AbstractC0555.f2337.ٴᵢ(c0547, (Object) null, new C0564(new TimeoutException(str + ": " + interfaceFutureC0614.toString())))) {
                C0547.m2104(c0547);
            }
        } finally {
            interfaceFutureC0614.cancel(true);
        }
    }
}
