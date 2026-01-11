package p447;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.os.Build;
import android.os.PersistableBundle;
import android.support.v4.media.session.AbstractC0001;
import p296.AbstractC3659;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ﹳᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5347 extends AbstractC5308 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public JobScheduler f20357;

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final void m10731(long j) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        m10526();
        m10252();
        JobScheduler jobScheduler = this.f20357;
        if (jobScheduler != null && jobScheduler.getPendingJob("measurement-client".concat(String.valueOf(c5322.f20184.getPackageName())).hashCode()) != null) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20350.m10217("[sgtm] There's an existing pending job, skip this schedule.");
            return;
        }
        int m10732 = m10732();
        if (m10732 != 2) {
            C5344 c53442 = c5322.f20193;
            C5322.m10556(c53442);
            c53442.f20350.m10216(AbstractC0001.m10(m10732), "[sgtm] Not eligible for Scion upload");
            return;
        }
        C5344 c53443 = c5322.f20193;
        C5322.m10556(c53443);
        c53443.f20350.m10216(Long.valueOf(j), "[sgtm] Scheduling Scion upload, millis");
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("action", "com.google.android.gms.measurement.SCION_UPLOAD");
        JobInfo build = new JobInfo.Builder("measurement-client".concat(String.valueOf(c5322.f20184.getPackageName())).hashCode(), new ComponentName(c5322.f20184, "com.google.android.gms.measurement.AppMeasurementJobService")).setRequiredNetworkType(1).setMinimumLatency(j).setOverrideDeadline(j + j).setExtras(persistableBundle).build();
        JobScheduler jobScheduler2 = this.f20357;
        AbstractC3659.m7687(jobScheduler2);
        int schedule = jobScheduler2.schedule(build);
        C5344 c53444 = c5322.f20193;
        C5322.m10556(c53444);
        c53444.f20350.m10216(schedule == 1 ? "SUCCESS" : "FAILURE", "[sgtm] Scion upload job scheduled with result");
    }

    @Override // p447.AbstractC5308
    /* renamed from: ˋˊ */
    public final boolean mo10296() {
        return true;
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public final int m10732() {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        m10526();
        m10252();
        if (this.f20357 == null) {
            return 7;
        }
        Boolean m10581 = c5322.f20189.m10581("google_analytics_sgtm_upload_enabled");
        if (!(m10581 == null ? false : m10581.booleanValue())) {
            return 8;
        }
        if (c5322.m10566().f19784 < 119000) {
            return 6;
        }
        if (!C5339.m10666(c5322.f20184, "com.google.android.gms.measurement.AppMeasurementJobService")) {
            return 3;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            return !c5322.m10569().m10293() ? 5 : 2;
        }
        return 4;
    }
}
