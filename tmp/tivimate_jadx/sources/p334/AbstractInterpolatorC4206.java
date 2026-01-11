package p334;

import android.support.v4.media.session.AbstractC0001;
import android.view.animation.Interpolator;

/* renamed from: ᵎʻ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractInterpolatorC4206 implements Interpolator {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final float f15649;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final float[] f15650;

    public AbstractInterpolatorC4206(float[] fArr) {
        this.f15650 = fArr;
        this.f15649 = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f15650;
        int min = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f2 = this.f15649;
        float f3 = (f - (min * f2)) / f2;
        float f4 = fArr[min];
        return AbstractC0001.m23(fArr[min + 1], f4, f3, f4);
    }
}
