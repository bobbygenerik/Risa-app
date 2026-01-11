package p457;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.Surface;

/* renamed from: ﾞˏ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5409 extends Surface {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static int f20658;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static boolean f20659;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f20660;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean f20661;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final HandlerThreadC5398 f20662;

    public C5409(HandlerThreadC5398 handlerThreadC5398, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.f20662 = handlerThreadC5398;
        this.f20661 = z;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static synchronized boolean m10838(Context context) {
        boolean z;
        synchronized (C5409.class) {
            try {
                if (!f20659) {
                    f20658 = m10839(context);
                    f20659 = true;
                }
                z = f20658 != 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0047 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0039 A[Catch: GlUtil$GlException -> 0x0045, TRY_LEAVE, TryCatch #0 {GlUtil$GlException -> 0x0045, blocks: (B:3:0x0001, B:7:0x0039, B:16:0x000d, B:18:0x0017, B:22:0x0024, B:25:0x0031), top: B:2:0x0001 }] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m10839(android.content.Context r5) {
        /*
            r0 = 0
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: androidx.media3.common.util.GlUtil$GlException -> L45
            r2 = 24
            if (r1 >= r2) goto L9
        L7:
            r5 = r0
            goto L37
        L9:
            r2 = 26
            if (r1 >= r2) goto L22
            java.lang.String r3 = "samsung"
            java.lang.String r4 = android.os.Build.MANUFACTURER     // Catch: androidx.media3.common.util.GlUtil$GlException -> L45
            boolean r3 = r3.equals(r4)     // Catch: androidx.media3.common.util.GlUtil$GlException -> L45
            if (r3 != 0) goto L7
            java.lang.String r3 = "XT1650"
            java.lang.String r4 = android.os.Build.MODEL     // Catch: androidx.media3.common.util.GlUtil$GlException -> L45
            boolean r3 = r3.equals(r4)     // Catch: androidx.media3.common.util.GlUtil$GlException -> L45
            if (r3 == 0) goto L22
            goto L7
        L22:
            if (r1 >= r2) goto L31
            android.content.pm.PackageManager r5 = r5.getPackageManager()     // Catch: androidx.media3.common.util.GlUtil$GlException -> L45
            java.lang.String r1 = "android.hardware.vr.high_performance"
            boolean r5 = r5.hasSystemFeature(r1)     // Catch: androidx.media3.common.util.GlUtil$GlException -> L45
            if (r5 != 0) goto L31
            goto L7
        L31:
            java.lang.String r5 = "EGL_EXT_protected_content"
            boolean r5 = p305.AbstractC3731.m7856(r5)     // Catch: androidx.media3.common.util.GlUtil$GlException -> L45
        L37:
            if (r5 == 0) goto L47
            java.lang.String r5 = "EGL_KHR_surfaceless_context"
            boolean r5 = p305.AbstractC3731.m7856(r5)     // Catch: androidx.media3.common.util.GlUtil$GlException -> L45
            if (r5 == 0) goto L43
            r5 = 1
            return r5
        L43:
            r5 = 2
            return r5
        L45:
            r5 = move-exception
            goto L48
        L47:
            return r0
        L48:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Failed to determine secure mode due to GL error: "
            r1.<init>(r2)
            java.lang.String r5 = r5.getMessage()
            r1.append(r5)
            java.lang.String r5 = r1.toString()
            java.lang.String r1 = "PlaceholderSurface"
            p305.AbstractC3731.m7842(r1, r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p457.C5409.m10839(android.content.Context):int");
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.f20662) {
            try {
                if (!this.f20660) {
                    HandlerThreadC5398 handlerThreadC5398 = this.f20662;
                    handlerThreadC5398.f20600.getClass();
                    handlerThreadC5398.f20600.sendEmptyMessage(2);
                    this.f20660 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
