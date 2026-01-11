package androidx.work.impl.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import p113.RunnableC1965;
import p322.C3965;

/* loaded from: classes.dex */
public class ForceStopRunnable$BroadcastReceiver extends BroadcastReceiver {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String f1592 = C3965.m8128("ForceStopRunnable$Rcvr");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null || !"ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
            return;
        }
        if (C3965.m8127().f15287 <= 2) {
            String str = f1592;
        }
        RunnableC1965.m4952(context);
    }
}
