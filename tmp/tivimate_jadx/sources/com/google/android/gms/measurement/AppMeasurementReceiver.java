package com.google.android.gms.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.SparseArray;
import p064.AbstractC1595;
import p384.C4603;
import p447.C5322;
import p447.C5344;

/* loaded from: classes.dex */
public final class AppMeasurementReceiver extends AbstractC1595 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public C4603 f2519;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f2519 == null) {
            this.f2519 = new C4603(this);
        }
        C4603 c4603 = this.f2519;
        c4603.getClass();
        C5344 c5344 = C5322.m10557(context, null, null).f20193;
        C5322.m10556(c5344);
        if (intent == null) {
            c5344.f20348.m10217("Receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        c5344.f20350.m10216(action, "Local receiver got");
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
                c5344.f20348.m10217("Install Referrer Broadcasts are deprecated");
                return;
            }
            return;
        }
        Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
        className.setAction("com.google.android.gms.measurement.UPLOAD");
        c5344.f20350.m10217("Starting wakeful intent.");
        ((AppMeasurementReceiver) c4603.f17126).getClass();
        SparseArray sparseArray = AbstractC1595.f6214;
        synchronized (sparseArray) {
            try {
                int i = AbstractC1595.f6213;
                int i2 = i + 1;
                AbstractC1595.f6213 = i2;
                if (i2 <= 0) {
                    AbstractC1595.f6213 = 1;
                }
                className.putExtra("androidx.contentpager.content.wakelockid", i);
                ComponentName startService = context.startService(className);
                if (startService == null) {
                    return;
                }
                PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "androidx.core:wake:" + startService.flattenToShortString());
                newWakeLock.setReferenceCounted(false);
                newWakeLock.acquire(60000L);
                sparseArray.put(i, newWakeLock);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
