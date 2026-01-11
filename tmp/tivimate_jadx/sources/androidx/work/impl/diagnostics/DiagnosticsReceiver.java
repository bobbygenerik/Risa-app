package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.workers.DiagnosticsWorker;
import java.util.Collections;
import java.util.List;
import p262.C3437;
import p262.C3438;
import p322.AbstractC3970;
import p322.C3950;
import p322.C3965;

/* loaded from: classes.dex */
public class DiagnosticsReceiver extends BroadcastReceiver {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String f1587 = C3965.m8128("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        C3965 m8127 = C3965.m8127();
        String str = f1587;
        m8127.m8133(str, "Requesting diagnostics");
        try {
            C3437 m7348 = C3437.m7348(context);
            List singletonList = Collections.singletonList((C3950) new AbstractC3970(DiagnosticsWorker.class).m8139());
            if (singletonList.isEmpty()) {
                throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
            }
            new C3438(m7348, null, 2, singletonList, 0).m7353();
        } catch (IllegalStateException e) {
            C3965.m8127().m8130(str, "WorkManager is not initialized", e);
        }
    }
}
