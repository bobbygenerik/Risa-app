package com.google.android.gms.internal.measurement;

import android.os.SystemClock;
import j$.util.Objects;

/* renamed from: com.google.android.gms.internal.measurement.ـﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractRunnableC0411 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final boolean f2147;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long f2148;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C0248 f2149;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f2150;

    public AbstractRunnableC0411(C0248 c0248, boolean z) {
        Objects.requireNonNull(c0248);
        this.f2149 = c0248;
        this.f2148 = System.currentTimeMillis();
        this.f2150 = SystemClock.elapsedRealtime();
        this.f2147 = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0248 c0248 = this.f2149;
        if (c0248.f1735) {
            mo1202();
            return;
        }
        try {
            mo1203();
        } catch (Exception e) {
            c0248.m1197(e, false, this.f2147);
            mo1202();
        }
    }

    /* renamed from: ⁱˊ */
    public void mo1202() {
    }

    /* renamed from: ﹳٴ */
    public abstract void mo1203();
}
