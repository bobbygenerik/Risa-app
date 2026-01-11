package p044;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.TextView;
import p137.C2312;

/* renamed from: ʽˊ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1347 extends AnimatorListenerAdapter {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f5190;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ TextView f5191;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ C1336 f5192;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ TextView f5193;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f5194;

    public C1347(C1336 c1336, int i, TextView textView, int i2, TextView textView2) {
        this.f5192 = c1336;
        this.f5194 = i;
        this.f5193 = textView;
        this.f5190 = i2;
        this.f5191 = textView2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        C2312 c2312;
        int i = this.f5194;
        C1336 c1336 = this.f5192;
        c1336.f5150 = i;
        c1336.f5157 = null;
        TextView textView = this.f5193;
        if (textView != null) {
            textView.setVisibility(4);
            if (this.f5190 == 1 && (c2312 = c1336.f5156) != null) {
                c2312.setText((CharSequence) null);
            }
        }
        TextView textView2 = this.f5191;
        if (textView2 != null) {
            textView2.setTranslationY(0.0f);
            textView2.setAlpha(1.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        TextView textView = this.f5191;
        if (textView != null) {
            textView.setVisibility(0);
            textView.setAlpha(0.0f);
        }
    }
}
