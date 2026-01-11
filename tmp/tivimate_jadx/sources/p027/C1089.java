package p027;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import androidx.leanback.widget.ˉˆ;
import ar.tvplayer.core.data.api.parse.ˈ;
import ar.tvplayer.core.domain.ʽﹳ;
import com.bumptech.glide.C0229;
import com.google.android.gms.internal.play_billing.AbstractC0542;
import com.google.android.gms.internal.play_billing.C0551;
import com.google.android.gms.internal.play_billing.C0627;
import com.google.android.gms.internal.play_billing.C0638;
import com.google.android.gms.internal.play_billing.C0651;
import com.google.android.gms.internal.play_billing.EnumC0527;
import com.google.android.gms.internal.play_billing.EnumC0583;
import com.google.android.gms.internal.play_billing.InterfaceC0626;
import com.google.android.gms.internal.play_billing.InterfaceFutureC0614;
import com.google.android.gms.internal.play_billing.RunnableC0598;
import j$.util.Objects;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p002.C0767;
import p238.InterfaceC3206;
import p363.AbstractActivityC4410;
import ˋⁱ.ﾞᴵ;
import ﹳˋ.ʽʽ;
import ﹳי.ʽ;
import ﹶﾞ.ⁱי;

/* renamed from: ʼٴ.ʾˋ */
/* loaded from: classes.dex */
public final class C1089 extends C1111 {

    /* renamed from: ˆﾞ */
    public volatile InterfaceC0626 f4247;

    /* renamed from: ˈʿ */
    public volatile ScheduledExecutorService f4248;

    /* renamed from: ᵎˊ */
    public final Context f4249;

    /* renamed from: ᵔי */
    public volatile int f4250;

    /* renamed from: ᵔٴ */
    public volatile ServiceConnectionC1110 f4251;

    public C1089(ﾞᴵ r1, Context context, InterfaceC1107 interfaceC1107, C1112 c1112) {
        super(r1, context, interfaceC1107, c1112);
        this.f4250 = 0;
        this.f4249 = context;
    }

    public C1089(ﾞᴵ r1, Context context, C1112 c1112) {
        super(r1, context, c1112);
        this.f4250 = 0;
        this.f4249 = context;
    }

    /* renamed from: ـᵢ */
    public static /* synthetic */ void m3447(C1089 c1089, ˉˆ r1, InterfaceC1114 interfaceC1114) {
        super.mo3450(r1, interfaceC1114);
    }

    /* renamed from: ﹶ */
    public static /* synthetic */ void m3448(C1089 c1089, ʽ r1, ˈ r2) {
        super.mo3453(r1, r2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, com.google.android.gms.internal.play_billing.ʿᵢ] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.gms.internal.play_billing.ˉـ, java.lang.Object, java.lang.Runnable] */
    /* renamed from: ʻʿ */
    public final void m3449(int i, InterfaceC3206 interfaceC3206, Runnable runnable) {
        ScheduledExecutorService scheduledExecutorService;
        InterfaceFutureC0614 m3456 = m3456(i);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        synchronized (this) {
            try {
                if (this.f4248 == null) {
                    this.f4248 = Executors.newSingleThreadScheduledExecutor();
                }
                scheduledExecutorService = this.f4248;
            } catch (Throwable th) {
                throw th;
            }
        }
        boolean isDone = m3456.isDone();
        InterfaceFutureC0614 interfaceFutureC0614 = m3456;
        if (!isDone) {
            ?? obj = new Object();
            obj.f2325 = m3456;
            ?? obj2 = new Object();
            obj2.f2351 = obj;
            obj.f2326 = scheduledExecutorService.schedule((Runnable) obj2, 28500L, timeUnit);
            m3456.mo2111(obj2, EnumC0527.f2295);
            interfaceFutureC0614 = obj;
        }
        C0767 c0767 = new C0767(this, i, interfaceC3206, runnable);
        interfaceFutureC0614.mo2111(new RunnableC0598(interfaceFutureC0614, c0767), m3501());
    }

    @Override // p027.C1111
    /* renamed from: ˏᵢ */
    public final void mo3450(ˉˆ r4, InterfaceC1114 interfaceC1114) {
        m3449(7, new C1082(0, interfaceC1114), new RunnableC1101(this, r4, interfaceC1114, 0));
    }

    /* renamed from: ٴᴵ */
    public final synchronized boolean m3451() {
        if (this.f4250 == 2 && this.f4247 != null) {
            if (this.f4251 != null) {
                return true;
            }
        }
        return false;
    }

    @Override // p027.C1111
    /* renamed from: ᐧᴵ */
    public final C1115 mo3452(AbstractActivityC4410 abstractActivityC4410, C0229 c0229) {
        int i = 0;
        try {
            i = ((Integer) m3456(2).get(28500L, TimeUnit.MILLISECONDS)).intValue();
        } catch (TimeoutException e) {
            m3455(102, 28, AbstractC1093.f4274);
            AbstractC0542.m2091("BillingClientTesting", "Asynchronous call to Billing Override Service timed out.", e);
        } catch (Exception e2) {
            if (e2 instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            m3455(95, 28, AbstractC1093.f4274);
            AbstractC0542.m2091("BillingClientTesting", "An error occurred while retrieving billing override.", e2);
        }
        if (i > 0) {
            C1115 m3479 = AbstractC1093.m3479(i, "Billing override value was set by a license tester.");
            m3455(93, 2, m3479);
            m3505(m3479);
            return m3479;
        }
        try {
            return super.mo3452(abstractActivityC4410, c0229);
        } catch (Exception e3) {
            C1115 c1115 = AbstractC1093.f4270;
            m3455(103, 2, c1115);
            AbstractC0542.m2091("BillingClientTesting", "An internal error occurred.", e3);
            return c1115;
        }
    }

    @Override // p027.C1111
    /* renamed from: ᐧﾞ */
    public final void mo3453(ʽ r4, ˈ r5) {
        m3449(3, new C1082(1, r5), new RunnableC1101(this, r4, r5, 1));
    }

    @Override // p027.C1111
    /* renamed from: ᴵʼ */
    public final void mo3454(ʽﹳ r10) {
        synchronized (this) {
            int i = 0;
            if (m3451()) {
                AbstractC0542.m2096("BillingClientTesting", "Billing Override Service connection is valid. No need to re-initialize.");
                int i2 = AbstractC1104.f4313;
                C0651 m3491 = AbstractC1104.m3491(26, EnumC0583.f2383);
                Objects.requireNonNull(m3491, "ApiSuccess should not be null");
                ⁱי r2 = this.f4352;
                r2.getClass();
                try {
                    r2.ᵔٴ(m3491, (C0551) r2.ᴵˊ);
                } catch (Throwable th) {
                    AbstractC0542.m2091("BillingLogger", "Unable to log.", th);
                }
            } else {
                int i3 = 1;
                if (this.f4250 == 1) {
                    AbstractC0542.m2097("BillingClientTesting", "Client is already in the process of connecting to Billing Override Service.");
                } else if (this.f4250 == 3) {
                    AbstractC0542.m2097("BillingClientTesting", "Billing Override Service Client was already closed and can't be reused. Please create another instance.");
                    m3455(38, 26, AbstractC1093.m3479(-1, "Billing Override Service connection is disconnected."));
                } else {
                    this.f4250 = 1;
                    AbstractC0542.m2096("BillingClientTesting", "Starting Billing Override Service setup.");
                    this.f4251 = new ServiceConnectionC1110(i, this);
                    Intent intent = new Intent("com.google.android.apps.play.billingtestcompanion.BillingOverrideService.BIND");
                    intent.setPackage("com.google.android.apps.play.billingtestcompanion");
                    Context context = this.f4249;
                    List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
                    if (queryIntentServices == null || queryIntentServices.isEmpty()) {
                        i3 = 41;
                    } else {
                        ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
                        if (serviceInfo != null) {
                            String str = serviceInfo.packageName;
                            String str2 = serviceInfo.name;
                            if (!Objects.equals(str, "com.google.android.apps.play.billingtestcompanion") || str2 == null) {
                                AbstractC0542.m2097("BillingClientTesting", "The device doesn't have valid Play Billing Lab.");
                            } else {
                                ComponentName componentName = new ComponentName(str, str2);
                                Intent intent2 = new Intent(intent);
                                intent2.setComponent(componentName);
                                if (context.bindService(intent2, this.f4251, 1)) {
                                    AbstractC0542.m2096("BillingClientTesting", "Billing Override Service was bonded successfully.");
                                } else {
                                    AbstractC0542.m2097("BillingClientTesting", "Connection to Billing Override Service is blocked.");
                                }
                            }
                            i3 = 39;
                        }
                    }
                    this.f4250 = 0;
                    AbstractC0542.m2096("BillingClientTesting", "Billing Override Service unavailable on device.");
                    m3455(i3, 26, AbstractC1093.m3479(2, "Billing Override Service unavailable on device."));
                }
            }
        }
        m3509(r10, 0);
    }

    /* renamed from: ⁱי */
    public final void m3455(int i, int i2, C1115 c1115) {
        int i3 = AbstractC1104.f4313;
        C0627 m3492 = AbstractC1104.m3492(i, i2, c1115, null, EnumC0583.f2383);
        Objects.requireNonNull(m3492, "ApiFailure should not be null");
        this.f4352.ˊʻ(m3492);
    }

    /* renamed from: ﹳⁱ */
    public final InterfaceFutureC0614 m3456(int i) {
        if (m3451()) {
            return ʽʽ.ᴵᵔ(new C1090(i, 0, this));
        }
        AbstractC0542.m2097("BillingClientTesting", "Billing Override Service is not ready.");
        m3455(94, 28, AbstractC1093.m3479(-1, "Billing Override Service connection is disconnected."));
        return new C0638(0);
    }
}
