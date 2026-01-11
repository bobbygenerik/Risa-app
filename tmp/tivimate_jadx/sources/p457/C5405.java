package p457;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.view.Display;
import android.view.Surface;
import p158.AbstractC2528;
import p305.AbstractC3731;

/* renamed from: ﾞˏ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5405 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public float f20630;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public long f20631;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ChoreographerFrameCallbackC5381 f20632;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f20633;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f20634;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public long f20635;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public long f20636;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Surface f20637;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public long f20638;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public float f20639;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public long f20640;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public float f20641;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public long f20642;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C5388 f20643;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C5410 f20644;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public long f20645;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public float f20646;

    /* JADX WARN: Type inference failed for: r0v0, types: [ﾞˏ.ﾞᴵ, java.lang.Object] */
    public C5405(Context context) {
        DisplayManager displayManager;
        ?? obj = new Object();
        obj.f20667 = new C5395();
        obj.f20666 = new C5395();
        obj.f20664 = -9223372036854775807L;
        this.f20644 = obj;
        C5388 c5388 = (context == null || (displayManager = (DisplayManager) context.getSystemService("display")) == null) ? null : new C5388(this, displayManager);
        this.f20643 = c5388;
        this.f20632 = c5388 != null ? ChoreographerFrameCallbackC5381.f20498 : null;
        this.f20638 = -9223372036854775807L;
        this.f20645 = -9223372036854775807L;
        this.f20646 = -1.0f;
        this.f20630 = 1.0f;
        this.f20633 = 0;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m10833(C5405 c5405, Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / display.getRefreshRate());
            c5405.f20638 = refreshRate;
            c5405.f20645 = (refreshRate * 80) / 100;
        } else {
            AbstractC3731.m7850("VideoFrameReleaseHelper", "Unable to query display refresh rate");
            c5405.f20638 = -9223372036854775807L;
            c5405.f20645 = -9223372036854775807L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m10834() {
        /*
            r9 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 30
            if (r0 < r1) goto L8d
            android.view.Surface r0 = r9.f20637
            if (r0 != 0) goto Lc
            goto L8d
        Lc:
            ﾞˏ.ﾞᴵ r0 = r9.f20644
            ﾞˏ.ˑﹳ r2 = r0.f20667
            boolean r2 = r2.m10829()
            r3 = -1082130432(0xffffffffbf800000, float:-1.0)
            if (r2 == 0) goto L39
            ﾞˏ.ˑﹳ r2 = r0.f20667
            boolean r2 = r2.m10829()
            if (r2 == 0) goto L37
            ﾞˏ.ˑﹳ r2 = r0.f20667
            long r4 = r2.f20585
            r6 = 0
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 != 0) goto L2b
            goto L2e
        L2b:
            long r6 = r2.f20590
            long r6 = r6 / r4
        L2e:
            double r4 = (double) r6
            r6 = 4741671816366391296(0x41cdcd6500000000, double:1.0E9)
            double r6 = r6 / r4
            float r2 = (float) r6
            goto L3b
        L37:
            r2 = r3
            goto L3b
        L39:
            float r2 = r9.f20646
        L3b:
            float r4 = r9.f20639
            int r5 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r5 != 0) goto L42
            goto L8d
        L42:
            int r5 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r5 == 0) goto L80
            int r3 = (r4 > r3 ? 1 : (r4 == r3 ? 0 : -1))
            if (r3 == 0) goto L80
            ﾞˏ.ˑﹳ r1 = r0.f20667
            boolean r1 = r1.m10829()
            if (r1 == 0) goto L71
            ﾞˏ.ˑﹳ r1 = r0.f20667
            boolean r1 = r1.m10829()
            if (r1 == 0) goto L5f
            ﾞˏ.ˑﹳ r0 = r0.f20667
            long r0 = r0.f20590
            goto L64
        L5f:
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L64:
            r3 = 5000000000(0x12a05f200, double:2.470328229E-314)
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 < 0) goto L71
            r0 = 1017370378(0x3ca3d70a, float:0.02)
            goto L73
        L71:
            r0 = 1065353216(0x3f800000, float:1.0)
        L73:
            float r1 = r9.f20639
            float r1 = r2 - r1
            float r1 = java.lang.Math.abs(r1)
            int r0 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r0 < 0) goto L8d
            goto L87
        L80:
            if (r5 == 0) goto L83
            goto L87
        L83:
            int r0 = r0.f20665
            if (r0 < r1) goto L8d
        L87:
            r9.f20639 = r2
            r0 = 0
            r9.m10835(r0)
        L8d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p457.C5405.m10834():void");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m10835(boolean z) {
        Surface surface;
        float f;
        if (Build.VERSION.SDK_INT < 30 || (surface = this.f20637) == null || this.f20633 == Integer.MIN_VALUE) {
            return;
        }
        if (this.f20634) {
            float f2 = this.f20639;
            if (f2 != -1.0f) {
                f = f2 * this.f20630;
                if (z && this.f20641 == f) {
                    return;
                }
                this.f20641 = f;
                AbstractC2528.m5652(surface, f);
            }
        }
        f = 0.0f;
        if (z) {
        }
        this.f20641 = f;
        AbstractC2528.m5652(surface, f);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m10836() {
        Surface surface;
        if (Build.VERSION.SDK_INT < 30 || (surface = this.f20637) == null || this.f20633 == Integer.MIN_VALUE || this.f20641 == 0.0f) {
            return;
        }
        this.f20641 = 0.0f;
        AbstractC2528.m5652(surface, 0.0f);
    }
}
