package p262;

import android.content.Context;
import android.content.SharedPreferences;
import p034.InterfaceC1195;
import p362.AbstractC4399;

/* renamed from: ـʾ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3421 extends AbstractC4399 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f13437 = 1;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Context f13438;

    public C3421(Context context) {
        super(9, 10);
        this.f13438 = context;
    }

    public C3421(Context context, int i, int i2) {
        super(i, i2);
        this.f13438 = context;
    }

    @Override // p362.AbstractC4399
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo7315(InterfaceC1195 interfaceC1195) {
        int i = this.f13437;
        Context context = this.f13438;
        switch (i) {
            case 0:
                if (this.f16360 >= 10) {
                    interfaceC1195.mo3721(new Object[]{"reschedule_needed", 1});
                    return;
                } else {
                    context.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
                    return;
                }
            default:
                interfaceC1195.mo3710("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
                SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.preferences", 0);
                if (sharedPreferences.contains("reschedule_needed") || sharedPreferences.contains("last_cancel_all_time_ms")) {
                    long j = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
                    long j2 = sharedPreferences.getBoolean("reschedule_needed", false) ? 1L : 0L;
                    interfaceC1195.mo3711();
                    try {
                        interfaceC1195.mo3721(new Object[]{"last_cancel_all_time_ms", Long.valueOf(j)});
                        interfaceC1195.mo3721(new Object[]{"reschedule_needed", Long.valueOf(j2)});
                        sharedPreferences.edit().clear().apply();
                        interfaceC1195.mo3713();
                    } finally {
                    }
                }
                SharedPreferences sharedPreferences2 = context.getSharedPreferences("androidx.work.util.id", 0);
                if (sharedPreferences2.contains("next_job_scheduler_id") || sharedPreferences2.contains("next_job_scheduler_id")) {
                    int i2 = sharedPreferences2.getInt("next_job_scheduler_id", 0);
                    int i3 = sharedPreferences2.getInt("next_alarm_manager_id", 0);
                    interfaceC1195.mo3711();
                    try {
                        interfaceC1195.mo3721(new Object[]{"next_job_scheduler_id", Integer.valueOf(i2)});
                        interfaceC1195.mo3721(new Object[]{"next_alarm_manager_id", Integer.valueOf(i3)});
                        sharedPreferences2.edit().clear().apply();
                        interfaceC1195.mo3713();
                        return;
                    } finally {
                    }
                }
                return;
        }
    }
}
