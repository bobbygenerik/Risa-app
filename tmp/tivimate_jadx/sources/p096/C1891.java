package p096;

import android.animation.TimeInterpolator;

/* renamed from: ˆʾ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1891 implements TimeInterpolator {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f7538;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f7539;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int[] f7540;

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        int i = (int) ((f * this.f7538) + 0.5f);
        int i2 = this.f7539;
        int[] iArr = this.f7540;
        int i3 = 0;
        while (i3 < i2) {
            int i4 = iArr[i3];
            if (i < i4) {
                break;
            }
            i -= i4;
            i3++;
        }
        return (i3 / i2) + (i3 < i2 ? i / this.f7538 : 0.0f);
    }
}
