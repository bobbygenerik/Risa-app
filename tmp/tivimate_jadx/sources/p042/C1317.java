package p042;

import android.os.SystemClock;
import android.util.Log;
import androidx.leanback.widget.ʻٴ;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p070.C1630;
import p220.C3032;
import p229.C3125;
import p318.C3920;
import p318.EnumC3916;
import p411.C4905;

/* renamed from: ʽˆ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1317 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C3125 f5044;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f5045;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f5046;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f5047;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f5048;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public long f5049;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final ThreadPoolExecutor f5050;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final ʻٴ f5051;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final double f5052;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final double f5053;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final ArrayBlockingQueue f5054;

    public C1317(ʻٴ r9, C1630 c1630, C3125 c3125) {
        double d = c1630.f6491;
        double d2 = c1630.f6492;
        this.f5053 = d;
        this.f5052 = d2;
        this.f5045 = c1630.f6495 * 1000;
        this.f5051 = r9;
        this.f5044 = c3125;
        this.f5047 = SystemClock.elapsedRealtime();
        int i = (int) d;
        this.f5048 = i;
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(i);
        this.f5054 = arrayBlockingQueue;
        this.f5050 = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, arrayBlockingQueue);
        this.f5046 = 0;
        this.f5049 = 0L;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m3943(C4905 c4905, C3032 c3032) {
        String str = "Sending report through Google DataTransport: " + c4905.f18306;
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
        }
        this.f5051.ʻٴ(new C3920(c4905.f18307, EnumC3916.f15178), new C1318(SystemClock.elapsedRealtime() - this.f5047 < 2000, this, c3032, c4905));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m3944() {
        if (this.f5049 == 0) {
            this.f5049 = System.currentTimeMillis();
        }
        int currentTimeMillis = (int) ((System.currentTimeMillis() - this.f5049) / this.f5045);
        int min = this.f5054.size() == this.f5048 ? Math.min(100, this.f5046 + currentTimeMillis) : Math.max(0, this.f5046 - currentTimeMillis);
        if (this.f5046 != min) {
            this.f5046 = min;
            this.f5049 = System.currentTimeMillis();
        }
        return min;
    }
}
