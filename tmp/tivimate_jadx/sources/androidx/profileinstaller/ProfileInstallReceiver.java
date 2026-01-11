package androidx.profileinstaller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import java.io.File;
import p000.AbstractC0757;
import p000.AbstractC0762;
import p028.ExecutorC1119;
import ﹳי.ʽ;

/* loaded from: classes.dex */
public class ProfileInstallReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Bundle extras;
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if ("androidx.profileinstaller.action.INSTALL_PROFILE".equals(action)) {
            AbstractC0757.m2770(context, new ExecutorC1119(1), new ʽ(this), true);
            return;
        }
        if ("androidx.profileinstaller.action.SKIP_FILE".equals(action)) {
            Bundle extras2 = intent.getExtras();
            if (extras2 != null) {
                String string = extras2.getString("EXTRA_SKIP_FILE_OPERATION");
                if (!"WRITE_SKIP_FILE".equals(string)) {
                    if ("DELETE_SKIP_FILE".equals(string)) {
                        new File(context.getFilesDir(), "profileinstaller_profileWrittenFor_lastUpdateTime.dat").delete();
                        setResultCode(11);
                        return;
                    }
                    return;
                }
                ʽ r7 = new ʽ(this);
                try {
                    AbstractC0757.m2771(context.getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 0), context.getFilesDir());
                    r7.ˏי(10, (Object) null);
                    return;
                } catch (PackageManager.NameNotFoundException e) {
                    r7.ˏי(7, e);
                    return;
                }
            }
            return;
        }
        if ("androidx.profileinstaller.action.SAVE_PROFILE".equals(action)) {
            ʽ r6 = new ʽ(this);
            if (Build.VERSION.SDK_INT < 24) {
                r6.ˏי(13, (Object) null);
                return;
            } else {
                Process.sendSignal(Process.myPid(), 10);
                r6.ˏי(12, (Object) null);
                return;
            }
        }
        if (!"androidx.profileinstaller.action.BENCHMARK_OPERATION".equals(action) || (extras = intent.getExtras()) == null) {
            return;
        }
        String string2 = extras.getString("EXTRA_BENCHMARK_OPERATION");
        ʽ r0 = new ʽ(this);
        if (!"DROP_SHADER_CACHE".equals(string2)) {
            r0.ˏי(16, (Object) null);
            return;
        }
        int i = Build.VERSION.SDK_INT;
        if (AbstractC0757.m2764(i >= 34 ? AbstractC0762.m2787(context).getCacheDir() : i >= 24 ? AbstractC0762.m2787(context).getCodeCacheDir() : i == 23 ? context.getCodeCacheDir() : context.getCacheDir())) {
            r0.ˏי(14, (Object) null);
        } else {
            r0.ˏי(15, (Object) null);
        }
    }
}
