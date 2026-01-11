package p062;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import java.util.ArrayList;
import java.util.List;
import p152.AbstractC2444;
import p347.AbstractC4275;
import p430.AbstractC5099;
import p430.AbstractC5114;
import p430.C5097;

/* renamed from: ʾˈ.ˊʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1556 {
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C1576 m4348(Context context) {
        Object obj;
        String m8652;
        int myPid = Process.myPid();
        ArrayList m4349 = m4349(context);
        int size = m4349.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                obj = null;
                break;
            }
            obj = m4349.get(i);
            i++;
            if (((C1576) obj).f6164 == myPid) {
                break;
            }
        }
        C1576 c1576 = (C1576) obj;
        if (c1576 != null) {
            return c1576;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 > 33) {
            m8652 = Process.myProcessName();
        } else if ((i2 < 28 || (m8652 = Application.getProcessName()) == null) && (m8652 = AbstractC4275.m8652()) == null) {
            m8652 = "";
        }
        return new C1576(myPid, 0, m8652, false);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static ArrayList m4349(Context context) {
        List<ActivityManager.RunningAppProcessInfo> list;
        int i = context.getApplicationInfo().uid;
        String str = context.getApplicationInfo().processName;
        Object systemService = context.getSystemService("activity");
        ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
        if (activityManager == null || (list = activityManager.getRunningAppProcesses()) == null) {
            list = C5097.f19202;
        }
        ArrayList m10022 = AbstractC5099.m10022(list);
        ArrayList arrayList = new ArrayList();
        int size = m10022.size();
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            Object obj = m10022.get(i3);
            i3++;
            if (((ActivityManager.RunningAppProcessInfo) obj).uid == i) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(AbstractC5114.m10060(arrayList, 10));
        int size2 = arrayList.size();
        while (i2 < size2) {
            Object obj2 = arrayList.get(i2);
            i2++;
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = (ActivityManager.RunningAppProcessInfo) obj2;
            String str2 = runningAppProcessInfo.processName;
            arrayList2.add(new C1576(runningAppProcessInfo.pid, runningAppProcessInfo.importance, str2, AbstractC2444.m5562(str2, str)));
        }
        return arrayList2;
    }
}
