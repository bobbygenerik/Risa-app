package p447;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobScheduler;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.google.android.gms.internal.measurement.AbstractC0339;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ʻˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5214 extends AbstractC5277 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final AlarmManager f19580;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public Integer f19581;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C5244 f19582;

    public C5214(C5337 c5337) {
        super(c5337);
        this.f19580 = (AlarmManager) ((C5322) ((ᵎﹶ) this).ʾˋ).f20184.getSystemService("alarm");
    }

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final void m10189() {
        m10466();
        C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
        C5322.m10556(c5344);
        c5344.f20350.m10217("Unscheduling upload");
        AlarmManager alarmManager = this.f19580;
        if (alarmManager != null) {
            alarmManager.cancel(m10192());
        }
        m10193().m10586();
        if (Build.VERSION.SDK_INT >= 24) {
            m10194();
        }
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public final int m10190() {
        if (this.f19581 == null) {
            this.f19581 = Integer.valueOf("measurement".concat(String.valueOf(((C5322) ((ᵎﹶ) this).ʾˋ).f20184.getPackageName())).hashCode());
        }
        return this.f19581.intValue();
    }

    @Override // p447.AbstractC5277
    /* renamed from: ˋˊ, reason: contains not printable characters */
    public final void mo10191() {
        AlarmManager alarmManager = this.f19580;
        if (alarmManager != null) {
            alarmManager.cancel(m10192());
        }
        if (Build.VERSION.SDK_INT >= 24) {
            m10194();
        }
    }

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public final PendingIntent m10192() {
        Context context = ((C5322) ((ᵎﹶ) this).ʾˋ).f20184;
        return PendingIntent.getBroadcast(context, 0, new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), AbstractC0339.f1993);
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public final AbstractC5328 m10193() {
        if (this.f19582 == null) {
            this.f19582 = new C5244(this, this.f19910.f20305, 1);
        }
        return this.f19582;
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final void m10194() {
        JobScheduler jobScheduler = (JobScheduler) ((C5322) ((ᵎﹶ) this).ʾˋ).f20184.getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(m10190());
        }
    }
}
