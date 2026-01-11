package com.google.android.gms.internal.measurement;

import java.lang.reflect.Method;

/* renamed from: com.google.android.gms.internal.measurement.ٴᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0420 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Method f2159;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Method f2160;

    /* JADX WARN: Removed duplicated region for block: B:9:0x0038 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 6
            java.lang.String r2 = "JobSchedulerCompat"
            r3 = 0
            r4 = 24
            if (r0 < r4) goto L31
            java.lang.Class<android.app.job.JobScheduler> r0 = android.app.job.JobScheduler.class
            java.lang.String r5 = "scheduleAsPackage"
            r6 = 4
            java.lang.Class[] r6 = new java.lang.Class[r6]     // Catch: java.lang.NoSuchMethodException -> L28
            java.lang.Class<android.app.job.JobInfo> r7 = android.app.job.JobInfo.class
            r8 = 0
            r6[r8] = r7     // Catch: java.lang.NoSuchMethodException -> L28
            java.lang.Class<java.lang.String> r7 = java.lang.String.class
            r8 = 1
            r6[r8] = r7     // Catch: java.lang.NoSuchMethodException -> L28
            java.lang.Class r8 = java.lang.Integer.TYPE     // Catch: java.lang.NoSuchMethodException -> L28
            r9 = 2
            r6[r9] = r8     // Catch: java.lang.NoSuchMethodException -> L28
            r8 = 3
            r6[r8] = r7     // Catch: java.lang.NoSuchMethodException -> L28
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r5, r6)     // Catch: java.lang.NoSuchMethodException -> L28
            goto L32
        L28:
            boolean r0 = android.util.Log.isLoggable(r2, r1)
            if (r0 == 0) goto L31
            java.lang.String r0 = "No scheduleAsPackage method available, falling back to schedule"
        L31:
            r0 = r3
        L32:
            com.google.android.gms.internal.measurement.AbstractC0420.f2160 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            if (r0 < r4) goto L4a
            java.lang.Class<android.os.UserHandle> r0 = android.os.UserHandle.class
            java.lang.String r4 = "myUserId"
            java.lang.reflect.Method r3 = r0.getDeclaredMethod(r4, r3)     // Catch: java.lang.NoSuchMethodException -> L41
            goto L4a
        L41:
            boolean r0 = android.util.Log.isLoggable(r2, r1)
            if (r0 == 0) goto L4a
            java.lang.String r0 = "No myUserId method available"
        L4a:
            com.google.android.gms.internal.measurement.AbstractC0420.f2159 = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.AbstractC0420.<clinit>():void");
    }
}
