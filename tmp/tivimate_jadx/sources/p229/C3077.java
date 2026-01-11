package p229;

import android.animation.AnimatorSet;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import p036.C1267;
import p404.C4790;
import ʽⁱ.ᵎﹶ;

/* renamed from: ˑʼ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3077 extends AbstractC3111 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3128 f11693;

    /* renamed from: ˈ, reason: contains not printable characters */
    public AnimatorSet f11694;

    public C3077(C3128 c3128) {
        this.f11693 = c3128;
    }

    @Override // p229.AbstractC3111
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo6637(ViewGroup viewGroup) {
        C3081 c3081 = (C3081) ((ᵎﹶ) this.f11693).ʾˋ;
        AnimatorSet animatorSet = this.f11694;
        if (animatorSet == null) {
            c3081.m6643(this);
            return;
        }
        animatorSet.start();
        if (C3085.m6654(2)) {
            String str = "Animator from operation " + c3081 + " has started.";
        }
    }

    @Override // p229.AbstractC3111
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo6638(C1267 c1267) {
        C3081 c3081 = (C3081) ((ᵎﹶ) this.f11693).ʾˋ;
        AnimatorSet animatorSet = this.f11694;
        if (animatorSet == null) {
            c3081.m6643(this);
            return;
        }
        if (Build.VERSION.SDK_INT < 34 || !c3081.f11701.f11899) {
            return;
        }
        if (C3085.m6654(2)) {
            String str = "Adding BackProgressCallbacks for Animators to operation " + c3081;
        }
        long m6716 = C3087.f11772.m6716(animatorSet);
        long j = c1267.f4920 * ((float) m6716);
        if (j == 0) {
            j = 1;
        }
        if (j == m6716) {
            j = m6716 - 1;
        }
        if (C3085.m6654(2)) {
            String str2 = "Setting currentPlayTime to " + j + " for Animator " + animatorSet + " on operation " + c3081;
        }
        C3116.f11859.m6758(animatorSet, j);
    }

    @Override // p229.AbstractC3111
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void mo6639(ViewGroup viewGroup) {
        C3077 c3077;
        C3128 c3128 = this.f11693;
        if (c3128.ʼـ()) {
            return;
        }
        C4790 m6862 = c3128.m6862(viewGroup.getContext());
        this.f11694 = m6862 != null ? (AnimatorSet) m6862.f18034 : null;
        C3081 c3081 = (C3081) ((ᵎﹶ) c3128).ʾˋ;
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = c3081.f11701;
        boolean z = c3081.f11709 == 3;
        View view = abstractComponentCallbacksC3123.f11908;
        viewGroup.startViewTransition(view);
        AnimatorSet animatorSet = this.f11694;
        if (animatorSet != null) {
            c3077 = this;
            animatorSet.addListener(new C3132(viewGroup, view, z, c3081, c3077));
        } else {
            c3077 = this;
        }
        AnimatorSet animatorSet2 = c3077.f11694;
        if (animatorSet2 != null) {
            animatorSet2.setTarget(view);
        }
    }

    @Override // p229.AbstractC3111
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo6640(ViewGroup viewGroup) {
        AnimatorSet animatorSet = this.f11694;
        C3128 c3128 = this.f11693;
        if (animatorSet == null) {
            ((C3081) ((ᵎﹶ) c3128).ʾˋ).m6643(this);
            return;
        }
        C3081 c3081 = (C3081) ((ᵎﹶ) c3128).ʾˋ;
        if (!c3081.f11706) {
            animatorSet.end();
        } else if (Build.VERSION.SDK_INT >= 26) {
            C3116.f11859.m6759(animatorSet);
        }
        if (C3085.m6654(2)) {
            StringBuilder sb = new StringBuilder("Animator from operation ");
            sb.append(c3081);
            sb.append(" has been canceled");
            sb.append(c3081.f11706 ? " with seeking." : ".");
            sb.append(' ');
            sb.toString();
        }
    }
}
