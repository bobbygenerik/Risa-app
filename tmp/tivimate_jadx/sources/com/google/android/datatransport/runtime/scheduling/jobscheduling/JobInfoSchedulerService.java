package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import java.util.concurrent.Executor;
import p003.RunnableC0786;
import p070.C1629;
import p139.C2356;
import p139.C2357;
import p290.RunnableC3605;
import p297.AbstractC3692;
import ˑי.ʽ;

/* loaded from: classes.dex */
public class JobInfoSchedulerService extends JobService {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final /* synthetic */ int f1715 = 0;

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i = jobParameters.getExtras().getInt("priority");
        int i2 = jobParameters.getExtras().getInt("attemptNumber");
        C2357.m5443(getApplicationContext());
        ʽ m5441 = C2356.m5441();
        m5441.ʽʽ(string);
        m5441.ʽʽ = AbstractC3692.m7728(i);
        if (string2 != null) {
            m5441.ᴵˊ = Base64.decode(string2, 0);
        }
        C1629 c1629 = C2357.m5444().f9115;
        ((Executor) c1629.f6484).execute(new RunnableC3605(c1629, m5441.ᵔﹳ(), i2, new RunnableC0786(this, 24, jobParameters)));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
