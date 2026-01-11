package p229;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import p137.AbstractC2305;
import ʽⁱ.ᵎﹶ;

/* renamed from: ˑʼ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3132 extends AnimatorListenerAdapter {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ boolean f11966;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ C3081 f11967;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ C3077 f11968;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ View f11969;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ ViewGroup f11970;

    public C3132(ViewGroup viewGroup, View view, boolean z, C3081 c3081, C3077 c3077) {
        this.f11970 = viewGroup;
        this.f11969 = view;
        this.f11966 = z;
        this.f11967 = c3081;
        this.f11968 = c3077;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        ViewGroup viewGroup = this.f11970;
        View view = this.f11969;
        viewGroup.endViewTransition(view);
        boolean z = this.f11966;
        C3081 c3081 = this.f11967;
        if (z || c3081.f11709 == 3) {
            AbstractC2305.m5381(c3081.f11709, view, viewGroup);
        }
        C3077 c3077 = this.f11968;
        ((C3081) ((ᵎﹶ) c3077.f11693).ʾˋ).m6643(c3077);
        if (C3085.m6654(2)) {
            String str = "Animator from operation " + c3081 + " has ended.";
        }
    }
}
