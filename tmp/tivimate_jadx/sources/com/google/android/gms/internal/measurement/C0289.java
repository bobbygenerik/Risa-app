package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.net.Uri;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.google.android.gms.internal.measurement.ʾˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0289 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final ConcurrentHashMap f1892 = new ConcurrentHashMap();

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final String[] f1893 = {"key", "value"};

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Runnable f1894;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public volatile Map f1897;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Uri f1899;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ContentResolver f1900;

    /* renamed from: ˈ, reason: contains not printable characters */
    public C0396 f1895 = null;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public volatile boolean f1896 = true;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Object f1901 = new Object();

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final ArrayList f1898 = new ArrayList();

    public C0289(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        contentResolver.getClass();
        uri.getClass();
        this.f1900 = contentResolver;
        this.f1899 = uri;
        this.f1894 = runnable;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m1298() {
        Iterator it = f1892.values().iterator();
        while (it.hasNext()) {
            C0289 c0289 = (C0289) it.next();
            synchronized (c0289) {
                try {
                    if (c0289.f1896) {
                        c0289.f1896 = false;
                    } else {
                        C0396 c0396 = c0289.f1895;
                        if (c0396 != null) {
                            c0289.f1900.unregisterContentObserver(c0396);
                            c0289.f1895 = null;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            it.remove();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0029, code lost:
    
        if (r2 == null) goto L9;
     */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.measurement.C0289 m1299(final android.content.ContentResolver r2, final android.net.Uri r3, final java.lang.Runnable r4) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 24
            if (r0 < r1) goto L14
            j$.util.concurrent.ConcurrentHashMap r0 = com.google.android.gms.internal.measurement.C0289.f1892
            com.google.android.gms.internal.measurement.ˎᵎ r1 = new com.google.android.gms.internal.measurement.ˎᵎ
            r1.<init>()
            java.lang.Object r2 = j$.util.concurrent.ConcurrentMap$EL.computeIfAbsent(r0, r3, r1)
            com.google.android.gms.internal.measurement.ʾˏ r2 = (com.google.android.gms.internal.measurement.C0289) r2
            goto L2c
        L14:
            j$.util.concurrent.ConcurrentHashMap r0 = com.google.android.gms.internal.measurement.C0289.f1892
            java.lang.Object r1 = r0.get(r3)
            com.google.android.gms.internal.measurement.ʾˏ r1 = (com.google.android.gms.internal.measurement.C0289) r1
            if (r1 != 0) goto L2b
            com.google.android.gms.internal.measurement.ʾˏ r1 = new com.google.android.gms.internal.measurement.ʾˏ
            r1.<init>(r2, r3, r4)
            java.lang.Object r2 = r0.putIfAbsent(r3, r1)
            com.google.android.gms.internal.measurement.ʾˏ r2 = (com.google.android.gms.internal.measurement.C0289) r2
            if (r2 != 0) goto L2c
        L2b:
            r2 = r1
        L2c:
            boolean r3 = r2.f1896     // Catch: java.lang.SecurityException -> L4e
            if (r3 == 0) goto L4d
            monitor-enter(r2)     // Catch: java.lang.SecurityException -> L4e
            boolean r3 = r2.f1896     // Catch: java.lang.Throwable -> L47
            if (r3 == 0) goto L49
            com.google.android.gms.internal.measurement.יⁱ r3 = new com.google.android.gms.internal.measurement.יⁱ     // Catch: java.lang.Throwable -> L47
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L47
            android.content.ContentResolver r4 = r2.f1900     // Catch: java.lang.Throwable -> L47
            android.net.Uri r0 = r2.f1899     // Catch: java.lang.Throwable -> L47
            r1 = 0
            r4.registerContentObserver(r0, r1, r3)     // Catch: java.lang.Throwable -> L47
            r2.f1895 = r3     // Catch: java.lang.Throwable -> L47
            r2.f1896 = r1     // Catch: java.lang.Throwable -> L47
            goto L49
        L47:
            r3 = move-exception
            goto L4b
        L49:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L47
            return r2
        L4b:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L47
            throw r3     // Catch: java.lang.SecurityException -> L4e
        L4d:
            return r2
        L4e:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C0289.m1299(android.content.ContentResolver, android.net.Uri, java.lang.Runnable):com.google.android.gms.internal.measurement.ʾˏ");
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x004f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0050  */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.os.StrictMode$ThreadPolicy, java.util.Map] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map m1300() {
        /*
            r5 = this;
            java.util.Map r0 = r5.f1897
            if (r0 != 0) goto L4d
            java.lang.Object r1 = r5.f1901
            monitor-enter(r1)
            java.util.Map r0 = r5.f1897     // Catch: java.lang.Throwable -> L2a
            if (r0 != 0) goto L49
            android.os.StrictMode$ThreadPolicy r0 = android.os.StrictMode.allowThreadDiskReads()     // Catch: java.lang.Throwable -> L2a
            com.google.android.gms.internal.measurement.ᐧˉ r2 = new com.google.android.gms.internal.measurement.ᐧˉ     // Catch: java.lang.Throwable -> L2c java.lang.IllegalStateException -> L2e android.database.sqlite.SQLiteException -> L30 java.lang.SecurityException -> L32
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L2c java.lang.IllegalStateException -> L2e android.database.sqlite.SQLiteException -> L30 java.lang.SecurityException -> L32
            java.lang.Object r2 = r2.m1850()     // Catch: java.lang.SecurityException -> L19 java.lang.Throwable -> L2c java.lang.IllegalStateException -> L2e android.database.sqlite.SQLiteException -> L30
            goto L24
        L19:
            long r3 = android.os.Binder.clearCallingIdentity()     // Catch: java.lang.Throwable -> L2c java.lang.IllegalStateException -> L2e android.database.sqlite.SQLiteException -> L30 java.lang.SecurityException -> L32
            java.lang.Object r2 = r2.m1850()     // Catch: java.lang.Throwable -> L34
            android.os.Binder.restoreCallingIdentity(r3)     // Catch: java.lang.Throwable -> L2c java.lang.IllegalStateException -> L2e android.database.sqlite.SQLiteException -> L30 java.lang.SecurityException -> L32
        L24:
            java.util.Map r2 = (java.util.Map) r2     // Catch: java.lang.Throwable -> L2c java.lang.IllegalStateException -> L2e android.database.sqlite.SQLiteException -> L30 java.lang.SecurityException -> L32
        L26:
            android.os.StrictMode.setThreadPolicy(r0)     // Catch: java.lang.Throwable -> L2a
            goto L41
        L2a:
            r0 = move-exception
            goto L4b
        L2c:
            r2 = move-exception
            goto L45
        L2e:
            r2 = move-exception
            goto L39
        L30:
            r2 = move-exception
            goto L39
        L32:
            r2 = move-exception
            goto L39
        L34:
            r2 = move-exception
            android.os.Binder.restoreCallingIdentity(r3)     // Catch: java.lang.Throwable -> L2c java.lang.IllegalStateException -> L2e android.database.sqlite.SQLiteException -> L30 java.lang.SecurityException -> L32
            throw r2     // Catch: java.lang.Throwable -> L2c java.lang.IllegalStateException -> L2e android.database.sqlite.SQLiteException -> L30 java.lang.SecurityException -> L32
        L39:
            java.lang.String r3 = "ConfigurationContentLdr"
            java.lang.String r4 = "Unable to query ContentProvider, using default values"
            java.util.Map r2 = java.util.Collections.EMPTY_MAP     // Catch: java.lang.Throwable -> L2c
            goto L26
        L41:
            r5.f1897 = r2     // Catch: java.lang.Throwable -> L2a
            r0 = r2
            goto L49
        L45:
            android.os.StrictMode.setThreadPolicy(r0)     // Catch: java.lang.Throwable -> L2a
            throw r2     // Catch: java.lang.Throwable -> L2a
        L49:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L2a
            goto L4d
        L4b:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L2a
            throw r0
        L4d:
            if (r0 == 0) goto L50
            return r0
        L50:
            java.util.Map r0 = java.util.Collections.EMPTY_MAP
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C0289.m1300():java.util.Map");
    }
}
