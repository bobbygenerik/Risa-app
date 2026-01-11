package androidx.leanback.widget;

import android.content.Context;
import android.text.TextUtils;
import android.transition.ChangeTransform;
import android.transition.Fade;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.leanback.transition.C0077;
import androidx.leanback.transition.C0079;
import androidx.leanback.transition.FadeAndShortSlide;
import ar.tvplayer.tv.R;
import p229.C3112;
import p272.AbstractC3483;
import p404.C4790;

/* renamed from: androidx.leanback.widget.ˑٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0117 {

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static final ˉˆ f928;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public float f929;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public int f930;

    /* renamed from: ʽ, reason: contains not printable characters */
    public VerticalGridView f931;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public float f932;

    /* renamed from: ˈ, reason: contains not printable characters */
    public View f933;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f934;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f935;

    /* renamed from: ˏי, reason: contains not printable characters */
    public float f936;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public View f937;

    /* renamed from: יـ, reason: contains not printable characters */
    public TransitionSet f938;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public float f939;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public float f940;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f941;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public float f942;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public int f943;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public VerticalGridView f944;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public ViewGroup f945;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public C0095 f946 = null;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public float f947;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f948;

    static {
        ˉˆ r0 = new ˉˆ(1, false);
        r0.ᴵˊ = new C0123[]{new C0123()};
        f928 = r0;
        C0123 c0123 = new C0123();
        c0123.f969 = R.id.2br;
        c0123.f967 = true;
        c0123.f968 = 0;
        c0123.f966 = true;
        c0123.m634(0.0f);
        r0.ᴵˊ = new C0123[]{c0123};
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m613(C0101 c0101) {
        boolean z = c0101.f890;
        View view = c0101.f886;
        View view2 = c0101.f10176;
        float f = 0.0f;
        if (!z) {
            C0095 c0095 = this.f946;
            if (c0095 == null) {
                view2.setVisibility(0);
                view2.setTranslationY(0.0f);
                if (view != null) {
                    view.setActivated(false);
                    if (view2 instanceof GuidedActionItemContainer) {
                        ((GuidedActionItemContainer) view2).f649 = true;
                    }
                }
            } else if (c0101.f896 == c0095) {
                view2.setVisibility(0);
                c0101.f896.getClass();
                if (view != null) {
                    view2.setTranslationY(0.0f);
                    view.setActivated(true);
                    if (view2 instanceof GuidedActionItemContainer) {
                        ((GuidedActionItemContainer) view2).f649 = false;
                    }
                }
            } else {
                view2.setVisibility(4);
                view2.setTranslationY(0.0f);
            }
        }
        ImageView imageView = c0101.f892;
        if (imageView != null) {
            C0095 c00952 = c0101.f896;
            boolean z2 = (c00952.f875 & 4) == 4;
            if (!z2) {
                imageView.setVisibility(8);
                return;
            }
            imageView.setVisibility(0);
            imageView.setAlpha(c00952.m580() ? this.f939 : this.f947);
            if (!z2) {
                if (c00952 == this.f946) {
                    imageView.setRotation(270.0f);
                    return;
                } else {
                    imageView.setRotation(90.0f);
                    return;
                }
            }
            ViewGroup viewGroup = this.f945;
            if (viewGroup != null && viewGroup.getLayoutDirection() == 1) {
                f = 180.0f;
            }
            imageView.setRotation(f);
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ViewGroup m614(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        float f = layoutInflater.getContext().getTheme().obtainStyledAttributes(AbstractC3483.f13671).getFloat(46, 40.0f);
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(this.f948 ? R.layout.7dn : R.layout.4ap, viewGroup, false);
        this.f945 = viewGroup2;
        this.f937 = viewGroup2.findViewById(this.f948 ? R.id.3e1 : R.id.25n);
        ViewGroup viewGroup3 = this.f945;
        if (viewGroup3 instanceof VerticalGridView) {
            this.f944 = (VerticalGridView) viewGroup3;
        } else {
            VerticalGridView verticalGridView = (VerticalGridView) viewGroup3.findViewById(this.f948 ? R.id.6bo : R.id.42b);
            this.f944 = verticalGridView;
            if (verticalGridView == null) {
                throw new IllegalStateException("No ListView exists.");
            }
            verticalGridView.setWindowAlignmentOffsetPercent(f);
            this.f944.setWindowAlignment(0);
            if (!this.f948) {
                this.f931 = (VerticalGridView) this.f945.findViewById(R.id.1sn);
                this.f933 = this.f945.findViewById(R.id.i4);
            }
        }
        this.f944.setFocusable(false);
        this.f944.setFocusableInTouchMode(false);
        Context context = this.f945.getContext();
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.68g, typedValue, true);
        this.f939 = typedValue.getFloat();
        context.getTheme().resolveAttribute(R.attr.4ai, typedValue, true);
        this.f947 = typedValue.getFloat();
        context.getTheme().resolveAttribute(R.attr.5lo, typedValue, true);
        this.f934 = context.getResources().getInteger(typedValue.resourceId);
        context.getTheme().resolveAttribute(R.attr.6fg, typedValue, true);
        this.f941 = context.getResources().getInteger(typedValue.resourceId);
        context.getTheme().resolveAttribute(R.attr.1rk, typedValue, true);
        this.f935 = context.getResources().getInteger(typedValue.resourceId);
        context.getTheme().resolveAttribute(R.attr.647, typedValue, true);
        this.f930 = context.getResources().getDimensionPixelSize(typedValue.resourceId);
        this.f943 = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getHeight();
        context.getResources().getValue(R.dimen.1qb, typedValue, true);
        this.f940 = typedValue.getFloat();
        context.getResources().getValue(R.dimen.45s, typedValue, true);
        this.f942 = typedValue.getFloat();
        context.getResources().getValue(R.dimen.70t, typedValue, true);
        this.f929 = typedValue.getFloat();
        context.getResources().getValue(R.dimen.2le, typedValue, true);
        this.f932 = typedValue.getFloat();
        this.f936 = GuidanceStylingRelativeLayout.m539(context);
        View view = this.f937;
        if (view instanceof GuidedActionsRelativeLayout) {
            ((GuidedActionsRelativeLayout) view).f650 = new C0138(this);
        }
        return this.f945;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public C0101 m615(ViewGroup viewGroup) {
        return new C0101(LayoutInflater.from(viewGroup.getContext()).inflate(m621(), viewGroup, false), viewGroup == this.f931);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m616(C0101 c0101, boolean z, boolean z2) {
        View view = c0101.f886;
        View view2 = c0101.f10176;
        if (z) {
            m618(c0101, z2);
            view2.setFocusable(false);
            view.requestFocus();
            view.setOnClickListener(new ViewOnClickListenerC0143(this, c0101));
            return;
        }
        view2.setFocusable(true);
        view2.requestFocus();
        m618(null, z2);
        view.setOnClickListener(null);
        view.setClickable(false);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m617(C0101 c0101, boolean z, boolean z2) {
        if (z == (c0101.f891 != 0) || this.f938 != null) {
            return;
        }
        C0095 c0095 = c0101.f896;
        View view = c0101.f886;
        TextView textView = c0101.f894;
        TextView textView2 = c0101.f889;
        if (!z) {
            if (textView != null) {
                textView.setText(c0095.f871);
            }
            if (textView2 != null) {
                textView2.setText(c0095.f873);
            }
            int i = c0101.f891;
            if (i == 2) {
                if (textView2 != null) {
                    textView2.setVisibility(TextUtils.isEmpty(c0095.f873) ? 8 : 0);
                    textView2.setInputType(c0095.f872);
                }
            } else if (i == 1) {
                if (textView != null) {
                    textView.setInputType(c0095.f870);
                }
            } else if (i == 3 && view != null) {
                m616(c0101, z, z2);
            }
            c0101.f891 = 0;
            return;
        }
        CharSequence charSequence = c0095.f882;
        if (textView != null && charSequence != null) {
            textView.setText(charSequence);
        }
        CharSequence charSequence2 = c0095.f877;
        if (textView2 != null && charSequence2 != null) {
            textView2.setText(charSequence2);
        }
        if (c0095.f878 == 2) {
            if (textView2 != null) {
                textView2.setVisibility(0);
                textView2.setInputType(c0095.f881);
                textView2.requestFocusFromTouch();
            }
            c0101.f891 = 2;
            return;
        }
        if (c0095.m579()) {
            if (textView != null) {
                textView.setInputType(c0095.f876);
                textView.requestFocusFromTouch();
            }
            c0101.f891 = 1;
            return;
        }
        if (view != null) {
            m616(c0101, z, z2);
            c0101.f891 = 3;
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m618(C0101 c0101, boolean z) {
        C0101 c01012;
        int childCount = this.f944.getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                c01012 = null;
                break;
            }
            VerticalGridView verticalGridView = this.f944;
            c01012 = (C0101) verticalGridView.m946(verticalGridView.getChildAt(i));
            if ((c0101 == null && c01012.f10176.getVisibility() == 0) || (c0101 != null && c01012.f896 == c0101.f896)) {
                break;
            } else {
                i++;
            }
        }
        if (c01012 == null) {
            return;
        }
        c01012.f896.getClass();
        if (z) {
            TransitionSet transitionSet = new TransitionSet();
            transitionSet.setOrdering(0);
            FadeAndShortSlide fadeAndShortSlide = new FadeAndShortSlide(112);
            fadeAndShortSlide.f549 = c01012.f10176.getHeight() * 0.5f;
            fadeAndShortSlide.setEpicenterCallback(new C3112(2, new C4790(this)));
            ChangeTransform changeTransform = new ChangeTransform();
            C0079 c0079 = new C0079();
            c0079.setReparent(false);
            Fade fade = new Fade(3);
            C0079 c00792 = new C0079();
            c00792.setReparent(false);
            if (c0101 == null) {
                fadeAndShortSlide.setStartDelay(150L);
                changeTransform.setStartDelay(100L);
                c0079.setStartDelay(100L);
                c00792.setStartDelay(100L);
            } else {
                fade.setStartDelay(100L);
                c00792.setStartDelay(50L);
                changeTransform.setStartDelay(50L);
                c0079.setStartDelay(50L);
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                VerticalGridView verticalGridView2 = this.f944;
                C0101 c01013 = (C0101) verticalGridView2.m946(verticalGridView2.getChildAt(i2));
                if (c01013 != c01012) {
                    fadeAndShortSlide.addTarget(c01013.f10176);
                    fade.excludeTarget(c01013.f10176, true);
                }
            }
            c00792.addTarget(this.f931);
            c00792.addTarget(this.f933);
            transitionSet.addTransition(fadeAndShortSlide);
            transitionSet.addTransition(fade);
            transitionSet.addTransition(c00792);
            this.f938 = transitionSet;
            transitionSet.addListener((Transition.TransitionListener) new C0077(0, new ﹳי.ʽ(this)));
            TransitionManager.beginDelayedTransition(this.f945, this.f938);
        }
        if (c0101 == null) {
            this.f946 = null;
            this.f944.setPruneChild(true);
        } else {
            C0095 c0095 = c0101.f896;
            if (c0095 != this.f946) {
                this.f946 = c0095;
                this.f944.setPruneChild(false);
            }
        }
        this.f944.setAnimateChildLayout(false);
        int childCount2 = this.f944.getChildCount();
        for (int i3 = 0; i3 < childCount2; i3++) {
            VerticalGridView verticalGridView3 = this.f944;
            m613((C0101) verticalGridView3.m946(verticalGridView3.getChildAt(i3)));
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m619(C0101 c0101, boolean z) {
        c0101.m590(z);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m620(boolean z) {
        if (this.f938 == null && this.f946 != null) {
            C0108 c0108 = (C0108) this.f944.getAdapter();
            int indexOf = c0108.f909.indexOf(this.f946);
            if (indexOf < 0) {
                return;
            }
            if (this.f946.m585()) {
                m617((C0101) this.f944.m979(indexOf, false), false, z);
            } else {
                m618(null, z);
            }
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int m621() {
        return R.layout.3e7;
    }
}
