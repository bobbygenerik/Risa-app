package p044;

import android.animation.ValueAnimator;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.textfield.TextInputLayout;
import p179.C2726;
import p188.C2844;
import p188.C2861;

/* renamed from: ʽˊ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1344 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f5184;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f5185;

    public /* synthetic */ C1344(int i, Object obj) {
        this.f5185 = i;
        this.f5184 = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f5185) {
            case 0:
                ((TextInputLayout) this.f5184).f2858.m5173(((Float) valueAnimator.getAnimatedValue()).floatValue());
                return;
            case 1:
                int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
                C2726 c2726 = (C2726) this.f5184;
                c2726.f10393.setAlpha(floatValue);
                c2726.f10398.setAlpha(floatValue);
                c2726.f10403.invalidate();
                return;
            default:
                float floatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                C2844 c2844 = ((BottomSheetBehavior) this.f5184).f2569;
                if (c2844 != null) {
                    C2861 c2861 = c2844.f10671;
                    if (c2861.f10742 != floatValue2) {
                        c2861.f10742 = floatValue2;
                        c2844.f10661 = true;
                        c2844.f10668 = true;
                        c2844.invalidateSelf();
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
