package p167;

import android.animation.ValueAnimator;

/* renamed from: ˊᵔ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2609 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C2604 f9889;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C2610 f9890;

    public C2609(C2604 c2604) {
        this.f9889 = c2604;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m5862() {
        boolean unregisterDurationScaleChangeListener = ValueAnimator.unregisterDurationScaleChangeListener(this.f9890);
        this.f9890 = null;
        return unregisterDurationScaleChangeListener;
    }
}
