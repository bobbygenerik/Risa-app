package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.os.Looper;
import android.os.PersistableBundle;
import com.google.android.gms.internal.measurement.AbstractC0473;
import com.parse.ˊﾞ;
import java.util.Arrays;
import java.util.HashMap;
import p028.AbstractC1116;
import p032.AbstractC1158;
import p137.AbstractC2305;
import p171.C2640;
import p240.C3232;
import p262.C3417;
import p262.C3432;
import p262.C3433;
import p262.C3437;
import p262.InterfaceC3436;
import p322.C3959;
import p322.C3965;
import ᐧᵎ.ᵢי;

/* loaded from: classes.dex */
public class SystemJobService extends JobService implements InterfaceC3436 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final String f1582 = C3965.m8128("SystemJobService");

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C3437 f1584;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C3433 f1585;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final HashMap f1586 = new HashMap();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C2640 f1583 = new C2640(1);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C3232 m1035(JobParameters jobParameters) {
        try {
            PersistableBundle extras = jobParameters.getExtras();
            if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new C3232(extras.getInt("EXTRA_WORK_SPEC_GENERATION"), extras.getString("EXTRA_WORK_SPEC_ID"));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m1036(String str) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException(AbstractC2305.m5378("Cannot invoke ", str, " on a background thread"));
        }
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        try {
            C3437 m7348 = C3437.m7348(getApplicationContext());
            this.f1584 = m7348;
            C3417 c3417 = m7348.f13483;
            this.f1585 = new C3433(c3417, 0, m7348.f13485);
            c3417.m7309(this);
        } catch (IllegalStateException e) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
            }
            C3965.m8127().m8131(f1582, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.");
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        C3437 c3437 = this.f1584;
        if (c3437 != null) {
            c3437.f13483.m7306(this);
        }
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        C3959 c3959;
        m1036("onStartJob");
        C3437 c3437 = this.f1584;
        String str = f1582;
        if (c3437 == null) {
            C3965.m8127().m8133(str, "WorkManager is not initialized; requesting retry.");
            jobFinished(jobParameters, true);
            return false;
        }
        C3232 m1035 = m1035(jobParameters);
        if (m1035 == null) {
            C3965.m8127().m8129(str, "WorkSpec id not found!");
            return false;
        }
        HashMap hashMap = this.f1586;
        if (hashMap.containsKey(m1035)) {
            C3965.m8127().m8133(str, "Job is already being executed by SystemJobService: " + m1035);
            return false;
        }
        C3965.m8127().m8133(str, "onStartJob for " + m1035);
        hashMap.put(m1035, jobParameters);
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            c3959 = new C3959();
            if (AbstractC0473.m1915(jobParameters) != null) {
                Arrays.asList(AbstractC0473.m1915(jobParameters));
            }
            if (AbstractC0473.m1913(jobParameters) != null) {
                Arrays.asList(AbstractC0473.m1913(jobParameters));
            }
            if (i >= 28) {
                AbstractC1116.m3532(jobParameters);
            }
        } else {
            c3959 = null;
        }
        C3433 c3433 = this.f1585;
        ((ᵢי) c3433.f13456).ʼˎ(new ˊﾞ(c3433, this.f1583.m5898(m1035), c3959, 6));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        boolean contains;
        m1036("onStopJob");
        if (this.f1584 == null) {
            C3965.m8127().m8133(f1582, "WorkManager is not initialized; requesting retry.");
            return true;
        }
        C3232 m1035 = m1035(jobParameters);
        if (m1035 == null) {
            C3965.m8127().m8129(f1582, "WorkSpec id not found!");
            return false;
        }
        C3965.m8127().m8133(f1582, "onStopJob for " + m1035);
        this.f1586.remove(m1035);
        C3432 m5897 = this.f1583.m5897(m1035);
        if (m5897 != null) {
            this.f1585.m7335(m5897, Build.VERSION.SDK_INT >= 31 ? AbstractC1158.m3614(jobParameters) : -512);
        }
        C3417 c3417 = this.f1584.f13483;
        String str = m1035.f12346;
        synchronized (c3417.f13417) {
            contains = c3417.f13412.contains(str);
        }
        return !contains;
    }

    @Override // p262.InterfaceC3436
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo1037(C3232 c3232, boolean z) {
        m1036("onExecuted");
        C3965.m8127().m8133(f1582, c3232.f12346 + " executed on JobScheduler");
        JobParameters jobParameters = (JobParameters) this.f1586.remove(c3232);
        this.f1583.m5897(c3232);
        if (jobParameters != null) {
            jobFinished(jobParameters, z);
        }
    }
}
