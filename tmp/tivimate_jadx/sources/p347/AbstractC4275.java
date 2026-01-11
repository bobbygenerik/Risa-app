package p347;

import android.os.Build;
import android.os.Process;
import android.support.v4.media.session.ⁱˊ;

/* renamed from: ᵎᴵ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4275 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static Boolean f15853;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int f15854;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String f15855;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static boolean m8651() {
        Boolean bool = f15853;
        if (bool == null) {
            if (Build.VERSION.SDK_INT >= 28) {
                bool = Boolean.valueOf(Process.isIsolated());
            } else {
                try {
                    Object invoke = Process.class.getDeclaredMethod("isIsolated", null).invoke(null, null);
                    Object[] objArr = new Object[0];
                    if (invoke == null) {
                        throw new RuntimeException(ⁱˊ.ᵢˏ(objArr));
                    }
                    bool = (Boolean) invoke;
                } catch (ReflectiveOperationException unused) {
                    bool = Boolean.FALSE;
                }
            }
            f15853 = bool;
        }
        return bool.booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0063, code lost:
    
        if (r3 == null) goto L32;
     */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m8652() {
        /*
            java.lang.String r0 = "/proc/"
            java.lang.String r1 = p347.AbstractC4275.f15855
            if (r1 != 0) goto L68
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 28
            if (r1 < r2) goto L13
            java.lang.String r0 = android.app.Application.getProcessName()
            p347.AbstractC4275.f15855 = r0
            goto L68
        L13:
            int r1 = p347.AbstractC4275.f15854
            if (r1 != 0) goto L1d
            int r1 = android.os.Process.myPid()
            p347.AbstractC4275.f15854 = r1
        L1d:
            r2 = 0
            if (r1 > 0) goto L21
            goto L66
        L21:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L62
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L62
            r3.append(r1)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L62
            java.lang.String r0 = "/cmdline"
            r3.append(r0)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L62
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L62
            android.os.StrictMode$ThreadPolicy r1 = android.os.StrictMode.allowThreadDiskReads()     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L62
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L57
            java.io.FileReader r4 = new java.io.FileReader     // Catch: java.lang.Throwable -> L57
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L57
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L57
            android.os.StrictMode.setThreadPolicy(r1)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L62
            java.lang.String r0 = r3.readLine()     // Catch: java.lang.Throwable -> L52 java.io.IOException -> L63
            p296.AbstractC3659.m7687(r0)     // Catch: java.lang.Throwable -> L52 java.io.IOException -> L63
            java.lang.String r2 = r0.trim()     // Catch: java.lang.Throwable -> L52 java.io.IOException -> L63
        L4e:
            r3.close()     // Catch: java.io.IOException -> L66
            goto L66
        L52:
            r0 = move-exception
            r2 = r3
            goto L5c
        L55:
            r0 = move-exception
            goto L5c
        L57:
            r0 = move-exception
            android.os.StrictMode.setThreadPolicy(r1)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L62
            throw r0     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L62
        L5c:
            if (r2 == 0) goto L61
            r2.close()     // Catch: java.io.IOException -> L61
        L61:
            throw r0
        L62:
            r3 = r2
        L63:
            if (r3 == 0) goto L66
            goto L4e
        L66:
            p347.AbstractC4275.f15855 = r2
        L68:
            java.lang.String r0 = p347.AbstractC4275.f15855
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p347.AbstractC4275.m8652():java.lang.String");
    }
}
