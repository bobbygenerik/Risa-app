package p252;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import java.util.ArrayList;
import java.util.List;
import p122.AbstractC2037;
import p122.C2054;
import p152.AbstractC2444;
import p430.AbstractC5099;
import p430.AbstractC5114;
import p430.C5097;

/* renamed from: יˎ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3310 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C3310 f12736 = new Object();

    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, ˈˋ.ʿ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static ArrayList m7125(Context context) {
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
            ?? obj3 = new Object();
            String str2 = runningAppProcessInfo.processName;
            if (str2 == null) {
                throw new NullPointerException("Null processName");
            }
            obj3.f8017 = str2;
            obj3.f8016 = runningAppProcessInfo.pid;
            byte b = (byte) (obj3.f8015 | 1);
            obj3.f8013 = runningAppProcessInfo.importance;
            obj3.f8015 = (byte) (b | 2);
            obj3.f8014 = AbstractC2444.m5562(str2, str);
            obj3.f8015 = (byte) (obj3.f8015 | 4);
            arrayList2.add(obj3.m5074());
        }
        return arrayList2;
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, ˈˋ.ʿ] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC2037 m7126(Context context) {
        Object obj;
        String str;
        int myPid = Process.myPid();
        ArrayList m7125 = m7125(context);
        int size = m7125.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                obj = null;
                break;
            }
            obj = m7125.get(i);
            i++;
            if (((C2054) ((AbstractC2037) obj)).f8020 == myPid) {
                break;
            }
        }
        AbstractC2037 abstractC2037 = (AbstractC2037) obj;
        if (abstractC2037 != null) {
            return abstractC2037;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 > 33) {
            str = Process.myProcessName();
        } else if (i2 < 28 || (str = Application.getProcessName()) == null) {
            str = "";
        }
        ?? obj2 = new Object();
        obj2.f8017 = str;
        obj2.f8016 = myPid;
        byte b = (byte) (obj2.f8015 | 1);
        obj2.f8013 = 0;
        obj2.f8014 = false;
        obj2.f8015 = (byte) (((byte) (b | 2)) | 4);
        return obj2.m5074();
    }
}
