package com.google.android.gms.internal.play_billing;

import android.os.SystemClock;
import com.google.android.gms.internal.measurement.ᵎ;

/* renamed from: com.google.android.gms.internal.play_billing.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0528 extends ᵎ {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ int f2297;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final long m2039() {
        switch (this.f2297) {
            case 0:
                return SystemClock.elapsedRealtimeNanos();
            default:
                return SystemClock.elapsedRealtime() * 1000000;
        }
    }
}
