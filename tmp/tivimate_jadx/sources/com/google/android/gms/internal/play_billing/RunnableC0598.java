package com.google.android.gms.internal.play_billing;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import p002.C0767;
import p027.AbstractC1093;
import p027.C1089;
import p027.C1115;
import p238.InterfaceC3206;

/* renamed from: com.google.android.gms.internal.play_billing.ـˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC0598 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceFutureC0614 f2406;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C0767 f2407;

    public RunnableC0598(InterfaceFutureC0614 interfaceFutureC0614, C0767 c0767) {
        this.f2406 = interfaceFutureC0614;
        this.f2407 = c0767;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Throwable mo2110;
        InterfaceFutureC0614 interfaceFutureC0614 = this.f2406;
        boolean z = interfaceFutureC0614 instanceof AbstractC0620;
        C0767 c0767 = this.f2407;
        if (z && (mo2110 = ((AbstractC0620) interfaceFutureC0614).mo2110()) != null) {
            c0767.m2795(mo2110);
            return;
        }
        try {
            boolean isDone = interfaceFutureC0614.isDone();
            boolean z2 = false;
            Future future = interfaceFutureC0614;
            if (!isDone) {
                throw new IllegalStateException(com.google.android.gms.internal.measurement.ˏʻ.ˉـ("Future was expected to be done: %s", new Object[]{interfaceFutureC0614}));
            }
            while (true) {
                try {
                    obj = future.get();
                    break;
                } catch (InterruptedException unused) {
                    z2 = true;
                    future = future;
                } catch (Throwable th) {
                    if (z2) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            }
            if (z2) {
                Thread.currentThread().interrupt();
            }
            Integer num = (Integer) obj;
            int intValue = num.intValue();
            C1089 c1089 = (C1089) c0767.f3163;
            if (intValue <= 0) {
                ((Runnable) c0767.f3162).run();
                return;
            }
            int i = c0767.f3164;
            int intValue2 = num.intValue();
            c1089.getClass();
            C1115 m3479 = AbstractC1093.m3479(intValue2, "Billing override value was set by a license tester.");
            c1089.m3455(93, i, m3479);
            ((InterfaceC3206) c0767.f3161).accept(m3479);
        } catch (ExecutionException e) {
            c0767.m2795(e.getCause());
        } catch (Throwable th2) {
            c0767.m2795(th2);
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.play_billing.ﾞʻ, java.lang.Object] */
    public final String toString() {
        com.parse.ٴʼ r0 = new com.parse.ٴʼ(RunnableC0598.class.getSimpleName());
        ?? obj = new Object();
        ((C0648) r0.ˈٴ).f2508 = obj;
        r0.ˈٴ = obj;
        obj.f2509 = this.f2407;
        return r0.toString();
    }
}
