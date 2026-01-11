package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.measurement.ᵎ;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import p035.AbstractC1220;
import p223.C3056;

/* renamed from: com.google.android.gms.internal.play_billing.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0623 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public long f2458;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f2459;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f2460;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ᵎ f2461;

    public C0623(ᵎ r2) {
        if (r2 == null) {
            throw new NullPointerException("ticker");
        }
        this.f2461 = r2;
    }

    public final String toString() {
        String str;
        long j = this.f2460 ? (this.f2461.ـˆ() - this.f2459) + this.f2458 : this.f2458;
        TimeUnit timeUnit = TimeUnit.DAYS;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (timeUnit.convert(j, timeUnit2) <= 0) {
            timeUnit = TimeUnit.HOURS;
            if (timeUnit.convert(j, timeUnit2) <= 0) {
                timeUnit = TimeUnit.MINUTES;
                if (timeUnit.convert(j, timeUnit2) <= 0) {
                    timeUnit = TimeUnit.SECONDS;
                    if (timeUnit.convert(j, timeUnit2) <= 0) {
                        timeUnit = TimeUnit.MILLISECONDS;
                        if (timeUnit.convert(j, timeUnit2) <= 0) {
                            timeUnit = TimeUnit.MICROSECONDS;
                            if (timeUnit.convert(j, timeUnit2) <= 0) {
                                timeUnit = timeUnit2;
                            }
                        }
                    }
                }
            }
        }
        String format = String.format(Locale.ROOT, "%.4g", Double.valueOf(j / timeUnit2.convert(1L, timeUnit)));
        switch (AbstractC0561.f2350[timeUnit.ordinal()]) {
            case 1:
                str = "ns";
                break;
            case 2:
                str = "μs";
                break;
            case 3:
                str = "ms";
                break;
            case 4:
                str = "s";
                break;
            case 5:
                str = "min";
                break;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                str = "h";
                break;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                str = "d";
                break;
            default:
                throw new AssertionError();
        }
        return AbstractC1220.m3795(format, " ", str);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m2227() {
        if (this.f2460) {
            throw new IllegalStateException("This stopwatch is already running.");
        }
        this.f2460 = true;
        this.f2459 = this.f2461.ـˆ();
    }
}
