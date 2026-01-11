package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import p262.C3437;
import p322.C3965;

/* loaded from: classes.dex */
public class RescheduleReceiver extends BroadcastReceiver {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String f1581 = C3965.m8128("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        C3965.m8127().m8133(f1581, "Received intent " + intent);
        try {
            C3437 m7348 = C3437.m7348(context);
            BroadcastReceiver.PendingResult goAsync = goAsync();
            m7348.getClass();
            synchronized (C3437.f13474) {
                try {
                    BroadcastReceiver.PendingResult pendingResult = m7348.f13481;
                    if (pendingResult != null) {
                        pendingResult.finish();
                    }
                    m7348.f13481 = goAsync;
                    if (m7348.f13478) {
                        goAsync.finish();
                        m7348.f13481 = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (IllegalStateException e) {
            C3965.m8127().m8130(f1581, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
        }
    }
}
