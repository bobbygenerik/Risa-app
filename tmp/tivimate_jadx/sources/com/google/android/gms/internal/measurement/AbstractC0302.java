package com.google.android.gms.internal.measurement;

import p095.AbstractC1889;
import p095.C1887;

/* renamed from: com.google.android.gms.internal.measurement.ʿˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0302 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static volatile AbstractC1889 f1926 = C1887.f7531;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Object f1925 = new Object();

    /* JADX WARN: Can't wrap try/catch for region: R(11:18|(8:20|(1:22)(1:31)|23|(1:25)|27|28|29|30)|32|33|34|35|(1:37)|27|28|29|30) */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0075, code lost:
    
        if ("com.google.android.gms".equals(r0.packageName) != false) goto L29;
     */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m1332(android.content.Context r5, android.net.Uri r6) {
        /*
            java.lang.String r0 = "com.google.android.gms.phenotype"
            java.lang.String r6 = r6.getAuthority()
            boolean r0 = r0.equals(r6)
            r1 = 0
            if (r0 != 0) goto L1b
            java.lang.String r5 = java.lang.String.valueOf(r6)
            java.lang.String r6 = " is an unsupported authority. Only com.google.android.gms.phenotype authority is supported."
            java.lang.String r0 = "PhenotypeClientHelper"
            java.lang.String r5 = r5.concat(r6)
            return r1
        L1b:
            ˆʽ.ﾞᴵ r6 = com.google.android.gms.internal.measurement.AbstractC0302.f1926
            boolean r6 = r6.mo4812()
            if (r6 == 0) goto L30
            ˆʽ.ﾞᴵ r5 = com.google.android.gms.internal.measurement.AbstractC0302.f1926
            java.lang.Object r5 = r5.mo4813()
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            return r5
        L30:
            java.lang.Object r6 = com.google.android.gms.internal.measurement.AbstractC0302.f1925
            monitor-enter(r6)
            ˆʽ.ﾞᴵ r0 = com.google.android.gms.internal.measurement.AbstractC0302.f1926     // Catch: java.lang.Throwable -> L49
            boolean r0 = r0.mo4812()     // Catch: java.lang.Throwable -> L49
            if (r0 == 0) goto L4b
            ˆʽ.ﾞᴵ r5 = com.google.android.gms.internal.measurement.AbstractC0302.f1926     // Catch: java.lang.Throwable -> L49
            java.lang.Object r5 = r5.mo4813()     // Catch: java.lang.Throwable -> L49
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch: java.lang.Throwable -> L49
            boolean r5 = r5.booleanValue()     // Catch: java.lang.Throwable -> L49
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L49
            return r5
        L49:
            r5 = move-exception
            goto La1
        L4b:
            java.lang.String r0 = "com.google.android.gms"
            java.lang.String r2 = r5.getPackageName()     // Catch: java.lang.Throwable -> L49
            boolean r0 = r0.equals(r2)     // Catch: java.lang.Throwable -> L49
            if (r0 != 0) goto L77
            android.content.pm.PackageManager r0 = r5.getPackageManager()     // Catch: java.lang.Throwable -> L49
            java.lang.String r2 = "com.google.android.gms.phenotype"
            int r3 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L49
            r4 = 29
            if (r3 >= r4) goto L65
            r3 = r1
            goto L67
        L65:
            r3 = 268435456(0x10000000, float:2.524355E-29)
        L67:
            android.content.pm.ProviderInfo r0 = r0.resolveContentProvider(r2, r3)     // Catch: java.lang.Throwable -> L49
            if (r0 == 0) goto L88
            java.lang.String r2 = "com.google.android.gms"
            java.lang.String r0 = r0.packageName     // Catch: java.lang.Throwable -> L49
            boolean r0 = r2.equals(r0)     // Catch: java.lang.Throwable -> L49
            if (r0 == 0) goto L88
        L77:
            android.content.pm.PackageManager r5 = r5.getPackageManager()     // Catch: java.lang.Throwable -> L49
            java.lang.String r0 = "com.google.android.gms"
            android.content.pm.ApplicationInfo r5 = r5.getApplicationInfo(r0, r1)     // Catch: java.lang.Throwable -> L49 android.content.pm.PackageManager.NameNotFoundException -> L88
            int r5 = r5.flags     // Catch: java.lang.Throwable -> L49
            r5 = r5 & 129(0x81, float:1.81E-43)
            if (r5 == 0) goto L88
            r1 = 1
        L88:
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r1)     // Catch: java.lang.Throwable -> L49
            ˆʽ.ʼˎ r0 = new ˆʽ.ʼˎ     // Catch: java.lang.Throwable -> L49
            r0.<init>(r5)     // Catch: java.lang.Throwable -> L49
            com.google.android.gms.internal.measurement.AbstractC0302.f1926 = r0     // Catch: java.lang.Throwable -> L49
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L49
            ˆʽ.ﾞᴵ r5 = com.google.android.gms.internal.measurement.AbstractC0302.f1926
            java.lang.Object r5 = r5.mo4813()
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            return r5
        La1:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L49
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.AbstractC0302.m1332(android.content.Context, android.net.Uri):boolean");
    }
}
