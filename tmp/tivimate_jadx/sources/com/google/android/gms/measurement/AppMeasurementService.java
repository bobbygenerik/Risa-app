package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import android.os.PowerManager;
import android.util.SparseArray;
import p064.AbstractC1595;
import p179.RunnableC2708;
import p447.BinderC5223;
import p447.C5322;
import p447.C5337;
import p447.C5344;
import p447.InterfaceC5212;
import ᐧﹳ.ʽ;
import ﹶﾞ.ﹶˎ;

/* loaded from: classes.dex */
public final class AppMeasurementService extends Service implements InterfaceC5212 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public ʽ f2520;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        ʽ m2316 = m2316();
        m2316.getClass();
        if (intent == null) {
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new BinderC5223(C5337.m10594((Service) m2316.ᴵˊ));
        }
        "onBind received unknown action: ".concat(String.valueOf(action));
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        ((Service) m2316().ᴵˊ).getClass().getSimpleName().concat(" is starting up.");
    }

    @Override // android.app.Service
    public final void onDestroy() {
        ((Service) m2316().ᴵˊ).getClass().getSimpleName().concat(" is shutting down.");
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        m2316();
        if (intent == null) {
            return;
        }
        "onRebind called. action: ".concat(String.valueOf(intent.getAction()));
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        ʽ m2316 = m2316();
        if (intent == null) {
            m2316.getClass();
            return 2;
        }
        Service service = (Service) m2316.ᴵˊ;
        C5344 c5344 = C5322.m10557(service, null, null).f20193;
        C5322.m10556(c5344);
        String action = intent.getAction();
        c5344.f20350.m10214(Integer.valueOf(i2), action, "Local AppMeasurementService called. startId, action");
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        RunnableC2708 runnableC2708 = new RunnableC2708(m2316, i2, c5344, intent);
        C5337 m10594 = C5337.m10594(service);
        m10594.mo10495().m10200(new ﹶˎ(m2316, m10594, runnableC2708));
        return 2;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        m2316();
        if (intent == null) {
            return true;
        }
        "onUnbind called for intent. action: ".concat(String.valueOf(intent.getAction()));
        return true;
    }

    @Override // p447.InterfaceC5212
    /* renamed from: ʽ */
    public final void mo2312(JobParameters jobParameters) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ʽ m2316() {
        if (this.f2520 == null) {
            this.f2520 = new ʽ(26, this);
        }
        return this.f2520;
    }

    @Override // p447.InterfaceC5212
    /* renamed from: ⁱˊ */
    public final void mo2314(Intent intent) {
        SparseArray sparseArray = AbstractC1595.f6214;
        int intExtra = intent.getIntExtra("androidx.contentpager.content.wakelockid", 0);
        if (intExtra == 0) {
            return;
        }
        SparseArray sparseArray2 = AbstractC1595.f6214;
        synchronized (sparseArray2) {
            try {
                PowerManager.WakeLock wakeLock = (PowerManager.WakeLock) sparseArray2.get(intExtra);
                if (wakeLock != null) {
                    wakeLock.release();
                    sparseArray2.remove(intExtra);
                } else {
                    String str = "No active wake lock id #" + intExtra;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p447.InterfaceC5212
    /* renamed from: ﹳٴ */
    public final boolean mo2315(int i) {
        return stopSelfResult(i);
    }
}
