package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import ar.tvplayer.core.domain.ـˆ;
import java.util.List;
import java.util.concurrent.TimeUnit;
import p240.C3210;
import p240.C3216;
import p240.C3223;
import p240.C3225;
import p240.C3228;
import p262.C3437;
import p286.AbstractC3586;
import p322.C3965;
import p322.C3978;
import p445.AbstractC5206;
import ʿי.ˈˏ;

/* loaded from: classes.dex */
public final class DiagnosticsWorker extends Worker {
    public DiagnosticsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    @Override // androidx.work.Worker
    /* renamed from: ˑﹳ */
    public final C3978 mo1022() {
        C3437 m7348 = C3437.m7348(this.f15301);
        WorkDatabase workDatabase = m7348.f13480;
        C3216 mo1026 = workDatabase.mo1026();
        C3225 mo1023 = workDatabase.mo1023();
        C3228 mo1024 = workDatabase.mo1024();
        C3223 mo1025 = workDatabase.mo1025();
        m7348.f13479.f15339.getClass();
        List list = (List) AbstractC3586.m7538(mo1026.f12275, true, false, new ˈˏ(1, System.currentTimeMillis() - TimeUnit.DAYS.toMillis(1L)));
        List list2 = (List) AbstractC3586.m7538(mo1026.f12275, true, false, new ـˆ(26));
        List list3 = (List) AbstractC3586.m7538(mo1026.f12275, true, false, new C3210(0));
        if (!list.isEmpty()) {
            C3965 m8127 = C3965.m8127();
            String str = AbstractC5206.f19557;
            m8127.m8134(str, "Recently completed work:\n\n");
            C3965.m8127().m8134(str, AbstractC5206.m10181(mo1023, mo1024, mo1025, list));
        }
        if (!list2.isEmpty()) {
            C3965 m81272 = C3965.m8127();
            String str2 = AbstractC5206.f19557;
            m81272.m8134(str2, "Running work:\n\n");
            C3965.m8127().m8134(str2, AbstractC5206.m10181(mo1023, mo1024, mo1025, list2));
        }
        if (!list3.isEmpty()) {
            C3965 m81273 = C3965.m8127();
            String str3 = AbstractC5206.f19557;
            m81273.m8134(str3, "Enqueued work:\n\n");
            C3965.m8127().m8134(str3, AbstractC5206.m10181(mo1023, mo1024, mo1025, list3));
        }
        return new C3978();
    }
}
