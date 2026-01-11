package p302;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.leanback.widget.ˉˆ;
import androidx.lifecycle.C0185;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.SystemJobService;
import ar.tvplayer.core.domain.ـˆ;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import p035.AbstractC1220;
import p240.C3212;
import p240.C3214;
import p240.C3216;
import p240.C3217;
import p240.C3223;
import p240.C3224;
import p240.C3229;
import p240.C3231;
import p240.C3232;
import p240.C3233;
import p262.InterfaceC3425;
import p286.AbstractC3586;
import p322.C3965;
import p322.C3980;
import p322.EnumC3961;
import p430.AbstractC5096;
import p430.AbstractC5099;
import ˉᵎ.ⁱˊ;

/* renamed from: ᐧˉ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3704 implements InterfaceC3425 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final String f14446 = C3965.m8128("SystemJobScheduler");

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C3705 f14447;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Context f14448;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final WorkDatabase f14449;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final JobScheduler f14450;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C3980 f14451;

    public C3704(Context context, WorkDatabase workDatabase, C3980 c3980) {
        JobScheduler m7742 = AbstractC3706.m7742(context);
        C3705 c3705 = new C3705(context, c3980.f15339, c3980.f15347);
        this.f14448 = context;
        this.f14450 = m7742;
        this.f14447 = c3705;
        this.f14449 = workDatabase;
        this.f14451 = c3980;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m7736(JobScheduler jobScheduler, int i) {
        try {
            jobScheduler.cancel(i);
        } catch (Throwable th) {
            C3965.m8127().m8130(f14446, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i)), th);
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static ArrayList m7737(Context context, JobScheduler jobScheduler, String str) {
        ArrayList m7739 = m7739(context, jobScheduler);
        if (m7739 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        int size = m7739.size();
        int i = 0;
        while (i < size) {
            Object obj = m7739.get(i);
            i++;
            JobInfo jobInfo = (JobInfo) obj;
            C3232 m7738 = m7738(jobInfo);
            if (m7738 != null && str.equals(m7738.f12346)) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static C3232 m7738(JobInfo jobInfo) {
        PersistableBundle extras = jobInfo.getExtras();
        if (extras == null) {
            return null;
        }
        try {
            if (extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return new C3232(extras.getInt("EXTRA_WORK_SPEC_GENERATION", 0), extras.getString("EXTRA_WORK_SPEC_ID"));
            }
            return null;
        } catch (NullPointerException unused) {
            return null;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static ArrayList m7739(Context context, JobScheduler jobScheduler) {
        List<JobInfo> list;
        String str = AbstractC3706.f14456;
        try {
            list = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            C3965.m8127().m8130(AbstractC3706.f14456, "getAllPendingJobs() is not reliable on this device.", th);
            list = null;
        }
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ComponentName componentName = new ComponentName(context, (Class<?>) SystemJobService.class);
        for (JobInfo jobInfo : list) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    @Override // p262.InterfaceC3425
    /* renamed from: ʽ */
    public final boolean mo7317() {
        return true;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m7740(C3231 c3231, int i) {
        List<JobInfo> list;
        String str;
        JobInfo m7741 = this.f14447.m7741(c3231, i);
        C3965 m8127 = C3965.m8127();
        StringBuilder sb = new StringBuilder("Scheduling work ID ");
        String str2 = c3231.f12341;
        sb.append(str2);
        sb.append("Job ID ");
        sb.append(i);
        String sb2 = sb.toString();
        String str3 = f14446;
        m8127.m8133(str3, sb2);
        try {
            if (this.f14450.schedule(m7741) == 0) {
                C3965.m8127().m8131(str3, "Unable to schedule work ID " + str2);
                if (c3231.f12339 && c3231.f12342 == 1) {
                    c3231.f12339 = false;
                    C3965.m8127().m8133(str3, "Scheduling a non-expedited job (work ID " + str2 + ")");
                    m7740(c3231, i);
                }
            }
        } catch (IllegalStateException e) {
            String str4 = AbstractC3706.f14456;
            int i2 = Build.VERSION.SDK_INT;
            int i3 = i2 >= 31 ? 150 : 100;
            int size = ((List) AbstractC3586.m7538(this.f14449.mo1026().f12275, true, false, new ـˆ(25))).size();
            Context context = this.f14448;
            String str5 = "<faulty JobScheduler failed to getPendingJobs>";
            if (i2 >= 34) {
                JobScheduler m7742 = AbstractC3706.m7742(context);
                String str6 = null;
                try {
                    list = m7742.getAllPendingJobs();
                } catch (Throwable th) {
                    C3965.m8127().m8130(AbstractC3706.f14456, "getAllPendingJobs() is not reliable on this device.", th);
                    list = null;
                }
                if (list != null) {
                    ArrayList m7739 = m7739(context, m7742);
                    int size2 = m7739 != null ? list.size() - m7739.size() : 0;
                    if (size2 == 0) {
                        str = null;
                    } else {
                        str = size2 + " of which are not owned by WorkManager";
                    }
                    ArrayList m77392 = m7739(context, (JobScheduler) context.getSystemService("jobscheduler"));
                    int size3 = m77392 != null ? m77392.size() : 0;
                    if (size3 != 0) {
                        str6 = size3 + " from WorkManager in the default namespace";
                    }
                    str5 = AbstractC5099.m10034(AbstractC5096.m9997(new String[]{list.size() + " jobs in \"androidx.work.systemjobscheduler\" namespace", str, str6}), ",\n", null, null, null, 62);
                }
            } else {
                ArrayList m77393 = m7739(context, AbstractC3706.m7742(context));
                if (m77393 != null) {
                    str5 = m77393.size() + " jobs from WorkManager";
                }
            }
            StringBuilder sb3 = new StringBuilder("JobScheduler ");
            sb3.append(i3);
            sb3.append(" job limit exceeded.\nIn JobScheduler there are ");
            sb3.append(str5);
            sb3.append(".\nThere are ");
            sb3.append(size);
            sb3.append(" jobs tracked by WorkManager's database;\nthe Configuration limit is ");
            String m3784 = AbstractC1220.m3784(sb3, this.f14451.f15342, '.');
            C3965.m8127().m8129(str3, m3784);
            throw new IllegalStateException(m3784, e);
        } catch (Throwable th2) {
            C3965.m8127().m8130(str3, "Unable to schedule " + c3231, th2);
        }
    }

    @Override // p262.InterfaceC3425
    /* renamed from: ⁱˊ */
    public final void mo7318(String str) {
        Context context = this.f14448;
        JobScheduler jobScheduler = this.f14450;
        ArrayList m7737 = m7737(context, jobScheduler, str);
        if (m7737 == null || m7737.isEmpty()) {
            return;
        }
        int size = m7737.size();
        int i = 0;
        while (i < size) {
            Object obj = m7737.get(i);
            i++;
            m7736(jobScheduler, ((Integer) obj).intValue());
        }
        AbstractC3586.m7538(this.f14449.mo1025().f12289, false, true, new C3214(4, str));
    }

    @Override // p262.InterfaceC3425
    /* renamed from: ﹳٴ */
    public final void mo7319(C3231... c3231Arr) {
        int intValue;
        boolean z;
        ArrayList m7737;
        int intValue2;
        WorkDatabase workDatabase = this.f14449;
        final ˉˆ r2 = new ˉˆ(19, workDatabase);
        WorkDatabase workDatabase2 = (WorkDatabase) r2.ᴵˊ;
        int length = c3231Arr.length;
        boolean z2 = false;
        int i = 0;
        while (i < length) {
            C3231 c3231 = c3231Arr[i];
            workDatabase.m3766();
            try {
                C3216 mo1026 = workDatabase.mo1026();
                String str = c3231.f12341;
                C3231 m7050 = mo1026.m7050(str);
                String str2 = f14446;
                if (m7050 == null) {
                    C3965.m8127().m8131(str2, "Skipping scheduling " + str + " because it's no longer in the DB");
                    workDatabase.m3765();
                } else if (m7050.f12340 != EnumC3961.f15274) {
                    C3965.m8127().m8131(str2, "Skipping scheduling " + str + " because it is no longer enqueued");
                    workDatabase.m3765();
                } else {
                    C3232 c3232 = ⁱˊ.ʼᐧ(c3231);
                    int i2 = c3232.f12345;
                    String str3 = c3232.f12346;
                    C3223 mo1025 = workDatabase.mo1025();
                    mo1025.getClass();
                    C3212 c3212 = (C3212) AbstractC3586.m7538(mo1025.f12289, true, z2, new C3217(i2, 0, str3));
                    C3980 c3980 = this.f14451;
                    if (c3212 != null) {
                        intValue = c3212.f12264;
                    } else {
                        c3980.getClass();
                        final int i3 = c3980.f15336;
                        Callable callable = new Callable() { // from class: ˆﹶ.ˈ
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                WorkDatabase workDatabase3 = (WorkDatabase) r2.ᴵˊ;
                                Long m7058 = workDatabase3.mo1027().m7058("next_job_scheduler_id");
                                int i4 = 0;
                                int longValue = m7058 != null ? (int) m7058.longValue() : 0;
                                int i5 = longValue == Integer.MAX_VALUE ? 0 : longValue + 1;
                                C3224 mo1027 = workDatabase3.mo1027();
                                AbstractC3586.m7538(mo1027.f12291, false, true, new C3229(mo1027, 1, new C3233("next_job_scheduler_id", Long.valueOf(i5))));
                                if (longValue < 0 || longValue > i3) {
                                    C3224 mo10272 = workDatabase3.mo1027();
                                    AbstractC3586.m7538(mo10272.f12291, false, true, new C3229(mo10272, 1, new C3233("next_job_scheduler_id", Long.valueOf(1))));
                                } else {
                                    i4 = longValue;
                                }
                                return Integer.valueOf(i4);
                            }
                        };
                        workDatabase2.getClass();
                        intValue = ((Number) workDatabase2.m3758(new C0185(12, callable))).intValue();
                    }
                    if (c3212 == null) {
                        C3212 c32122 = new C3212(i2, intValue, str3);
                        C3223 mo10252 = workDatabase.mo1025();
                        AbstractC3586.m7538(mo10252.f12289, false, true, new C3229(mo10252, 2, c32122));
                    }
                    m7740(c3231, intValue);
                    if (Build.VERSION.SDK_INT != 23 || (m7737 = m7737(this.f14448, this.f14450, str)) == null) {
                        z = false;
                    } else {
                        int indexOf = m7737.indexOf(Integer.valueOf(intValue));
                        if (indexOf >= 0) {
                            m7737.remove(indexOf);
                        }
                        if (m7737.isEmpty()) {
                            z = false;
                            c3980.getClass();
                            final int i4 = c3980.f15336;
                            Callable callable2 = new Callable() { // from class: ˆﹶ.ˈ
                                @Override // java.util.concurrent.Callable
                                public final Object call() {
                                    WorkDatabase workDatabase3 = (WorkDatabase) r2.ᴵˊ;
                                    Long m7058 = workDatabase3.mo1027().m7058("next_job_scheduler_id");
                                    int i42 = 0;
                                    int longValue = m7058 != null ? (int) m7058.longValue() : 0;
                                    int i5 = longValue == Integer.MAX_VALUE ? 0 : longValue + 1;
                                    C3224 mo1027 = workDatabase3.mo1027();
                                    AbstractC3586.m7538(mo1027.f12291, false, true, new C3229(mo1027, 1, new C3233("next_job_scheduler_id", Long.valueOf(i5))));
                                    if (longValue < 0 || longValue > i4) {
                                        C3224 mo10272 = workDatabase3.mo1027();
                                        AbstractC3586.m7538(mo10272.f12291, false, true, new C3229(mo10272, 1, new C3233("next_job_scheduler_id", Long.valueOf(1))));
                                    } else {
                                        i42 = longValue;
                                    }
                                    return Integer.valueOf(i42);
                                }
                            };
                            workDatabase2.getClass();
                            intValue2 = ((Number) workDatabase2.m3758(new C0185(12, callable2))).intValue();
                        } else {
                            z = false;
                            intValue2 = ((Integer) m7737.get(0)).intValue();
                        }
                        m7740(c3231, intValue2);
                    }
                    workDatabase.m3765();
                    i++;
                    z2 = z;
                }
                workDatabase.m3769();
                z = z2;
                i++;
                z2 = z;
            } finally {
                workDatabase.m3769();
            }
        }
    }
}
