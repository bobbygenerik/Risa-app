package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import com.google.android.gms.internal.measurement.C0248;
import com.google.android.gms.internal.measurement.C0336;
import j$.util.Objects;
import p027.RunnableC1101;
import p296.AbstractC3659;
import p366.C4486;
import p447.C5337;
import p447.C5344;
import p447.InterfaceC5212;
import ᐧﹳ.ʽ;
import ﹶﾞ.ﹶˎ;

@TargetApi(24)
/* loaded from: classes.dex */
public final class AppMeasurementJobService extends JobService implements InterfaceC5212 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public ʽ f2518;

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        ((Service) m2313().ᴵˊ).getClass().getSimpleName().concat(" is starting up.");
    }

    @Override // android.app.Service
    public final void onDestroy() {
        ((Service) m2313().ᴵˊ).getClass().getSimpleName().concat(" is shutting down.");
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        m2313();
        if (intent == null) {
            return;
        }
        "onRebind called. action: ".concat(String.valueOf(intent.getAction()));
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        ʽ m2313 = m2313();
        Service service = (Service) m2313.ᴵˊ;
        String string = jobParameters.getExtras().getString("action");
        "onStartJob received action: ".concat(String.valueOf(string));
        if (Objects.equals(string, "com.google.android.gms.measurement.UPLOAD")) {
            AbstractC3659.m7687(string);
            C5337 m10594 = C5337.m10594(service);
            C5344 mo10494 = m10594.mo10494();
            C4486 c4486 = m10594.f20305.f20183;
            mo10494.f20350.m10216(string, "Local AppMeasurementJobService called. action");
            m10594.mo10495().m10200(new ﹶˎ(m2313, m10594, new RunnableC1101(m2313, mo10494, jobParameters, 15)));
        }
        if (!Objects.equals(string, "com.google.android.gms.measurement.SCION_UPLOAD")) {
            return true;
        }
        AbstractC3659.m7687(string);
        C0248 m1196 = C0248.m1196(service, null);
        ﹶˎ r2 = new ﹶˎ(m2313, jobParameters, 9, false);
        m1196.getClass();
        m1196.m1198(new C0336(m1196, r2, 2));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        m2313();
        if (intent == null) {
            return true;
        }
        "onUnbind called for intent. action: ".concat(String.valueOf(intent.getAction()));
        return true;
    }

    @Override // p447.InterfaceC5212
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo2312(JobParameters jobParameters) {
        jobFinished(jobParameters, false);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ʽ m2313() {
        if (this.f2518 == null) {
            this.f2518 = new ʽ(26, this);
        }
        return this.f2518;
    }

    @Override // p447.InterfaceC5212
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo2314(Intent intent) {
    }

    @Override // p447.InterfaceC5212
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean mo2315(int i) {
        throw new UnsupportedOperationException();
    }
}
