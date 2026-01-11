package p113;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import p152.AbstractC2444;
import p322.C3965;
import ᴵˋ.ˊʻ;

/* renamed from: ˆﹶ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1971 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String f7826 = C3965.m8128("ProcessUtils");

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final boolean m4957(Context context) {
        String str;
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            str = AbstractC1977.m4963();
        } else {
            str = null;
            try {
                Method declaredMethod = Class.forName("android.app.ActivityThread", false, ˊʻ.class.getClassLoader()).getDeclaredMethod("currentProcessName", null);
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(null, null);
                if (invoke instanceof String) {
                    str = (String) invoke;
                }
            } catch (Throwable th) {
                C3965.m8127().m8132(f7826, "Unable to check ActivityThread for processName", th);
            }
            int myPid = Process.myPid();
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
            if (runningAppProcesses != null) {
                Iterator<T> it = runningAppProcesses.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it.next();
                    if (((ActivityManager.RunningAppProcessInfo) obj).pid == myPid) {
                        break;
                    }
                }
                ActivityManager.RunningAppProcessInfo runningAppProcessInfo = (ActivityManager.RunningAppProcessInfo) obj;
                if (runningAppProcessInfo != null) {
                    str = runningAppProcessInfo.processName;
                }
            }
        }
        return AbstractC2444.m5562(str, context.getApplicationInfo().processName);
    }
}
