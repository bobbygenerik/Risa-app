package p186;

import android.view.animation.Interpolator;

/* renamed from: ˋᵔ.ʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2782 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Interpolator f10537;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f10538;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public float f10539;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f10540;

    public AbstractC2782(int i, Interpolator interpolator, long j) {
        this.f10540 = i;
        this.f10537 = interpolator;
        this.f10538 = j;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public float mo6189() {
        Interpolator interpolator = this.f10537;
        return interpolator != null ? interpolator.getInterpolation(this.f10539) : this.f10539;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public int mo6190() {
        return this.f10540;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void mo6191(float f) {
        this.f10539 = f;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public long mo6192() {
        return this.f10538;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public float mo6193() {
        return 1.0f;
    }
}
