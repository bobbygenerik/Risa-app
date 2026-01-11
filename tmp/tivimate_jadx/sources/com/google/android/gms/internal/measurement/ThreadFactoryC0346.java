package com.google.android.gms.internal.measurement;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* renamed from: com.google.android.gms.internal.measurement.ˊᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ThreadFactoryC0346 implements ThreadFactory {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ThreadFactory f2001 = Executors.defaultThreadFactory();

    public ThreadFactoryC0346(C0248 c0248) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f2001.newThread(runnable);
        newThread.setName("ScionFrontendApi");
        return newThread;
    }
}
