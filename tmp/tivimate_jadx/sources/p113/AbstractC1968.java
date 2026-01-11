package p113;

import android.content.Context;
import android.os.PowerManager;
import p322.C3965;

/* renamed from: ˆﹶ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1968 {
    static {
        C3965.m8128("WakeLocks");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final PowerManager.WakeLock m4956(Context context) {
        PowerManager powerManager = (PowerManager) context.getApplicationContext().getSystemService("power");
        String concat = "WorkManager: ".concat("ProcessorForegroundLck");
        PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, concat);
        synchronized (C1973.f7828) {
        }
        return newWakeLock;
    }
}
