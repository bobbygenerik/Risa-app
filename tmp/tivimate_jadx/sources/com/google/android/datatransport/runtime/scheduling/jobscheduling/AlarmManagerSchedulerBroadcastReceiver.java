package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import java.util.concurrent.Executor;
import p070.C1629;
import p139.C2356;
import p139.C2357;
import p290.RunnableC3605;
import p297.AbstractC3692;
import ʿˋ.ˉٴ;
import ˑי.ʽ;

/* loaded from: classes.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final /* synthetic */ int f1714 = 0;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int intValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i = intent.getExtras().getInt("attemptNumber");
        C2357.m5443(context);
        ʽ m5441 = C2356.m5441();
        m5441.ʽʽ(queryParameter);
        m5441.ʽʽ = AbstractC3692.m7728(intValue);
        if (queryParameter2 != null) {
            m5441.ᴵˊ = Base64.decode(queryParameter2, 0);
        }
        C1629 c1629 = C2357.m5444().f9115;
        ((Executor) c1629.f6484).execute(new RunnableC3605(c1629, m5441.ᵔﹳ(), i, new ˉٴ(1)));
    }
}
