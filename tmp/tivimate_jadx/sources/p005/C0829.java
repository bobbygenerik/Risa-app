package p005;

import android.content.res.ColorStateList;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;
import p381.C4547;
import p381.C4549;

/* renamed from: ʻˈ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0829 extends Animatable2.AnimationCallback {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ C4549 f3534;

    public C0829(C4549 c4549) {
        this.f3534 = c4549;
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationEnd(Drawable drawable) {
        ColorStateList colorStateList = this.f3534.f17058.f17039;
        if (colorStateList != null) {
            drawable.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationStart(Drawable drawable) {
        C4547 c4547 = this.f3534.f17058;
        ColorStateList colorStateList = c4547.f17039;
        if (colorStateList != null) {
            drawable.setTint(colorStateList.getColorForState(c4547.f17037, colorStateList.getDefaultColor()));
        }
    }
}
