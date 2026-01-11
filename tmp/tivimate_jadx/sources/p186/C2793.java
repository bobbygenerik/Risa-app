package p186;

import android.view.View;
import android.view.WindowInsetsAnimation;
import p349.C4292;
import ʽⁱ.ᵎﹶ;

/* renamed from: ˋᵔ.ˉـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2793 extends AbstractC2782 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final WindowInsetsAnimation f10547;

    public C2793(WindowInsetsAnimation windowInsetsAnimation) {
        super(0, null, 0L);
        this.f10547 = windowInsetsAnimation;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static C4292 m6204(WindowInsetsAnimation.Bounds bounds) {
        return C4292.m8692(bounds.getLowerBound());
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static void m6205(View view, ᵎﹶ r2) {
        view.setWindowInsetsAnimationCallback(new C2820(r2));
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static C4292 m6206(WindowInsetsAnimation.Bounds bounds) {
        return C4292.m8692(bounds.getUpperBound());
    }

    @Override // p186.AbstractC2782
    /* renamed from: ʽ */
    public final float mo6189() {
        return this.f10547.getInterpolatedFraction();
    }

    @Override // p186.AbstractC2782
    /* renamed from: ˈ */
    public final int mo6190() {
        return this.f10547.getTypeMask();
    }

    @Override // p186.AbstractC2782
    /* renamed from: ˑﹳ */
    public final void mo6191(float f) {
        this.f10547.setFraction(f);
    }

    @Override // p186.AbstractC2782
    /* renamed from: ⁱˊ */
    public final long mo6192() {
        return this.f10547.getDurationMillis();
    }

    @Override // p186.AbstractC2782
    /* renamed from: ﹳٴ */
    public final float mo6193() {
        return this.f10547.getAlpha();
    }
}
