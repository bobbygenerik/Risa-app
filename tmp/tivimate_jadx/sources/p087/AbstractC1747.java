package p087;

import android.os.SystemClock;

/* renamed from: ʿٴ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1747 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final /* synthetic */ int f7106 = 0;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final double f7107 = 1.0d / Math.pow(10.0d, 6.0d);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static double m4706(long j) {
        return (SystemClock.elapsedRealtimeNanos() - j) * f7107;
    }
}
