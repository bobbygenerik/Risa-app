package p027;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import androidx.leanback.widget.RunnableC0142;
import com.google.android.gms.internal.measurement.AbstractC0292;
import com.google.android.gms.internal.measurement.ᵎ;
import com.google.android.gms.internal.play_billing.AbstractBinderC0635;
import com.google.android.gms.internal.play_billing.AbstractC0542;
import com.google.android.gms.internal.play_billing.C0560;
import com.google.android.gms.internal.play_billing.C0566;
import com.google.android.gms.internal.play_billing.C0570;
import com.google.android.gms.internal.play_billing.C0574;
import com.google.android.gms.internal.play_billing.C0589;
import com.google.android.gms.internal.play_billing.C0590;
import com.google.android.gms.internal.play_billing.C0595;
import com.google.android.gms.internal.play_billing.C0615;
import com.google.android.gms.internal.play_billing.C0623;
import com.google.android.gms.internal.play_billing.C0627;
import com.google.android.gms.internal.play_billing.C0645;
import com.google.android.gms.internal.play_billing.InterfaceC0532;
import java.util.concurrent.TimeUnit;
import ﹶﾞ.ⁱי;

/* renamed from: ʼٴ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ServiceConnectionC1088 implements ServiceConnection {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C0623 f4242;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC1086 f4243;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f4244;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C0623 f4245;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ C1111 f4246;

    public ServiceConnectionC1088(C1111 c1111, InterfaceC1086 interfaceC1086, int i) {
        this.f4246 = c1111;
        ᵎ r2 = c1111.f4345;
        this.f4245 = new C0623(r2);
        this.f4242 = new C0623(r2);
        this.f4243 = interfaceC1086;
        this.f4244 = i;
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        AbstractC0542.m2097("BillingClient", "Billing service died.");
        try {
            C1111 c1111 = this.f4246;
            if (C1111.m3498(c1111)) {
                ⁱי r0 = c1111.f4352;
                C0645 m2236 = C0627.m2236();
                m2236.m2174();
                C0627.m2237((C0627) m2236.f2387, 6);
                C0566 m2140 = C0570.m2140();
                m2140.m2174();
                C0570.m2142((C0570) m2140.f2387, 110);
                m2236.m2291(m2140);
                C0589 m2162 = C0574.m2162();
                int i = this.f4244;
                m2162.m2181(i > 0);
                m2162.m2182(i);
                m2236.m2292(m2162);
                r0.ˊʻ((C0627) m2236.m2176());
            } else {
                c1111.f4352.ٴʼ(C0595.m2196());
            }
        } catch (Throwable th) {
            AbstractC0542.m2091("BillingClient", "Unable to log.", th);
        }
        C1111 c11112 = this.f4246;
        synchronized (c11112.f4351) {
            if (c11112.f4353 != 3 && c11112.f4353 != 0) {
                c11112.m3499(0);
                c11112.m3515();
                try {
                    this.f4243.mo3443();
                } catch (Throwable th2) {
                    AbstractC0542.m2091("BillingClient", "Exception while calling onBillingServiceDisconnected.", th2);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v4, types: [com.google.android.gms.internal.play_billing.ʽ] */
    /* JADX WARN: Type inference failed for: r10v9 */
    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ?? r10;
        AbstractC0542.m2096("BillingClient", "Billing service connected.");
        C1111 c1111 = this.f4246;
        synchronized (c1111.f4351) {
            try {
                if (c1111.f4353 == 3) {
                    return;
                }
                int i = AbstractBinderC0635.f2472;
                if (iBinder == null) {
                    r10 = 0;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
                    r10 = queryLocalInterface instanceof InterfaceC0532 ? (InterfaceC0532) queryLocalInterface : new AbstractC0292(iBinder, "com.android.vending.billing.IInAppBillingService", 1);
                }
                c1111.f4339 = r10;
                if (C1111.m3497(new CallableC1098(0, this), 30000L, new RunnableC0142(10, this), c1111.m3510(), c1111.m3501()) == null) {
                    int i2 = this.f4244;
                    C1115 m3502 = c1111.m3502();
                    c1111.m3520(25, i2, m3502);
                    m3444(m3502);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        AbstractC0542.m2097("BillingClient", "Billing service disconnected.");
        try {
            C1111 c1111 = this.f4246;
            if (C1111.m3498(c1111)) {
                ⁱי r0 = c1111.f4352;
                C0645 m2236 = C0627.m2236();
                m2236.m2174();
                C0627.m2237((C0627) m2236.f2387, 6);
                C0566 m2140 = C0570.m2140();
                m2140.m2174();
                C0570.m2142((C0570) m2140.f2387, 109);
                m2236.m2291(m2140);
                C0589 m2162 = C0574.m2162();
                int i = this.f4244;
                m2162.m2181(i > 0);
                m2162.m2182(i);
                m2236.m2292(m2162);
                r0.ˊʻ((C0627) m2236.m2176());
            } else {
                c1111.f4352.ᵔי(C0615.m2217());
            }
        } catch (Throwable th) {
            AbstractC0542.m2091("BillingClient", "Unable to log.", th);
        }
        C0623 c0623 = this.f4242;
        c0623.f2458 = 0L;
        c0623.f2460 = false;
        c0623.m2227();
        C1111 c11112 = this.f4246;
        synchronized (c11112.f4351) {
            try {
                if (c11112.f4353 == 3) {
                    return;
                }
                c11112.m3499(0);
                try {
                    this.f4243.mo3443();
                } catch (Throwable th2) {
                    AbstractC0542.m2091("BillingClient", "Exception while calling onBillingServiceDisconnected.", th2);
                }
            } finally {
            }
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3444(C1115 c1115) {
        C1111 c1111 = this.f4246;
        synchronized (c1111.f4351) {
            try {
                if (c1111.f4353 == 3) {
                    return;
                }
                try {
                    this.f4243.mo3442(c1115);
                } catch (Throwable th) {
                    AbstractC0542.m2091("BillingClient", "Exception while calling onBillingSetupFinished.", th);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m3445(C1115 c1115, int i, String str, boolean z) {
        try {
            C0566 m2140 = C0570.m2140();
            int i2 = c1115.f4368;
            m2140.m2174();
            C0570.m2143((C0570) m2140.f2387, i2);
            String str2 = c1115.f4366;
            m2140.m2174();
            C0570.m2139((C0570) m2140.f2387, str2);
            m2140.m2174();
            C0570.m2142((C0570) m2140.f2387, i);
            if (str != null) {
                m2140.m2174();
                C0570.m2141((C0570) m2140.f2387, str);
            }
            Long m3446 = m3446(z);
            C1111 c1111 = this.f4246;
            if (!z) {
                C0560 m2183 = C0590.m2183();
                m2183.m2174();
                C0590.m2185((C0590) m2183.f2387, (C0570) m2140.m2176());
                if (m3446 != null) {
                    long longValue = m3446.longValue();
                    m2183.m2174();
                    C0590.m2184((C0590) m2183.f2387, longValue);
                }
                c1111.f4352.ᵎˊ((C0590) m2183.m2176());
                return;
            }
            C0589 m2162 = C0574.m2162();
            int i3 = this.f4244;
            m2162.m2181(i3 > 0);
            m2162.m2182(i3);
            if (m3446 != null) {
                long longValue2 = m3446.longValue();
                m2162.m2174();
                C0574.m2158((C0574) m2162.f2387, longValue2);
            }
            C0645 m2236 = C0627.m2236();
            m2236.m2291(m2140);
            m2236.m2174();
            C0627.m2237((C0627) m2236.f2387, 6);
            m2236.m2292(m2162);
            c1111.m3506((C0627) m2236.m2176());
        } catch (Throwable th) {
            AbstractC0542.m2091("BillingClient", "Unable to log.", th);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Long m3446(boolean z) {
        if (z) {
            C0623 c0623 = this.f4245;
            if (!c0623.f2460) {
                return null;
            }
            long j = c0623.f2461.ـˆ();
            if (!c0623.f2460) {
                throw new IllegalStateException("This stopwatch is already stopped.");
            }
            c0623.f2460 = false;
            long j2 = (j - c0623.f2459) + c0623.f2458;
            c0623.f2458 = j2;
            return Long.valueOf(TimeUnit.MILLISECONDS.convert(j2, TimeUnit.NANOSECONDS));
        }
        C0623 c06232 = this.f4242;
        if (!c06232.f2460) {
            return null;
        }
        long j3 = c06232.f2461.ـˆ();
        if (!c06232.f2460) {
            throw new IllegalStateException("This stopwatch is already stopped.");
        }
        c06232.f2460 = false;
        long j4 = (j3 - c06232.f2459) + c06232.f2458;
        c06232.f2458 = j4;
        return Long.valueOf(TimeUnit.MILLISECONDS.convert(j4, TimeUnit.NANOSECONDS));
    }
}
