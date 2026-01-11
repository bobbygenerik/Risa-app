package p113;

import android.os.Build;
import androidx.work.impl.WorkDatabase;
import ar.tvplayer.core.domain.ـˆ;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p035.AbstractC1220;
import p240.C3214;
import p240.C3216;
import p240.C3221;
import p262.C3417;
import p262.C3419;
import p262.C3437;
import p262.C3438;
import p262.InterfaceC3425;
import p286.AbstractC3586;
import p307.AbstractC3740;
import p322.AbstractC3964;
import p322.C3965;
import p322.C3980;
import p322.EnumC3961;
import p430.AbstractC5099;
import p430.AbstractC5106;

/* renamed from: ˆﹶ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1963 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final int[] f7806 = {13, 15, 14};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final void m4950(WorkDatabase workDatabase, C3980 c3980, C3438 c3438) {
        int i;
        if (Build.VERSION.SDK_INT < 24) {
            return;
        }
        ArrayList m10046 = AbstractC5106.m10046(c3438);
        int i2 = 0;
        while (!m10046.isEmpty()) {
            List list = ((C3438) AbstractC5099.m10019(m10046)).f13490;
            if (list.isEmpty()) {
                i = 0;
            } else {
                Iterator it = list.iterator();
                i = 0;
                while (it.hasNext()) {
                    if (((AbstractC3964) it.next()).f15283.f12327.m8135() && (i = i + 1) < 0) {
                        throw new ArithmeticException("Count overflow has happened.");
                    }
                }
            }
            i2 += i;
        }
        if (i2 == 0) {
            return;
        }
        int intValue = ((Number) AbstractC3586.m7538(workDatabase.mo1026().f12275, true, false, new ـˆ(28))).intValue();
        int i3 = c3980.f15338;
        if (intValue + i2 > i3) {
            throw new IllegalArgumentException(AbstractC1220.m3782(AbstractC3740.m7944("Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: ", i3, ";\nalready enqueued count: ", intValue, ";\ncurrent enqueue operation count: "), i2, ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed."));
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final void m4951(C3437 c3437, String str) {
        C3419 m7308;
        WorkDatabase workDatabase = c3437.f13480;
        C3216 mo1026 = workDatabase.mo1026();
        C3221 mo1028 = workDatabase.mo1028();
        ArrayList m10046 = AbstractC5106.m10046(str);
        while (!m10046.isEmpty()) {
            String str2 = (String) AbstractC5099.m10019(m10046);
            EnumC3961 m7049 = mo1026.m7049(str2);
            if (m7049 != EnumC3961.f15273 && m7049 != EnumC3961.f15275) {
                ((Number) AbstractC3586.m7538(mo1026.f12275, false, true, new C3214(11, str2))).intValue();
            }
            m10046.addAll(mo1028.m7057(str2));
        }
        C3417 c3417 = c3437.f13483;
        synchronized (c3417.f13417) {
            C3965.m8127().m8133(C3417.f13411, "Processor cancelling " + str);
            c3417.f13412.add(str);
            m7308 = c3417.m7308(str);
        }
        C3417.m7303(str, m7308, 1);
        Iterator it = c3437.f13482.iterator();
        while (it.hasNext()) {
            ((InterfaceC3425) it.next()).mo7318(str);
        }
    }
}
