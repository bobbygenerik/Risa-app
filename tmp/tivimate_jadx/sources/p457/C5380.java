package p457;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.SystemClock;
import android.view.Surface;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3721;

/* renamed from: ﾞˏ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5380 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f20485;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public boolean f20486;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f20487;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public boolean f20488;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f20491;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public boolean f20492;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C5405 f20494;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC5389 f20495;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f20489 = 0;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long f20497 = -9223372036854775807L;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public long f20493 = -9223372036854775807L;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public long f20484 = -9223372036854775807L;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public float f20490 = 1.0f;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public C3721 f20496 = C3721.f14496;

    public C5380(Context context, AbstractC5389 abstractC5389, long j) {
        this.f20495 = abstractC5389;
        this.f20485 = j;
        this.f20494 = new C5405(context);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m10772(float f) {
        AbstractC3731.m7849(f > 0.0f);
        if (f == this.f20490) {
            return;
        }
        this.f20490 = f;
        C5405 c5405 = this.f20494;
        c5405.f20630 = f;
        c5405.f20635 = 0L;
        c5405.f20631 = -1L;
        c5405.f20640 = -1L;
        c5405.m10835(false);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m10773(boolean z) {
        long j;
        this.f20486 = z;
        long j2 = this.f20485;
        if (j2 > 0) {
            this.f20496.getClass();
            j = SystemClock.elapsedRealtime() + j2;
        } else {
            j = -9223372036854775807L;
        }
        this.f20484 = j;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m10774() {
        this.f20487 = true;
        this.f20496.getClass();
        this.f20491 = AbstractC3712.m7757(SystemClock.elapsedRealtime());
        C5405 c5405 = this.f20494;
        c5405.f20634 = true;
        c5405.f20635 = 0L;
        c5405.f20631 = -1L;
        c5405.f20640 = -1L;
        C5388 c5388 = c5405.f20643;
        if (c5388 != null) {
            DisplayManager displayManager = c5388.f20518;
            ChoreographerFrameCallbackC5381 choreographerFrameCallbackC5381 = c5405.f20632;
            choreographerFrameCallbackC5381.getClass();
            choreographerFrameCallbackC5381.f20502.sendEmptyMessage(2);
            displayManager.registerDisplayListener(c5388, AbstractC3712.m7759(null));
            C5405.m10833(c5388.f20519, displayManager.getDisplay(0));
        }
        c5405.m10835(false);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m10775() {
        this.f20487 = false;
        this.f20484 = -9223372036854775807L;
        C5405 c5405 = this.f20494;
        c5405.f20634 = false;
        C5388 c5388 = c5405.f20643;
        if (c5388 != null) {
            c5388.f20518.unregisterDisplayListener(c5388);
            ChoreographerFrameCallbackC5381 choreographerFrameCallbackC5381 = c5405.f20632;
            choreographerFrameCallbackC5381.getClass();
            choreographerFrameCallbackC5381.f20502.sendEmptyMessage(3);
        }
        c5405.m10836();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m10776(float f) {
        C5405 c5405 = this.f20494;
        c5405.f20646 = f;
        C5410 c5410 = c5405.f20644;
        c5410.f20667.m10827();
        c5410.f20666.m10827();
        c5410.f20663 = false;
        c5410.f20664 = -9223372036854775807L;
        c5410.f20665 = 0;
        c5405.m10834();
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m10777(Surface surface) {
        this.f20488 = surface != null;
        this.f20492 = false;
        C5405 c5405 = this.f20494;
        if (c5405.f20637 != surface) {
            c5405.m10836();
            c5405.f20637 = surface;
            c5405.m10835(true);
        }
        this.f20489 = Math.min(this.f20489, 1);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m10778(boolean z) {
        if (z && (this.f20489 == 3 || (!this.f20488 && this.f20492))) {
            this.f20484 = -9223372036854775807L;
            return true;
        }
        if (this.f20484 == -9223372036854775807L) {
            return false;
        }
        this.f20496.getClass();
        if (SystemClock.elapsedRealtime() < this.f20484) {
            return true;
        }
        this.f20484 = -9223372036854775807L;
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:121:0x0149, code lost:
    
        if (r4 > 100000) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0155, code lost:
    
        if (r29 >= r33) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x007a, code lost:
    
        if ((r9 == 0 ? false : r7.f20586[(int) ((r9 - 1) % 15)]) != false) goto L24;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x015c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x015d  */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m10779(long r27, long r29, long r31, long r33, boolean r35, boolean r36, p004.C0812 r37) {
        /*
            Method dump skipped, instructions count: 601
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p457.C5380.m10779(long, long, long, long, boolean, boolean, ʻˆ.ﹳٴ):int");
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m10780(int i) {
        if (i == 0) {
            this.f20489 = 1;
        } else if (i == 1) {
            this.f20489 = 0;
        } else {
            if (i != 2) {
                throw new IllegalStateException();
            }
            this.f20489 = Math.min(this.f20489, 2);
        }
    }
}
