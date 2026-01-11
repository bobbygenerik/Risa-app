package p186;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.animation.PathInterpolator;
import java.util.Collections;
import p349.C4292;

/* renamed from: ˋᵔ.ʼˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2771 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ C2816 f10531;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ int f10532;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ View f10533;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C2816 f10534;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ C2783 f10535;

    public C2771(C2783 c2783, C2816 c2816, C2816 c28162, int i, View view) {
        this.f10535 = c2783;
        this.f10534 = c2816;
        this.f10531 = c28162;
        this.f10532 = i;
        this.f10533 = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        C2783 c2783 = this.f10535;
        AbstractC2782 abstractC2782 = c2783.f10541;
        abstractC2782.mo6191(animatedFraction);
        C2816 c2816 = this.f10534;
        C2822 c2822 = c2816.f10589;
        float mo6189 = abstractC2782.mo6189();
        PathInterpolator pathInterpolator = C2834.f10632;
        int i = Build.VERSION.SDK_INT;
        AbstractC2797 c2769 = i >= 34 ? new C2769(c2816) : i >= 31 ? new C2818(c2816) : i >= 30 ? new C2800(c2816) : i >= 29 ? new C2815(c2816) : new C2824(c2816);
        for (int i2 = 1; i2 <= 512; i2 <<= 1) {
            if ((this.f10532 & i2) == 0) {
                c2769.mo6168(i2, c2822.mo6167(i2));
            } else {
                C4292 mo6167 = c2822.mo6167(i2);
                C4292 mo61672 = this.f10531.f10589.mo6167(i2);
                float f = 1.0f - mo6189;
                c2769.mo6168(i2, C2816.m6252(mo6167, (int) (((mo6167.f15891 - mo61672.f15891) * f) + 0.5d), (int) (((mo6167.f15890 - mo61672.f15890) * f) + 0.5d), (int) (((mo6167.f15888 - mo61672.f15888) * f) + 0.5d), (int) (((mo6167.f15889 - mo61672.f15889) * f) + 0.5d)));
            }
        }
        C2834.m6294(this.f10533, c2769.mo6223(), Collections.singletonList(c2783));
    }
}
