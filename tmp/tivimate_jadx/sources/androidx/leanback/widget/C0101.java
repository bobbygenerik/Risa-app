package androidx.leanback.widget;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import ar.tvplayer.tv.R;
import p179.AbstractC2673;

/* renamed from: androidx.leanback.widget.ˈʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0101 extends AbstractC2673 implements InterfaceC0129 {

    /* renamed from: ʿ, reason: contains not printable characters */
    public final View f886;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final ImageView f887;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final View f888;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final TextView f889;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public final boolean f890;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public int f891;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public final ImageView f892;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public Animator f893;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final TextView f894;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final ImageView f895;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public C0095 f896;

    public C0101(View view, boolean z) {
        super(view);
        this.f891 = 0;
        C0099 c0099 = new C0099(0, this);
        this.f888 = view.findViewById(R.id.28m);
        this.f894 = (TextView) view.findViewById(R.id.2br);
        this.f886 = view.findViewById(R.id.4fn);
        this.f889 = (TextView) view.findViewById(R.id.7dt);
        this.f887 = (ImageView) view.findViewById(R.id.r1);
        this.f895 = (ImageView) view.findViewById(R.id.6va);
        this.f892 = (ImageView) view.findViewById(R.id.2up);
        this.f890 = z;
        view.setAccessibilityDelegate(c0099);
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m590(boolean z) {
        Animator animator = this.f893;
        if (animator != null) {
            animator.cancel();
            this.f893 = null;
        }
        int i = z ? R.attr.1mh : R.attr.2vj;
        View view = this.f10176;
        Context context = view.getContext();
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, typedValue.resourceId);
            this.f893 = loadAnimator;
            loadAnimator.setTarget(view);
            this.f893.addListener(new C0144(0, this));
            this.f893.start();
        }
    }
}
