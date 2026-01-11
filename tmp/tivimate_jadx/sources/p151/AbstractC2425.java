package p151;

import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* renamed from: ˊʻ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2425 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Field f9372;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final Method f9373;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final Method f9374;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final Handler f9375 = new Handler(Looper.getMainLooper());

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Field f9376;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Class f9377;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final Method f9378;

    /* JADX WARN: Can't wrap try/catch for region: R(21:1|(2:2|3)|4|5|6|7|8|9|10|(12:33|34|13|(6:29|30|16|(3:24|25|26)|20|21)|15|16|(1:18)|24|25|26|20|21)|12|13|(0)|15|16|(0)|24|25|26|20|21) */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            java.lang.Class<android.app.Activity> r0 = android.app.Activity.class
            android.os.Handler r1 = new android.os.Handler
            android.os.Looper r2 = android.os.Looper.getMainLooper()
            r1.<init>(r2)
            p151.AbstractC2425.f9375 = r1
            r1 = 0
            java.lang.String r2 = "android.app.ActivityThread"
            java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.Throwable -> L15
            goto L16
        L15:
            r2 = r1
        L16:
            p151.AbstractC2425.f9377 = r2
            r2 = 1
            java.lang.String r3 = "mMainThread"
            java.lang.reflect.Field r3 = r0.getDeclaredField(r3)     // Catch: java.lang.Throwable -> L23
            r3.setAccessible(r2)     // Catch: java.lang.Throwable -> L23
            goto L24
        L23:
            r3 = r1
        L24:
            p151.AbstractC2425.f9376 = r3
            java.lang.String r3 = "mToken"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r3)     // Catch: java.lang.Throwable -> L30
            r0.setAccessible(r2)     // Catch: java.lang.Throwable -> L30
            goto L31
        L30:
            r0 = r1
        L31:
            p151.AbstractC2425.f9372 = r0
            java.lang.Class r0 = p151.AbstractC2425.f9377
            r3 = 3
            r4 = 2
            r5 = 0
            java.lang.Class r6 = java.lang.Boolean.TYPE
            java.lang.Class<android.os.IBinder> r7 = android.os.IBinder.class
            java.lang.String r8 = "performStopActivity"
            if (r0 != 0) goto L42
        L40:
            r0 = r1
            goto L53
        L42:
            java.lang.Class[] r9 = new java.lang.Class[r3]     // Catch: java.lang.Throwable -> L40
            r9[r5] = r7     // Catch: java.lang.Throwable -> L40
            r9[r2] = r6     // Catch: java.lang.Throwable -> L40
            java.lang.Class<java.lang.String> r10 = java.lang.String.class
            r9[r4] = r10     // Catch: java.lang.Throwable -> L40
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r8, r9)     // Catch: java.lang.Throwable -> L40
            r0.setAccessible(r2)     // Catch: java.lang.Throwable -> L40
        L53:
            p151.AbstractC2425.f9373 = r0
            java.lang.Class r0 = p151.AbstractC2425.f9377
            if (r0 != 0) goto L5b
        L59:
            r0 = r1
            goto L68
        L5b:
            java.lang.Class[] r9 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> L59
            r9[r5] = r7     // Catch: java.lang.Throwable -> L59
            r9[r2] = r6     // Catch: java.lang.Throwable -> L59
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r8, r9)     // Catch: java.lang.Throwable -> L59
            r0.setAccessible(r2)     // Catch: java.lang.Throwable -> L59
        L68:
            p151.AbstractC2425.f9374 = r0
            java.lang.Class r0 = p151.AbstractC2425.f9377
            int r8 = android.os.Build.VERSION.SDK_INT
            r9 = 26
            if (r8 == r9) goto L76
            r9 = 27
            if (r8 != r9) goto La5
        L76:
            if (r0 != 0) goto L79
            goto La5
        L79:
            java.lang.String r8 = "requestRelaunchActivity"
            r9 = 9
            java.lang.Class[] r9 = new java.lang.Class[r9]     // Catch: java.lang.Throwable -> La5
            r9[r5] = r7     // Catch: java.lang.Throwable -> La5
            java.lang.Class<java.util.List> r5 = java.util.List.class
            r9[r2] = r5     // Catch: java.lang.Throwable -> La5
            r9[r4] = r5     // Catch: java.lang.Throwable -> La5
            java.lang.Class r4 = java.lang.Integer.TYPE     // Catch: java.lang.Throwable -> La5
            r9[r3] = r4     // Catch: java.lang.Throwable -> La5
            r3 = 4
            r9[r3] = r6     // Catch: java.lang.Throwable -> La5
            java.lang.Class<android.content.res.Configuration> r3 = android.content.res.Configuration.class
            r4 = 5
            r9[r4] = r3     // Catch: java.lang.Throwable -> La5
            r4 = 6
            r9[r4] = r3     // Catch: java.lang.Throwable -> La5
            r3 = 7
            r9[r3] = r6     // Catch: java.lang.Throwable -> La5
            r3 = 8
            r9[r3] = r6     // Catch: java.lang.Throwable -> La5
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r8, r9)     // Catch: java.lang.Throwable -> La5
            r0.setAccessible(r2)     // Catch: java.lang.Throwable -> La5
            r1 = r0
        La5:
            p151.AbstractC2425.f9378 = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p151.AbstractC2425.<clinit>():void");
    }
}
