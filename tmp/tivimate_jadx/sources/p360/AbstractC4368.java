package p360;

import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p080.ThreadFactoryC1711;
import p179.C2713;
import p255.C3368;

/* renamed from: ᵔٴ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4368 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Object f16217;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C3368 f16218;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final ThreadPoolExecutor f16219;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C2713 f16220 = new C2713(16);

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new ThreadFactoryC1711(1));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f16219 = threadPoolExecutor;
        f16217 = new Object();
        f16218 = new C3368(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0052 A[Catch: all -> 0x00c1, TRY_LEAVE, TryCatch #0 {all -> 0x00c1, all -> 0x00b2, NameNotFoundException -> 0x00b7, all -> 0x007c, blocks: (B:3:0x000b, B:5:0x0013, B:10:0x001c, B:11:0x0020, B:16:0x0052, B:19:0x005b, B:21:0x0061, B:23:0x0067, B:26:0x0078, B:28:0x009d, B:31:0x00a9, B:36:0x007d, B:37:0x0080, B:38:0x0081, B:41:0x0098, B:44:0x00b3, B:45:0x00b6, B:47:0x002f, B:49:0x0037, B:52:0x003b, B:54:0x003f, B:56:0x004a, B:65:0x00b7, B:40:0x0092, B:25:0x0072), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005b A[Catch: all -> 0x00c1, TRY_ENTER, TryCatch #0 {all -> 0x00c1, all -> 0x00b2, NameNotFoundException -> 0x00b7, all -> 0x007c, blocks: (B:3:0x000b, B:5:0x0013, B:10:0x001c, B:11:0x0020, B:16:0x0052, B:19:0x005b, B:21:0x0061, B:23:0x0067, B:26:0x0078, B:28:0x009d, B:31:0x00a9, B:36:0x007d, B:37:0x0080, B:38:0x0081, B:41:0x0098, B:44:0x00b3, B:45:0x00b6, B:47:0x002f, B:49:0x0037, B:52:0x003b, B:54:0x003f, B:56:0x004a, B:65:0x00b7, B:40:0x0092, B:25:0x0072), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009d A[Catch: all -> 0x00c1, TRY_LEAVE, TryCatch #0 {all -> 0x00c1, all -> 0x00b2, NameNotFoundException -> 0x00b7, all -> 0x007c, blocks: (B:3:0x000b, B:5:0x0013, B:10:0x001c, B:11:0x0020, B:16:0x0052, B:19:0x005b, B:21:0x0061, B:23:0x0067, B:26:0x0078, B:28:0x009d, B:31:0x00a9, B:36:0x007d, B:37:0x0080, B:38:0x0081, B:41:0x0098, B:44:0x00b3, B:45:0x00b6, B:47:0x002f, B:49:0x0037, B:52:0x003b, B:54:0x003f, B:56:0x004a, B:65:0x00b7, B:40:0x0092, B:25:0x0072), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a9 A[Catch: all -> 0x00c1, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00c1, all -> 0x00b2, NameNotFoundException -> 0x00b7, all -> 0x007c, blocks: (B:3:0x000b, B:5:0x0013, B:10:0x001c, B:11:0x0020, B:16:0x0052, B:19:0x005b, B:21:0x0061, B:23:0x0067, B:26:0x0078, B:28:0x009d, B:31:0x00a9, B:36:0x007d, B:37:0x0080, B:38:0x0081, B:41:0x0098, B:44:0x00b3, B:45:0x00b6, B:47:0x002f, B:49:0x0037, B:52:0x003b, B:54:0x003f, B:56:0x004a, B:65:0x00b7, B:40:0x0092, B:25:0x0072), top: B:2:0x000b }] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p360.C4372 m8841(java.lang.String r8, android.content.Context r9, java.util.List r10, int r11) {
        /*
            ˋˋ.ـˊ r0 = p360.AbstractC4368.f16220
            java.lang.String r1 = "getFontSync"
            java.lang.String r1 = com.bumptech.glide.ʽ.ˊʻ(r1)
            android.os.Trace.beginSection(r1)
            java.lang.Object r1 = r0.m6090(r8)     // Catch: java.lang.Throwable -> Lc1
            android.graphics.Typeface r1 = (android.graphics.Typeface) r1     // Catch: java.lang.Throwable -> Lc1
            if (r1 == 0) goto L1c
            ᵔٴ.ﾞᴵ r8 = new ᵔٴ.ﾞᴵ     // Catch: java.lang.Throwable -> Lc1
            r8.<init>(r1)     // Catch: java.lang.Throwable -> Lc1
            android.os.Trace.endSection()
            return r8
        L1c:
            יי.ﾞᴵ r10 = p360.AbstractC4365.m8840(r9, r10)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lb7 java.lang.Throwable -> Lc1
            java.util.List r1 = r10.f13109     // Catch: java.lang.Throwable -> Lc1
            int r10 = r10.f13110     // Catch: java.lang.Throwable -> Lc1
            r2 = 1
            r3 = -3
            r4 = 0
            if (r10 == 0) goto L2f
            if (r10 == r2) goto L2d
        L2b:
            r10 = r3
            goto L50
        L2d:
            r10 = -2
            goto L50
        L2f:
            java.lang.Object r10 = r1.get(r4)     // Catch: java.lang.Throwable -> Lc1
            ᵔٴ.ᵔᵢ[] r10 = (p360.C4369[]) r10     // Catch: java.lang.Throwable -> Lc1
            if (r10 == 0) goto L4f
            int r5 = r10.length     // Catch: java.lang.Throwable -> Lc1
            if (r5 != 0) goto L3b
            goto L4f
        L3b:
            int r5 = r10.length     // Catch: java.lang.Throwable -> Lc1
            r6 = r4
        L3d:
            if (r6 >= r5) goto L4d
            r7 = r10[r6]     // Catch: java.lang.Throwable -> Lc1
            int r7 = r7.f16226     // Catch: java.lang.Throwable -> Lc1
            if (r7 == 0) goto L4a
            if (r7 >= 0) goto L48
            goto L2b
        L48:
            r10 = r7
            goto L50
        L4a:
            int r6 = r6 + 1
            goto L3d
        L4d:
            r10 = r4
            goto L50
        L4f:
            r10 = r2
        L50:
            if (r10 == 0) goto L5b
            ᵔٴ.ﾞᴵ r8 = new ᵔٴ.ﾞᴵ     // Catch: java.lang.Throwable -> Lc1
            r8.<init>(r10)     // Catch: java.lang.Throwable -> Lc1
            android.os.Trace.endSection()
            return r8
        L5b:
            int r10 = r1.size()     // Catch: java.lang.Throwable -> Lc1
            if (r10 <= r2) goto L81
            int r10 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> Lc1
            r2 = 29
            if (r10 < r2) goto L81
            ﹳˋ.ٴﹶ r10 = p349.AbstractC4288.f15875     // Catch: java.lang.Throwable -> Lc1
            java.lang.String r10 = "TypefaceCompat.createFromFontInfoWithFallback"
            java.lang.String r10 = com.bumptech.glide.ʽ.ˊʻ(r10)     // Catch: java.lang.Throwable -> Lc1
            android.os.Trace.beginSection(r10)     // Catch: java.lang.Throwable -> Lc1
            ﹳˋ.ٴﹶ r10 = p349.AbstractC4288.f15875     // Catch: java.lang.Throwable -> L7c
            android.graphics.Typeface r9 = r10.ﾞʻ(r9, r1, r11)     // Catch: java.lang.Throwable -> L7c
            android.os.Trace.endSection()     // Catch: java.lang.Throwable -> Lc1
            goto L9b
        L7c:
            r8 = move-exception
            android.os.Trace.endSection()     // Catch: java.lang.Throwable -> Lc1
            throw r8     // Catch: java.lang.Throwable -> Lc1
        L81:
            java.lang.Object r10 = r1.get(r4)     // Catch: java.lang.Throwable -> Lc1
            ᵔٴ.ᵔᵢ[] r10 = (p360.C4369[]) r10     // Catch: java.lang.Throwable -> Lc1
            ﹳˋ.ٴﹶ r1 = p349.AbstractC4288.f15875     // Catch: java.lang.Throwable -> Lc1
            java.lang.String r1 = "TypefaceCompat.createFromFontInfo"
            java.lang.String r1 = com.bumptech.glide.ʽ.ˊʻ(r1)     // Catch: java.lang.Throwable -> Lc1
            android.os.Trace.beginSection(r1)     // Catch: java.lang.Throwable -> Lc1
            ﹳˋ.ٴﹶ r1 = p349.AbstractC4288.f15875     // Catch: java.lang.Throwable -> Lb2
            android.graphics.Typeface r9 = r1.ٴﹶ(r9, r10, r11)     // Catch: java.lang.Throwable -> Lb2
            android.os.Trace.endSection()     // Catch: java.lang.Throwable -> Lc1
        L9b:
            if (r9 == 0) goto La9
            r0.m6095(r8, r9)     // Catch: java.lang.Throwable -> Lc1
            ᵔٴ.ﾞᴵ r8 = new ᵔٴ.ﾞᴵ     // Catch: java.lang.Throwable -> Lc1
            r8.<init>(r9)     // Catch: java.lang.Throwable -> Lc1
            android.os.Trace.endSection()
            return r8
        La9:
            ᵔٴ.ﾞᴵ r8 = new ᵔٴ.ﾞᴵ     // Catch: java.lang.Throwable -> Lc1
            r8.<init>(r3)     // Catch: java.lang.Throwable -> Lc1
            android.os.Trace.endSection()
            return r8
        Lb2:
            r8 = move-exception
            android.os.Trace.endSection()     // Catch: java.lang.Throwable -> Lc1
            throw r8     // Catch: java.lang.Throwable -> Lc1
        Lb7:
            ᵔٴ.ﾞᴵ r8 = new ᵔٴ.ﾞᴵ     // Catch: java.lang.Throwable -> Lc1
            r9 = -1
            r8.<init>(r9)     // Catch: java.lang.Throwable -> Lc1
            android.os.Trace.endSection()
            return r8
        Lc1:
            r8 = move-exception
            android.os.Trace.endSection()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: p360.AbstractC4368.m8841(java.lang.String, android.content.Context, java.util.List, int):ᵔٴ.ﾞᴵ");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m8842(int i, List list) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < list.size(); i2++) {
            sb.append(((C4366) list.get(i2)).f16208);
            sb.append("-");
            sb.append(i);
            if (i2 < list.size() - 1) {
                sb.append(";");
            }
        }
        return sb.toString();
    }
}
