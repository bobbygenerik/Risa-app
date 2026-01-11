package p229;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.parse.ˊﾞ;

/* renamed from: ˑʼ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class AnimationAnimationListenerC3106 implements Animation.AnimationListener {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ View f11836;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ C3142 f11837;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ ViewGroup f11838;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ C3081 f11839;

    public AnimationAnimationListenerC3106(C3081 c3081, ViewGroup viewGroup, View view, C3142 c3142) {
        this.f11839 = c3081;
        this.f11838 = viewGroup;
        this.f11836 = view;
        this.f11837 = c3142;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        ViewGroup viewGroup = this.f11838;
        viewGroup.post(new ˊﾞ(viewGroup, this.f11836, this.f11837, 3));
        if (C3085.m6654(2)) {
            String str = "Animation from operation " + this.f11839 + " has ended.";
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
        if (C3085.m6654(2)) {
            String str = "Animation from operation " + this.f11839 + " has reached onAnimationStart.";
        }
    }
}
