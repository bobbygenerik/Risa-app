package p302;

import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import p158.AbstractC2541;
import p322.C3965;

/* renamed from: ᐧˉ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3706 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String f14456 = C3965.m8128("SystemJobScheduler");

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final JobScheduler m7742(Context context) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        return Build.VERSION.SDK_INT >= 34 ? AbstractC2541.m5692(jobScheduler) : jobScheduler;
    }
}
