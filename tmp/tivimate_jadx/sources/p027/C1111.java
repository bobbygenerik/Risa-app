package p027;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.leanback.widget.RunnableC0142;
import androidx.leanback.widget.ˉˆ;
import ar.tvplayer.core.data.api.parse.ˈ;
import ar.tvplayer.core.domain.ʻٴ;
import com.google.android.gms.internal.measurement.ᵎ;
import com.google.android.gms.internal.play_billing.AbstractC0542;
import com.google.android.gms.internal.play_billing.AbstractC0549;
import com.google.android.gms.internal.play_billing.AbstractC0592;
import com.google.android.gms.internal.play_billing.C0526;
import com.google.android.gms.internal.play_billing.C0534;
import com.google.android.gms.internal.play_billing.C0551;
import com.google.android.gms.internal.play_billing.C0574;
import com.google.android.gms.internal.play_billing.C0589;
import com.google.android.gms.internal.play_billing.C0603;
import com.google.android.gms.internal.play_billing.C0623;
import com.google.android.gms.internal.play_billing.C0627;
import com.google.android.gms.internal.play_billing.C0628;
import com.google.android.gms.internal.play_billing.C0638;
import com.google.android.gms.internal.play_billing.C0645;
import com.google.android.gms.internal.play_billing.C0651;
import com.google.android.gms.internal.play_billing.EnumC0583;
import com.google.android.gms.internal.play_billing.InterfaceC0532;
import com.google.android.gms.internal.play_billing.InterfaceFutureC0614;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import p121.RunnableC2028;
import p404.C4790;
import ˋⁱ.ﾞᴵ;
import ﹳˋ.ʽʽ;
import ﹳי.ʽ;
import ﹳٴ.ﹳٴ;
import ﹶﾞ.ⁱי;

/* renamed from: ʼٴ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C1111 extends ﹳٴ {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public boolean f4328;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public boolean f4329;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final String f4330;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public volatile ServiceConnectionC1088 f4331;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f4332;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public boolean f4333;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f4334;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public boolean f4335;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final String f4336;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final ﾞᴵ f4337;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final Context f4338;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public volatile InterfaceC0532 f4339;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public ExecutorService f4340;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final boolean f4341;

    /* renamed from: ˏי, reason: contains not printable characters */
    public boolean f4342;

    /* renamed from: יـ, reason: contains not printable characters */
    public boolean f4343;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public boolean f4344;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final ᵎ f4345;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public volatile InterfaceC1086 f4346;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f4348;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final boolean f4349;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final Long f4350;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final ⁱי f4352;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public boolean f4354;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public boolean f4355;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public volatile C1102 f4357;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Object f4351 = new Object();

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public volatile int f4353 = 0;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final Handler f4347 = new Handler(Looper.getMainLooper());

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public int f4356 = 0;

    public C1111(ﾞᴵ r7, Context context, InterfaceC1107 interfaceC1107, C1112 c1112) {
        long nextLong = new Random().nextLong();
        this.f4350 = Long.valueOf(nextLong);
        this.f4345 = AbstractC0549.f2327;
        this.f4330 = "8.0.0";
        String m3496 = m3496();
        this.f4336 = m3496;
        this.f4338 = context.getApplicationContext();
        C0534 m2116 = C0551.m2116();
        m2116.m2174();
        C0551.m2113((C0551) m2116.f2387);
        if (m3496 != null) {
            m2116.m2174();
            C0551.m2120((C0551) m2116.f2387, m3496);
        }
        String packageName = this.f4338.getPackageName();
        m2116.m2174();
        C0551.m2118((C0551) m2116.f2387, packageName);
        m2116.m2174();
        C0551.m2122((C0551) m2116.f2387, nextLong);
        boolean z = c1112.f4359;
        m2116.m2174();
        C0551.m2115((C0551) m2116.f2387, z);
        int i = Build.VERSION.SDK_INT;
        m2116.m2174();
        C0551.m2121((C0551) m2116.f2387, i);
        m2116.m2078();
        try {
            int i2 = this.f4338.getPackageManager().getPackageInfo(this.f4338.getPackageName(), 0).versionCode;
            m2116.m2174();
            C0551.m2117((C0551) m2116.f2387, i2);
        } catch (Throwable th) {
            AbstractC0542.m2091("BillingClient", "Error getting app version code.", th);
        }
        this.f4352 = new ⁱי(this.f4338, (C0551) m2116.m2176());
        if (interfaceC1107 == null) {
            AbstractC0542.m2097("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.f4357 = new C1102(this.f4338, interfaceC1107, this.f4352);
        this.f4337 = r7;
        this.f4341 = false;
        this.f4338.getPackageName();
        this.f4349 = c1112.f4359;
    }

    public C1111(ﾞᴵ r7, Context context, C1112 c1112) {
        long nextLong = new Random().nextLong();
        this.f4350 = Long.valueOf(nextLong);
        this.f4345 = AbstractC0549.f2327;
        this.f4330 = "8.0.0";
        String m3496 = m3496();
        this.f4336 = m3496;
        this.f4338 = context.getApplicationContext();
        C0534 m2116 = C0551.m2116();
        m2116.m2174();
        C0551.m2113((C0551) m2116.f2387);
        if (m3496 != null) {
            m2116.m2174();
            C0551.m2120((C0551) m2116.f2387, m3496);
        }
        String packageName = this.f4338.getPackageName();
        m2116.m2174();
        C0551.m2118((C0551) m2116.f2387, packageName);
        m2116.m2174();
        C0551.m2122((C0551) m2116.f2387, nextLong);
        boolean z = c1112.f4359;
        m2116.m2174();
        C0551.m2115((C0551) m2116.f2387, z);
        int i = Build.VERSION.SDK_INT;
        m2116.m2174();
        C0551.m2121((C0551) m2116.f2387, i);
        m2116.m2078();
        try {
            int i2 = this.f4338.getPackageManager().getPackageInfo(this.f4338.getPackageName(), 0).versionCode;
            m2116.m2174();
            C0551.m2117((C0551) m2116.f2387, i2);
        } catch (Throwable th) {
            AbstractC0542.m2091("BillingClient", "Error getting app version code.", th);
        }
        this.f4352 = new ⁱי(this.f4338, (C0551) m2116.m2176());
        AbstractC0542.m2097("BillingClient", "Billing client should have a valid listener but the provided is null.");
        this.f4357 = new C1102(this.f4338, (InterfaceC1107) null, this.f4352);
        this.f4337 = r7;
        this.f4338.getPackageName();
        this.f4349 = c1112.f4359;
    }

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public static void m3495(C1111 c1111, int i) {
        if (i != 0) {
            c1111.m3499(0);
            return;
        }
        synchronized (c1111.f4351) {
            try {
                if (c1111.f4353 == 3) {
                    return;
                }
                c1111.m3499(2);
                C1102 c1102 = c1111.f4357 != null ? c1111.f4357 : null;
                if (c1102 != null) {
                    boolean z = c1111.f4334;
                    C1097 c1097 = (C1097) c1102.f4303;
                    IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
                    IntentFilter intentFilter2 = new IntentFilter("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
                    intentFilter2.addAction("com.android.vending.billing.ALTERNATIVE_BILLING");
                    c1102.f4299 = z;
                    C1097 c10972 = (C1097) c1102.f4301;
                    Context context = (Context) c1102.f4302;
                    c10972.m3483(context, intentFilter2);
                    if (c1102.f4299) {
                        c1097.m3482(context, intentFilter);
                    } else {
                        c1097.m3483(context, intentFilter);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public static String m3496() {
        try {
            return (String) Class.forName("com.android.billingclient.ktx.BuildConfig").getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public static Future m3497(Callable callable, long j, Runnable runnable, Handler handler, ExecutorService executorService) {
        try {
            Future submit = executorService.submit(callable);
            handler.postDelayed(new RunnableC2028(submit, 3, runnable), (long) (j * 0.95d));
            return submit;
        } catch (Exception e) {
            AbstractC0542.m2091("BillingClient", "Async task throws exception!", e);
            return null;
        }
    }

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public static /* bridge */ /* synthetic */ boolean m3498(C1111 c1111) {
        boolean z;
        synchronized (c1111.f4351) {
            z = true;
            if (c1111.f4353 != 1) {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public final void m3499(int i) {
        synchronized (this.f4351) {
            try {
                if (this.f4353 == 3) {
                    return;
                }
                int i2 = this.f4353;
                AbstractC0542.m2096("BillingClient", "Setting clientState from " + (i2 != 0 ? i2 != 1 ? i2 != 2 ? "CLOSED" : "CONNECTED" : "CONNECTING" : "DISCONNECTED") + " to " + (i != 0 ? i != 1 ? i != 2 ? "CLOSED" : "CONNECTED" : "CONNECTING" : "DISCONNECTED"));
                this.f4353 = i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public final void m3500(int i, int i2, C1115 c1115, String str) {
        try {
            int i3 = AbstractC1104.f4313;
            m3506(AbstractC1104.m3492(i, i2, c1115, str, EnumC0583.f2383));
        } catch (Throwable th) {
            AbstractC0542.m2091("BillingClient", "Unable to log.", th);
        }
    }

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public final synchronized ExecutorService m3501() {
        try {
            if (this.f4340 == null) {
                this.f4340 = Executors.newFixedThreadPool(AbstractC0542.f2317, new ThreadFactoryC1100(this));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f4340;
    }

    /* renamed from: ʼـ, reason: contains not printable characters */
    public final C1115 m3502() {
        int[] iArr = {0, 3};
        synchronized (this.f4351) {
            for (int i = 0; i < 2; i++) {
                if (this.f4353 == iArr[i]) {
                    return AbstractC1093.f4262;
                }
            }
            return AbstractC1093.f4270;
        }
    }

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public final ʽﹳ m3503(C1115 c1115, int i, String str, Exception exc) {
        AbstractC0542.m2091("BillingClient", str, exc);
        m3500(i, 7, c1115, AbstractC1104.m3493(exc));
        return new ʽﹳ(c1115.f4368, c1115.f4366, new ArrayList(), new ArrayList());
    }

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public final C4790 m3504(C1115 c1115, int i, String str, Exception exc) {
        m3500(i, 9, c1115, AbstractC1104.m3493(exc));
        AbstractC0542.m2091("BillingClient", str, exc);
        return new C4790(c1115, 6, (Object) null);
    }

    /* renamed from: ʿـ, reason: contains not printable characters */
    public final void m3505(C1115 c1115) {
        if (Thread.interrupted()) {
            return;
        }
        this.f4347.post(new RunnableC2028(this, 2, c1115));
    }

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public final void m3506(C0627 c0627) {
        try {
            ⁱי r1 = this.f4352;
            int i = this.f4356;
            r1.getClass();
            try {
                C0534 c0534 = (C0534) ((C0551) r1.ᴵˊ).m2047();
                c0534.m2174();
                C0551.m2114((C0551) c0534.f2387, i);
                r1.ᴵˊ = (C0551) c0534.m2176();
                r1.ˊʻ(c0627);
            } catch (Throwable th) {
                AbstractC0542.m2091("BillingLogger", "Unable to log.", th);
            }
        } catch (Throwable th2) {
            AbstractC0542.m2091("BillingClient", "Unable to log.", th2);
        }
    }

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public final InterfaceFutureC0614 m3507(int i) {
        if (this.f4349 && !m3513()) {
            return ʽʽ.ᴵᵔ(new C1090(i, 1, this));
        }
        AbstractC0542.m2096("BillingClient", "Already connected or not opted into auto reconnection.");
        return new C0638(AbstractC1093.f4259);
    }

    /* renamed from: ˏᵢ */
    public void mo3450(ˉˆ r7, InterfaceC1114 interfaceC1114) {
        if (m3497(new CallableC1113(this, interfaceC1114, r7, 1), 30000L, new RunnableC2028(this, 4, interfaceC1114), m3510(), m3501()) == null) {
            C1115 m3502 = m3502();
            m3519(25, 7, m3502);
            C0628 c0628 = AbstractC0592.f2396;
            interfaceC1114.m3526(m3502, new C1085(C0526.f2292));
        }
    }

    /* renamed from: ˑ, reason: contains not printable characters */
    public final C1115 m3508(int i) {
        AbstractC0542.m2096("BillingClient", "Service connection is valid. No need to re-initialize.");
        C0603 m2308 = C0651.m2308();
        m2308.m2174();
        C0651.m2310((C0651) m2308.f2387, 6);
        C0589 m2162 = C0574.m2162();
        m2162.m2174();
        C0574.m2161((C0574) m2162.f2387);
        m2162.m2181(i > 0);
        m2162.m2182(i);
        m2308.m2174();
        C0651.m2309((C0651) m2308.f2387, (C0574) m2162.m2176());
        m3521((C0651) m2308.m2176());
        return AbstractC1093.f4259;
    }

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public final void m3509(InterfaceC1086 interfaceC1086, int i) {
        int i2;
        C1115 c1115;
        C1115 c11152;
        synchronized (this.f4351) {
            try {
                if (m3513()) {
                    c1115 = m3508(i);
                } else {
                    if (this.f4353 == 1) {
                        AbstractC0542.m2097("BillingClient", "Client is already in the process of connecting to billing service.");
                        c11152 = AbstractC1093.f4263;
                        m3520(37, i, c11152);
                    } else if (this.f4353 == 3) {
                        AbstractC0542.m2097("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
                        c11152 = AbstractC1093.f4262;
                        m3520(38, i, c11152);
                    } else {
                        m3499(1);
                        if (i == 0) {
                            this.f4346 = interfaceC1086;
                            i = 0;
                        }
                        m3515();
                        AbstractC0542.m2096("BillingClient", "Starting in-app billing setup.");
                        this.f4331 = new ServiceConnectionC1088(this, interfaceC1086, i);
                        C0623 c0623 = this.f4331.f4245;
                        c0623.f2458 = 0L;
                        c0623.f2460 = false;
                        c0623.m2227();
                        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
                        intent.setPackage("com.android.vending");
                        List<ResolveInfo> queryIntentServices = this.f4338.getPackageManager().queryIntentServices(intent, 0);
                        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
                            i2 = 41;
                        } else {
                            ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
                            i2 = 40;
                            if (serviceInfo != null) {
                                String str = serviceInfo.packageName;
                                String str2 = serviceInfo.name;
                                if (!Objects.equals(str, "com.android.vending") || str2 == null) {
                                    AbstractC0542.m2097("BillingClient", "The device doesn't have valid Play Store.");
                                } else {
                                    ComponentName componentName = new ComponentName(str, str2);
                                    Intent intent2 = new Intent(intent);
                                    intent2.setComponent(componentName);
                                    intent2.putExtra("playBillingLibraryVersion", this.f4330);
                                    synchronized (this.f4351) {
                                        try {
                                            if (this.f4353 == 2) {
                                                c1115 = m3508(i);
                                            } else if (this.f4353 != 1) {
                                                AbstractC0542.m2097("BillingClient", "Client state no longer CONNECTING, returning service disconnected.");
                                                c11152 = AbstractC1093.f4262;
                                                m3520(105, i, c11152);
                                            } else {
                                                ServiceConnectionC1088 serviceConnectionC1088 = this.f4331;
                                                if ((i <= 0 || Build.VERSION.SDK_INT < 29) ? this.f4338.bindService(intent2, serviceConnectionC1088, 1) : this.f4338.bindService(intent2, 1, m3501(), serviceConnectionC1088)) {
                                                    AbstractC0542.m2096("BillingClient", "Service was bonded successfully.");
                                                    c1115 = null;
                                                } else {
                                                    AbstractC0542.m2097("BillingClient", "Connection to Billing service is blocked.");
                                                    i2 = 39;
                                                }
                                            }
                                        } finally {
                                        }
                                    }
                                }
                            } else {
                                AbstractC0542.m2097("BillingClient", "The device doesn't have valid Play Store.");
                            }
                        }
                        m3499(0);
                        AbstractC0542.m2096("BillingClient", "Billing service unavailable on device.");
                        C1115 c11153 = AbstractC1093.f4272;
                        m3520(i2, i, c11153);
                        c1115 = c11153;
                    }
                    c1115 = c11152;
                }
            } finally {
            }
        }
        if (c1115 != null) {
            interfaceC1086.mo3442(c1115);
        }
    }

    /* renamed from: י, reason: contains not printable characters */
    public final Handler m3510() {
        return Looper.myLooper() == null ? this.f4347 : new Handler(Looper.myLooper());
    }

    /* renamed from: יﹳ, reason: contains not printable characters */
    public final void m3511() {
        if (TextUtils.isEmpty(null)) {
            this.f4338.getPackageName();
        }
    }

    /* renamed from: ـˊ, reason: contains not printable characters */
    public final void m3512(int i, C1115 c1115, long j, boolean z) {
        try {
            int i2 = AbstractC1104.f4313;
            try {
                this.f4352.ᵎⁱ(AbstractC1104.m3492(i, 2, c1115, null, EnumC0583.f2383), this.f4356, j, z);
            } catch (Throwable th) {
                AbstractC0542.m2091("BillingClient", "Unable to log.", th);
            }
        } catch (Throwable th2) {
            AbstractC0542.m2091("BillingClient", "Unable to log.", th2);
        }
    }

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public final boolean m3513() {
        boolean z;
        synchronized (this.f4351) {
            try {
                z = false;
                if (this.f4353 == 2 && this.f4339 != null && this.f4331 != null) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public final void m3514(ˈ r2, C1115 c1115, int i, Exception exc) {
        AbstractC0542.m2091("BillingClient", "Error in acknowledge purchase!", exc);
        m3500(i, 3, c1115, AbstractC1104.m3493(exc));
        boolean z = ʻٴ.ﹳٴ;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public final void m3515() {
        synchronized (this.f4351) {
            if (this.f4331 != null) {
                try {
                    this.f4338.unbindService(this.f4331);
                } catch (Throwable th) {
                    try {
                        AbstractC0542.m2091("BillingClient", "There was an exception while unbinding service!", th);
                        this.f4339 = null;
                        this.f4331 = null;
                    } finally {
                        this.f4339 = null;
                        this.f4331 = null;
                    }
                }
            }
        }
    }

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public final void m3516(int i, C1115 c1115, long j) {
        try {
            int i2 = AbstractC1104.f4313;
            try {
                this.f4352.ٴᵢ(AbstractC1104.m3492(i, 2, c1115, null, EnumC0583.f2383), this.f4356, j);
            } catch (Throwable th) {
                AbstractC0542.m2091("BillingClient", "Unable to log.", th);
            }
        } catch (Throwable th2) {
            AbstractC0542.m2091("BillingClient", "Unable to log.", th2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:153:0x06e1  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x06ec A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v24, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v49, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [ʼٴ.ᵎﹶ] */
    /* JADX WARN: Type inference failed for: r5v7, types: [ʼٴ.ᵎﹶ] */
    /* JADX WARN: Type inference failed for: r6v24, types: [android.os.Bundle, android.os.BaseBundle] */
    /* renamed from: ᐧᴵ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p027.C1115 mo3452(p363.AbstractActivityC4410 r31, final com.bumptech.glide.C0229 r32) {
        /*
            Method dump skipped, instructions count: 1942
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p027.C1111.mo3452(ᵔᵢ.ˆʾ, com.bumptech.glide.ʼˎ):ʼٴ.ﾞᴵ");
    }

    /* renamed from: ᐧﾞ */
    public void mo3453(ʽ r7, ˈ r8) {
        if (m3497(new CallableC1113(this, r8, r7, 0), 30000L, new RunnableC0142(this, r8), m3510(), m3501()) == null) {
            m3519(25, 3, m3502());
            boolean z = ʻٴ.ﹳٴ;
        }
    }

    /* renamed from: ᴵʼ */
    public void mo3454(ar.tvplayer.core.domain.ʽﹳ r2) {
        m3509(r2, 0);
    }

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public final boolean m3517() {
        long max;
        ᵎ r2 = this.f4345;
        if (r2 == null) {
            throw new NullPointerException("ticker");
        }
        long j = r2.ـˆ();
        long j2 = 30000;
        int i = 1;
        long j3 = 30000;
        while (i <= 3) {
            try {
                max = Math.max(0L, j3);
            } catch (Exception e) {
                if (e instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                AbstractC0542.m2091("BillingClient", "Error during reconnection attempt: ", e);
            }
            if (max <= 0) {
                AbstractC0542.m2097("BillingClient", "No time remaining for reconnection attempt.");
                return m3513();
            }
            int i2 = ((C1115) m3507(i).get(max, TimeUnit.MILLISECONDS)).f4368;
            if (i2 == 0) {
                AbstractC0542.m2096("BillingClient", "Reconnection succeeded with result: " + i2);
                return m3513();
            }
            AbstractC0542.m2097("BillingClient", "Reconnection failed with result: " + i2);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            long j4 = (r2.ـˆ() - j) + 0;
            TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
            j3 = j2 - timeUnit.convert(j4, timeUnit2);
            long j5 = j2;
            long pow = ((long) Math.pow(2.0d, i - 1)) * 1000;
            if (j3 < pow) {
                AbstractC0542.m2097("BillingClient", "Reconnection failed due to timeout limit reached.");
                return m3513();
            }
            if (i < 3 && pow > 0) {
                try {
                    Thread.sleep(pow);
                    j3 = j5 - timeUnit.convert((r2.ـˆ() - j) + 0, timeUnit2);
                } catch (InterruptedException e2) {
                    Thread.currentThread().interrupt();
                    AbstractC0542.m2091("BillingClient", "Error sleeping during reconnection attempt: ", e2);
                }
            }
            i++;
            j2 = j5;
        }
        AbstractC0542.m2097("BillingClient", "Max retries reached.");
        return m3513();
    }

    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public final void m3518(int i, C1115 c1115, String str, long j, boolean z) {
        try {
            int i2 = AbstractC1104.f4313;
            try {
                this.f4352.ᵎⁱ(AbstractC1104.m3492(i, 2, c1115, str, EnumC0583.f2383), this.f4356, j, z);
            } catch (Throwable th) {
                AbstractC0542.m2091("BillingClient", "Unable to log.", th);
            }
        } catch (Throwable th2) {
            AbstractC0542.m2091("BillingClient", "Unable to log.", th2);
        }
    }

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public final void m3519(int i, int i2, C1115 c1115) {
        try {
            int i3 = AbstractC1104.f4313;
            m3506(AbstractC1104.m3492(i, i2, c1115, null, EnumC0583.f2383));
        } catch (Throwable th) {
            AbstractC0542.m2091("BillingClient", "Unable to log.", th);
        }
    }

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public final void m3520(int i, int i2, C1115 c1115) {
        try {
            int i3 = AbstractC1104.f4313;
            C0645 c0645 = (C0645) AbstractC1104.m3492(i, 6, c1115, null, EnumC0583.f2383).m2047();
            C0589 m2162 = C0574.m2162();
            m2162.m2181(i2 > 0);
            m2162.m2182(i2);
            c0645.m2292(m2162);
            m3506((C0627) c0645.m2176());
        } catch (Throwable th) {
            AbstractC0542.m2091("BillingClient", "Unable to log.", th);
        }
    }

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public final void m3521(C0651 c0651) {
        try {
            ⁱי r2 = this.f4352;
            int i = this.f4356;
            r2.getClass();
            try {
                C0534 c0534 = (C0534) ((C0551) r2.ᴵˊ).m2047();
                c0534.m2174();
                C0551.m2114((C0551) c0534.f2387, i);
                C0551 c0551 = (C0551) c0534.m2176();
                r2.ᴵˊ = c0551;
                try {
                    r2.ᵔٴ(c0651, c0551);
                } catch (Throwable th) {
                    AbstractC0542.m2091("BillingLogger", "Unable to log.", th);
                }
            } catch (Throwable th2) {
                AbstractC0542.m2091("BillingLogger", "Unable to log.", th2);
            }
        } catch (Throwable th3) {
            AbstractC0542.m2091("BillingClient", "Unable to log.", th3);
        }
    }
}
