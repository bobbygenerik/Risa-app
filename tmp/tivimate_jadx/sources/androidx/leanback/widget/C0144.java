package androidx.leanback.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.res.ColorStateList;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.media3.ui.AspectRatioFrameLayout;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.behavior.HideViewOnScrollBehavior;
import java.util.ArrayList;
import p005.C0833;
import p044.C1338;
import p223.C3056;
import p230.AbstractC3143;
import p381.C4547;
import p381.C4549;

/* renamed from: androidx.leanback.widget.ᵔٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0144 extends AnimatorListenerAdapter {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f999;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f1000;

    public /* synthetic */ C0144(int i, Object obj) {
        this.f1000 = i;
        this.f999 = obj;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f1000) {
            case 5:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f999;
                actionBarOverlayLayout.f122 = null;
                actionBarOverlayLayout.f118 = false;
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
            default:
                super.onAnimationCancel(animator);
                return;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                ((AspectRatioFrameLayout) this.f999).f1257 = null;
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f1000) {
            case 0:
                ((C0101) this.f999).f893 = null;
                return;
            case 1:
                C0833 c0833 = (C0833) this.f999;
                ArrayList arrayList = new ArrayList(c0833.f3571);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ColorStateList colorStateList = ((C4549) arrayList.get(i)).f17058.f17039;
                    if (colorStateList != null) {
                        c0833.setTintList(colorStateList);
                    }
                }
                return;
            case 2:
                C1338 c1338 = (C1338) this.f999;
                c1338.m4011();
                c1338.f5173.start();
                return;
            case 3:
                ((HideBottomViewOnScrollBehavior) this.f999).f2541 = null;
                return;
            case 4:
                ((HideViewOnScrollBehavior) this.f999).f2552 = null;
                return;
            case 5:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f999;
                actionBarOverlayLayout.f122 = null;
                actionBarOverlayLayout.f118 = false;
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                ((AbstractC3143) this.f999).m6899();
                animator.removeListener(this);
                return;
            default:
                ((AspectRatioFrameLayout) this.f999).f1257 = null;
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f1000) {
            case 1:
                C0833 c0833 = (C0833) this.f999;
                ArrayList arrayList = new ArrayList(c0833.f3571);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    C4547 c4547 = ((C4549) arrayList.get(i)).f17058;
                    ColorStateList colorStateList = c4547.f17039;
                    if (colorStateList != null) {
                        c0833.setTint(colorStateList.getColorForState(c4547.f17037, colorStateList.getDefaultColor()));
                    }
                }
                return;
            default:
                super.onAnimationStart(animator);
                return;
        }
    }
}
