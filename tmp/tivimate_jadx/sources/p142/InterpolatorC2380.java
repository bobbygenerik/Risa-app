package p142;

import android.view.animation.Interpolator;

/* renamed from: ˉـ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class InterpolatorC2380 implements Interpolator {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f9176;

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        switch (this.f9176) {
            case 0:
            default:
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }
}
