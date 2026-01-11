package com.google.android.gms.internal.measurement;

import android.net.Uri;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.google.android.gms.internal.measurement.יˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0390 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final AtomicInteger f2045;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final Object f2046 = new Object();

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static volatile C0481 f2047;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f2048;

    /* renamed from: ˈ, reason: contains not printable characters */
    public volatile int f2049 = -1;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public volatile Object f2050;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f2051;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ar.tvplayer.core.domain.ʽﹳ f2052;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final /* synthetic */ int f2053;

    static {
        new AtomicReference();
        f2045 = new AtomicInteger();
    }

    public /* synthetic */ C0390(ar.tvplayer.core.domain.ʽﹳ r1, String str, Object obj, int i) {
        this.f2053 = i;
        if (((Uri) r1.ᴵˊ) == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.f2052 = r1;
        this.f2051 = str;
        this.f2048 = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006d A[Catch: all -> 0x0057, TryCatch #0 {all -> 0x0057, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0016, B:11:0x001a, B:13:0x0026, B:15:0x0036, B:18:0x004a, B:21:0x0060, B:23:0x006d, B:25:0x0075, B:27:0x0085, B:29:0x0093, B:32:0x00b8, B:35:0x00c0, B:36:0x00c3, B:37:0x00c7, B:38:0x009c, B:40:0x00a0, B:42:0x00ae, B:44:0x00b4, B:48:0x00cc, B:49:0x00ce, B:52:0x0043, B:54:0x00cf), top: B:4:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009c A[Catch: all -> 0x0057, TryCatch #0 {all -> 0x0057, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0016, B:11:0x001a, B:13:0x0026, B:15:0x0036, B:18:0x004a, B:21:0x0060, B:23:0x006d, B:25:0x0075, B:27:0x0085, B:29:0x0093, B:32:0x00b8, B:35:0x00c0, B:36:0x00c3, B:37:0x00c7, B:38:0x009c, B:40:0x00a0, B:42:0x00ae, B:44:0x00b4, B:48:0x00cc, B:49:0x00ce, B:52:0x0043, B:54:0x00cf), top: B:4:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00cc A[Catch: all -> 0x0057, TryCatch #0 {all -> 0x0057, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0016, B:11:0x001a, B:13:0x0026, B:15:0x0036, B:18:0x004a, B:21:0x0060, B:23:0x006d, B:25:0x0075, B:27:0x0085, B:29:0x0093, B:32:0x00b8, B:35:0x00c0, B:36:0x00c3, B:37:0x00c7, B:38:0x009c, B:40:0x00a0, B:42:0x00ae, B:44:0x00b4, B:48:0x00cc, B:49:0x00ce, B:52:0x0043, B:54:0x00cf), top: B:4:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x005f  */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1773() {
        /*
            r9 = this;
            java.util.concurrent.atomic.AtomicInteger r0 = com.google.android.gms.internal.measurement.C0390.f2045
            int r0 = r0.get()
            int r1 = r9.f2049
            if (r1 >= r0) goto Ld3
            monitor-enter(r9)
            int r1 = r9.f2049     // Catch: java.lang.Throwable -> L57
            if (r1 >= r0) goto Lcf
            com.google.android.gms.internal.measurement.ⁱʾ r1 = com.google.android.gms.internal.measurement.C0390.f2047     // Catch: java.lang.Throwable -> L57
            ˆʽ.ﹳٴ r2 = p095.C1887.f7531     // Catch: java.lang.Throwable -> L57
            r3 = 0
            if (r1 == 0) goto L5a
            ˆʽ.ٴﹶ r4 = r1.f2239     // Catch: java.lang.Throwable -> L57
            if (r4 == 0) goto L5a
            java.lang.Object r2 = r4.get()     // Catch: java.lang.Throwable -> L57
            ˆʽ.ﾞᴵ r2 = (p095.AbstractC1889) r2     // Catch: java.lang.Throwable -> L57
            boolean r4 = r2.mo4812()     // Catch: java.lang.Throwable -> L57
            if (r4 == 0) goto L5a
            java.lang.Object r4 = r2.mo4813()     // Catch: java.lang.Throwable -> L57
            com.google.android.gms.internal.measurement.ᐧˏ r4 = (com.google.android.gms.internal.measurement.C0427) r4     // Catch: java.lang.Throwable -> L57
            ar.tvplayer.core.domain.ʽﹳ r5 = r9.f2052     // Catch: java.lang.Throwable -> L57
            java.lang.Object r5 = r5.ᴵˊ     // Catch: java.lang.Throwable -> L57
            android.net.Uri r5 = (android.net.Uri) r5     // Catch: java.lang.Throwable -> L57
            java.lang.String r6 = r9.f2051     // Catch: java.lang.Throwable -> L57
            if (r5 == 0) goto L43
            יـ.ﹳᐧ r4 = r4.f2170     // Catch: java.lang.Throwable -> L57
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L57
            java.lang.Object r4 = r4.get(r5)     // Catch: java.lang.Throwable -> L57
            יـ.ﹳᐧ r4 = (p255.C3368) r4     // Catch: java.lang.Throwable -> L57
            goto L47
        L43:
            r4.getClass()     // Catch: java.lang.Throwable -> L57
            r4 = r3
        L47:
            if (r4 != 0) goto L4a
            goto L5a
        L4a:
            java.lang.String r5 = ""
            java.lang.String r5 = r5.concat(r6)     // Catch: java.lang.Throwable -> L57
            java.lang.Object r4 = r4.get(r5)     // Catch: java.lang.Throwable -> L57
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L57
            goto L5b
        L57:
            r0 = move-exception
            goto Ld1
        L5a:
            r4 = r3
        L5b:
            if (r1 == 0) goto L5f
            r5 = 1
            goto L60
        L5f:
            r5 = 0
        L60:
            java.lang.String r6 = "Must call PhenotypeFlagInitializer.maybeInit() first"
            com.google.android.gms.internal.play_billing.י.ٴﹶ(r6, r5)     // Catch: java.lang.Throwable -> L57
            ar.tvplayer.core.domain.ʽﹳ r5 = r9.f2052     // Catch: java.lang.Throwable -> L57
            java.lang.Object r6 = r5.ᴵˊ     // Catch: java.lang.Throwable -> L57
            android.net.Uri r6 = (android.net.Uri) r6     // Catch: java.lang.Throwable -> L57
            if (r6 == 0) goto Lcc
            android.content.Context r7 = r1.f2240     // Catch: java.lang.Throwable -> L57
            boolean r7 = com.google.android.gms.internal.measurement.AbstractC0302.m1332(r7, r6)     // Catch: java.lang.Throwable -> L57
            if (r7 == 0) goto L82
            android.content.Context r7 = r1.f2240     // Catch: java.lang.Throwable -> L57
            android.content.ContentResolver r7 = r7.getContentResolver()     // Catch: java.lang.Throwable -> L57
            com.google.android.gms.internal.measurement.ᵢﹳ r8 = com.google.android.gms.internal.measurement.RunnableC0479.f2238     // Catch: java.lang.Throwable -> L57
            com.google.android.gms.internal.measurement.ʾˏ r6 = com.google.android.gms.internal.measurement.C0289.m1299(r7, r6, r8)     // Catch: java.lang.Throwable -> L57
            goto L83
        L82:
            r6 = r3
        L83:
            if (r6 == 0) goto L98
            java.lang.String r7 = r9.f2051     // Catch: java.lang.Throwable -> L57
            java.util.Map r6 = r6.m1300()     // Catch: java.lang.Throwable -> L57
            java.lang.Object r6 = r6.get(r7)     // Catch: java.lang.Throwable -> L57
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Throwable -> L57
            if (r6 == 0) goto L98
            java.lang.Object r6 = r9.m1774(r6)     // Catch: java.lang.Throwable -> L57
            goto L99
        L98:
            r6 = r3
        L99:
            if (r6 == 0) goto L9c
            goto Lb8
        L9c:
            boolean r5 = r5.ʾˋ     // Catch: java.lang.Throwable -> L57
            if (r5 != 0) goto Lb2
            android.content.Context r1 = r1.f2240     // Catch: java.lang.Throwable -> L57
            com.google.android.gms.internal.measurement.ˊـ r1 = com.google.android.gms.internal.measurement.C0344.m1586(r1)     // Catch: java.lang.Throwable -> L57
            java.lang.String r5 = r9.f2051     // Catch: java.lang.Throwable -> L57
            java.lang.String r1 = r1.m1590(r5)     // Catch: java.lang.Throwable -> L57
            if (r1 == 0) goto Lb2
            java.lang.Object r3 = r9.m1774(r1)     // Catch: java.lang.Throwable -> L57
        Lb2:
            if (r3 != 0) goto Lb7
            java.lang.Object r6 = r9.f2048     // Catch: java.lang.Throwable -> L57
            goto Lb8
        Lb7:
            r6 = r3
        Lb8:
            boolean r1 = r2.mo4812()     // Catch: java.lang.Throwable -> L57
            if (r1 == 0) goto Lc7
            if (r4 != 0) goto Lc3
            java.lang.Object r6 = r9.f2048     // Catch: java.lang.Throwable -> L57
            goto Lc7
        Lc3:
            java.lang.Object r6 = r9.m1774(r4)     // Catch: java.lang.Throwable -> L57
        Lc7:
            r9.f2050 = r6     // Catch: java.lang.Throwable -> L57
            r9.f2049 = r0     // Catch: java.lang.Throwable -> L57
            goto Lcf
        Lcc:
            android.content.Context r0 = r1.f2240     // Catch: java.lang.Throwable -> L57
            throw r3     // Catch: java.lang.Throwable -> L57
        Lcf:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L57
            goto Ld3
        Ld1:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L57
            throw r0
        Ld3:
            java.lang.Object r0 = r9.f2050
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C0390.m1773():java.lang.Object");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object m1774(Object obj) {
        switch (this.f2053) {
            case 0:
                if (obj instanceof Long) {
                    return (Long) obj;
                }
                if (obj instanceof String) {
                    try {
                        return Long.valueOf(Long.parseLong((String) obj));
                    } catch (NumberFormatException unused) {
                    }
                }
                String obj2 = obj.toString();
                String str = this.f2051;
                StringBuilder sb = new StringBuilder(str.length() + 25 + obj2.length());
                sb.append("Invalid long value for ");
                sb.append(str);
                sb.append(": ");
                sb.append(obj2);
                sb.toString();
                return null;
            case 1:
                if (obj instanceof Boolean) {
                    return (Boolean) obj;
                }
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (AbstractC0246.f1730.matcher(str2).matches()) {
                        return Boolean.TRUE;
                    }
                    if (AbstractC0246.f1729.matcher(str2).matches()) {
                        return Boolean.FALSE;
                    }
                }
                String obj3 = obj.toString();
                String str3 = this.f2051;
                StringBuilder sb2 = new StringBuilder(str3.length() + 28 + obj3.length());
                sb2.append("Invalid boolean value for ");
                sb2.append(str3);
                sb2.append(": ");
                sb2.append(obj3);
                sb2.toString();
                return null;
            case 2:
                if (obj instanceof Double) {
                    return (Double) obj;
                }
                if (obj instanceof Float) {
                    return Double.valueOf(((Float) obj).doubleValue());
                }
                if (obj instanceof String) {
                    try {
                        return Double.valueOf(Double.parseDouble((String) obj));
                    } catch (NumberFormatException unused2) {
                    }
                }
                String obj4 = obj.toString();
                String str4 = this.f2051;
                StringBuilder sb3 = new StringBuilder(str4.length() + 27 + obj4.length());
                sb3.append("Invalid double value for ");
                sb3.append(str4);
                sb3.append(": ");
                sb3.append(obj4);
                sb3.toString();
                return null;
            default:
                if (obj instanceof String) {
                    return (String) obj;
                }
                return null;
        }
    }
}
