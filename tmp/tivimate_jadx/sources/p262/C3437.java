package p262;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import android.os.Trace;
import androidx.leanback.widget.ʻٴ;
import androidx.work.impl.WorkDatabase;
import ar.tvplayer.core.domain.ـˆ;
import ar.tvplayer.core.domain.ⁱˊ;
import ar.tvplayer.tv.TvPlayerApplication;
import com.google.android.gms.internal.measurement.AbstractC0473;
import com.google.android.gms.internal.measurement.ᵎ;
import java.util.Arrays;
import java.util.List;
import p013.C0913;
import p023.C1065;
import p029.C1120;
import p035.AbstractC1219;
import p035.C1230;
import p035.C1232;
import p035.C1239;
import p035.C1243;
import p035.ExecutorC1212;
import p089.C1759;
import p090.C1834;
import p105.RunnableC1926;
import p113.AbstractC1971;
import p113.RunnableC1965;
import p126.C2134;
import p126.InterfaceC2136;
import p153.C2469;
import p240.C3232;
import p316.AbstractC3906;
import p322.C3959;
import p322.C3965;
import p322.C3980;
import p322.InterfaceC3981;
import p324.AbstractC3999;
import p324.AbstractC4017;
import p329.InterfaceC4087;
import p340.AbstractC4235;
import p340.AbstractC4240;
import p340.InterfaceC4254;
import ʼⁱ.ˏⁱ;
import יˋ.ˈ;
import ᐧᵎ.ᵢי;
import ᴵˋ.ˊʻ;
import ﹳי.ʽ;

/* renamed from: ـʾ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3437 extends ˊʻ {

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static C3437 f13473;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static final Object f13474;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static C3437 f13475;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final ʽ f13476;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Context f13477;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public boolean f13478;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3980 f13479;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final WorkDatabase f13480;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public BroadcastReceiver.PendingResult f13481;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final List f13482;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C3417 f13483;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final ʻٴ f13484;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final ᵢי f13485;

    static {
        C3965.m8128("WorkManagerImpl");
        f13473 = null;
        f13475 = null;
        f13474 = new Object();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object, java.lang.String[], java.io.Serializable] */
    public C3437(Context context, final C3980 c3980, ᵢי r16, final WorkDatabase workDatabase, final List list, C3417 c3417, ʻٴ r20) {
        super(0);
        int i = 0;
        this.f13478 = false;
        Context applicationContext = context.getApplicationContext();
        if (Build.VERSION.SDK_INT >= 24 && AbstractC0473.m1925(applicationContext)) {
            throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
        }
        C3965 c3965 = new C3965(c3980.f15344);
        synchronized (C3965.f15286) {
            try {
                if (C3965.f15285 == null) {
                    C3965.f15285 = c3965;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f13477 = applicationContext;
        this.f13485 = r16;
        this.f13480 = workDatabase;
        this.f13483 = c3417;
        this.f13484 = r20;
        this.f13479 = c3980;
        this.f13482 = list;
        C2469 m8179 = AbstractC3999.m8179((AbstractC4017) r16.ᴵˊ);
        this.f13476 = new ʽ(workDatabase);
        final ExecutorC1212 executorC1212 = (ExecutorC1212) r16.ʾˋ;
        String str = AbstractC3430.f13452;
        c3417.m7309(new InterfaceC3436() { // from class: ـʾ.ﾞᴵ
            @Override // p262.InterfaceC3436
            /* renamed from: ˈ */
            public final void mo1037(C3232 c3232, boolean z) {
                executorC1212.execute(new RunnableC1926(list, c3232, c3980, workDatabase));
            }
        });
        r16.ʼˎ(new RunnableC1965(applicationContext, this));
        String str2 = AbstractC3428.f13450;
        if (AbstractC1971.m4957(applicationContext)) {
            AbstractC1219 abstractC1219 = workDatabase.mo1026().f12275;
            String[] strArr = {"workspec"};
            ـˆ r2 = new ـˆ(29);
            C1230 c1230 = abstractC1219.f4727;
            c1230 = c1230 == null ? null : c1230;
            int i2 = 1;
            String[] strArr2 = (String[]) Arrays.copyOf(strArr, 1);
            C1232 c1232 = c1230.f4763;
            C0913 m3808 = c1232.m3808(strArr2);
            ?? r10 = (String[]) m3808.f3836;
            InterfaceC4254 c1834 = new C1834(new ˏⁱ(c1232, (int[]) m3808.f3837, (Object) r10, (InterfaceC2136) null, 2));
            C1243 c1243 = c1230.f4764;
            C1239 c1239 = c1243 != null ? new C1239(c1243.f4830, r10, i) : null;
            if (c1239 != null) {
                InterfaceC4254[] interfaceC4254Arr = {c1834, c1239};
                int i3 = AbstractC4235.f15742;
                c1834 = new C1759(new C1120(1, interfaceC4254Arr), C2134.f8324, -2, i2, 1);
            }
            AbstractC3999.m8168(m8179, null, new ⁱˊ(new C1239(AbstractC4240.m8640(AbstractC4240.m8639(new C1239(new C1065(AbstractC4240.m8639(c1834), abstractC1219, r2), new AbstractC3906(4, null), 3))), (InterfaceC4087) new ˆʾ(applicationContext, (InterfaceC2136) null)), (InterfaceC2136) null, 24), 3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0018, code lost:
    
        r3 = r3.getApplicationContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001e, code lost:
    
        if (p262.C3437.f13475 != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0020, code lost:
    
        p262.C3437.f13475 = ʼ.ᵎﹶ.ᵔʾ(r3, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0026, code lost:
    
        p262.C3437.f13473 = p262.C3437.f13475;
     */
    /* renamed from: ˈⁱ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m7346(android.content.Context r3, p322.C3980 r4) {
        /*
            java.lang.Object r0 = p262.C3437.f13474
            monitor-enter(r0)
            ـʾ.ﹳᐧ r1 = p262.C3437.f13473     // Catch: java.lang.Throwable -> L14
            if (r1 == 0) goto L16
            ـʾ.ﹳᐧ r2 = p262.C3437.f13475     // Catch: java.lang.Throwable -> L14
            if (r2 != 0) goto Lc
            goto L16
        Lc:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L14
            java.lang.String r4 = "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L14
            throw r3     // Catch: java.lang.Throwable -> L14
        L14:
            r3 = move-exception
            goto L2c
        L16:
            if (r1 != 0) goto L2a
            android.content.Context r3 = r3.getApplicationContext()     // Catch: java.lang.Throwable -> L14
            ـʾ.ﹳᐧ r1 = p262.C3437.f13475     // Catch: java.lang.Throwable -> L14
            if (r1 != 0) goto L26
            ـʾ.ﹳᐧ r3 = ʼ.ᵎﹶ.ᵔʾ(r3, r4)     // Catch: java.lang.Throwable -> L14
            p262.C3437.f13475 = r3     // Catch: java.lang.Throwable -> L14
        L26:
            ـʾ.ﹳᐧ r3 = p262.C3437.f13475     // Catch: java.lang.Throwable -> L14
            p262.C3437.f13473 = r3     // Catch: java.lang.Throwable -> L14
        L2a:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L14
            return
        L2c:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L14
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p262.C3437.m7346(android.content.Context, ᴵˋ.ⁱˊ):void");
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public static C3437 m7347() {
        synchronized (f13474) {
            try {
                C3437 c3437 = f13473;
                if (c3437 != null) {
                    return c3437;
                }
                return f13475;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public static C3437 m7348(Context context) {
        C3437 m7347;
        synchronized (f13474) {
            try {
                m7347 = m7347();
                if (m7347 == null) {
                    TvPlayerApplication applicationContext = context.getApplicationContext();
                    if (!(applicationContext instanceof InterfaceC3981)) {
                        throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                    }
                    ((InterfaceC3981) applicationContext).getClass();
                    m7346(applicationContext, new C3980());
                    m7347 = m7348(applicationContext);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return m7347;
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final C3959 m7349(String str) {
        return ᵎ.ᵔʾ(this.f13479.f15340, "CancelWorkByName_".concat(str), (ExecutorC1212) this.f13485.ʾˋ, new ʽˋ.ـˆ(str, 4, this));
    }

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final void m7350() {
        C3959 c3959 = this.f13479.f15340;
        ˈ r2 = new ˈ(10, this);
        boolean z = com.bumptech.glide.ʽ.ˉˆ();
        if (z) {
            try {
                c3959.getClass();
                Trace.beginSection(com.bumptech.glide.ʽ.ˊʻ("ReschedulingWork"));
            } finally {
                if (z) {
                    Trace.endSection();
                }
            }
        }
        r2.ʽ();
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final void m7351() {
        synchronized (f13474) {
            try {
                this.f13478 = true;
                BroadcastReceiver.PendingResult pendingResult = this.f13481;
                if (pendingResult != null) {
                    pendingResult.finish();
                    this.f13481 = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
