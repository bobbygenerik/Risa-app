package com.google.android.gms.internal.play_billing;

import android.os.SystemClock;
import com.google.android.gms.internal.measurement.ᵎ;

/* renamed from: com.google.android.gms.internal.play_billing.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0549 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final ᵎ f2327;

    static {
        C0528 c0528;
        try {
            SystemClock.elapsedRealtimeNanos();
            c0528 = new C0528(0);
        } catch (Throwable unused) {
            SystemClock.elapsedRealtime();
            c0528 = new C0528(1);
        }
        f2327 = c0528;
    }
}
