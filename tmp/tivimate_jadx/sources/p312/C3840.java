package p312;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import ar.tvplayer.tv.R;
import com.google.android.material.datepicker.ViewOnClickListenerC0663;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: ᐧⁱ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3840 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final ViewGroup f14851;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final AnimatorSet f14852;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ViewGroup f14853;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f14856;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final ViewOnLayoutChangeListenerC3876 f14857;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final View f14858;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ViewGroup f14859;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final AnimatorSet f14860;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final AnimatorSet f14861;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final ViewGroup f14863;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final View f14866;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f14867;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final ViewGroup f14868;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final AnimatorSet f14869;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final ViewGroup f14870;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final ValueAnimator f14871;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final View f14873;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3860 f14874;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final ValueAnimator f14875;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final AnimatorSet f14876;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final ViewGroup f14877;

    /* renamed from: יـ, reason: contains not printable characters */
    public final RunnableC3846 f14864 = new RunnableC3846(this, 0);

    /* renamed from: ˏי, reason: contains not printable characters */
    public final RunnableC3846 f14862 = new RunnableC3846(this, 3);

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final RunnableC3846 f14855 = new RunnableC3846(this, 4);

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final RunnableC3846 f14849 = new RunnableC3846(this, 5);

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final RunnableC3846 f14865 = new RunnableC3846(this, 6);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f14854 = true;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public int f14872 = 0;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final ArrayList f14850 = new ArrayList();

    public C3840(C3860 c3860) {
        this.f14874 = c3860;
        final int i = 0;
        final int i2 = 3;
        final int i3 = 1;
        this.f14857 = new ViewOnLayoutChangeListenerC3876(i3, this);
        this.f14873 = c3860.findViewById(R.id.2sm);
        this.f14853 = (ViewGroup) c3860.findViewById(R.id.30t);
        this.f14863 = (ViewGroup) c3860.findViewById(R.id.39);
        ViewGroup viewGroup = (ViewGroup) c3860.findViewById(R.id.600);
        this.f14859 = viewGroup;
        this.f14851 = (ViewGroup) c3860.findViewById(R.id.5u0);
        View findViewById = c3860.findViewById(R.id.tb);
        this.f14858 = findViewById;
        this.f14877 = (ViewGroup) c3860.findViewById(R.id.1te);
        this.f14868 = (ViewGroup) c3860.findViewById(R.id.5g7);
        this.f14870 = (ViewGroup) c3860.findViewById(R.id.jj);
        View findViewById2 = c3860.findViewById(R.id.2g9);
        this.f14866 = findViewById2;
        View findViewById3 = c3860.findViewById(R.id.176);
        if (findViewById2 != null && findViewById3 != null) {
            findViewById2.setOnClickListener(new ViewOnClickListenerC0663(14, this));
            findViewById3.setOnClickListener(new ViewOnClickListenerC0663(14, this));
        }
        final int i4 = 2;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: ᐧⁱ.ʻٴ

            /* renamed from: ⁱˊ, reason: contains not printable characters */
            public final /* synthetic */ C3840 f14847;

            {
                this.f14847 = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i2) {
                    case 0:
                        C3840 c3840 = this.f14847;
                        c3840.getClass();
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view = c3840.f14873;
                        if (view != null) {
                            view.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup2 = c3840.f14853;
                        if (viewGroup2 != null) {
                            viewGroup2.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup3 = c3840.f14863;
                        if (viewGroup3 != null) {
                            viewGroup3.setAlpha(floatValue);
                            return;
                        }
                        return;
                    case 1:
                        C3840 c38402 = this.f14847;
                        c38402.getClass();
                        c38402.m8010(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    case 2:
                        C3840 c38403 = this.f14847;
                        c38403.getClass();
                        c38403.m8010(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    default:
                        C3840 c38404 = this.f14847;
                        c38404.getClass();
                        float floatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view2 = c38404.f14873;
                        if (view2 != null) {
                            view2.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup4 = c38404.f14853;
                        if (viewGroup4 != null) {
                            viewGroup4.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup5 = c38404.f14863;
                        if (viewGroup5 != null) {
                            viewGroup5.setAlpha(floatValue2);
                            return;
                        }
                        return;
                }
            }
        });
        ofFloat.addListener(new C3864(this, 0));
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: ᐧⁱ.ʻٴ

            /* renamed from: ⁱˊ, reason: contains not printable characters */
            public final /* synthetic */ C3840 f14847;

            {
                this.f14847 = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i) {
                    case 0:
                        C3840 c3840 = this.f14847;
                        c3840.getClass();
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view = c3840.f14873;
                        if (view != null) {
                            view.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup2 = c3840.f14853;
                        if (viewGroup2 != null) {
                            viewGroup2.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup3 = c3840.f14863;
                        if (viewGroup3 != null) {
                            viewGroup3.setAlpha(floatValue);
                            return;
                        }
                        return;
                    case 1:
                        C3840 c38402 = this.f14847;
                        c38402.getClass();
                        c38402.m8010(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    case 2:
                        C3840 c38403 = this.f14847;
                        c38403.getClass();
                        c38403.m8010(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    default:
                        C3840 c38404 = this.f14847;
                        c38404.getClass();
                        float floatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view2 = c38404.f14873;
                        if (view2 != null) {
                            view2.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup4 = c38404.f14853;
                        if (viewGroup4 != null) {
                            viewGroup4.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup5 = c38404.f14863;
                        if (viewGroup5 != null) {
                            viewGroup5.setAlpha(floatValue2);
                            return;
                        }
                        return;
                }
            }
        });
        ofFloat2.addListener(new C3864(this, 1));
        Resources resources = c3860.getResources();
        float dimension = resources.getDimension(R.dimen.142) - resources.getDimension(R.dimen.1v2);
        float dimension2 = resources.getDimension(R.dimen.142);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f14876 = animatorSet;
        animatorSet.setDuration(250L);
        animatorSet.addListener(new C3848(this, c3860, i));
        animatorSet.play(ofFloat).with(m8003(findViewById, 0.0f, dimension)).with(m8003(viewGroup, 0.0f, dimension));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f14860 = animatorSet2;
        animatorSet2.setDuration(250L);
        animatorSet2.addListener(new C3848(this, c3860, i3));
        animatorSet2.play(m8003(findViewById, dimension, dimension2)).with(m8003(viewGroup, dimension, dimension2));
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.f14869 = animatorSet3;
        animatorSet3.setDuration(250L);
        animatorSet3.addListener(new C3848(this, c3860, i4));
        animatorSet3.play(ofFloat).with(m8003(findViewById, 0.0f, dimension2)).with(m8003(viewGroup, 0.0f, dimension2));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.f14861 = animatorSet4;
        animatorSet4.setDuration(250L);
        animatorSet4.addListener(new C3864(this, 2));
        animatorSet4.play(ofFloat2).with(m8003(findViewById, dimension, 0.0f)).with(m8003(viewGroup, dimension, 0.0f));
        AnimatorSet animatorSet5 = new AnimatorSet();
        this.f14852 = animatorSet5;
        animatorSet5.setDuration(250L);
        animatorSet5.addListener(new C3864(this, 3));
        animatorSet5.play(ofFloat2).with(m8003(findViewById, dimension2, 0.0f)).with(m8003(viewGroup, dimension2, 0.0f));
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f14871 = ofFloat3;
        ofFloat3.setDuration(250L);
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: ᐧⁱ.ʻٴ

            /* renamed from: ⁱˊ, reason: contains not printable characters */
            public final /* synthetic */ C3840 f14847;

            {
                this.f14847 = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i3) {
                    case 0:
                        C3840 c3840 = this.f14847;
                        c3840.getClass();
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view = c3840.f14873;
                        if (view != null) {
                            view.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup2 = c3840.f14853;
                        if (viewGroup2 != null) {
                            viewGroup2.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup3 = c3840.f14863;
                        if (viewGroup3 != null) {
                            viewGroup3.setAlpha(floatValue);
                            return;
                        }
                        return;
                    case 1:
                        C3840 c38402 = this.f14847;
                        c38402.getClass();
                        c38402.m8010(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    case 2:
                        C3840 c38403 = this.f14847;
                        c38403.getClass();
                        c38403.m8010(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    default:
                        C3840 c38404 = this.f14847;
                        c38404.getClass();
                        float floatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view2 = c38404.f14873;
                        if (view2 != null) {
                            view2.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup4 = c38404.f14853;
                        if (viewGroup4 != null) {
                            viewGroup4.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup5 = c38404.f14863;
                        if (viewGroup5 != null) {
                            viewGroup5.setAlpha(floatValue2);
                            return;
                        }
                        return;
                }
            }
        });
        ofFloat3.addListener(new C3864(this, 4));
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.f14875 = ofFloat4;
        ofFloat4.setDuration(250L);
        ofFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: ᐧⁱ.ʻٴ

            /* renamed from: ⁱˊ, reason: contains not printable characters */
            public final /* synthetic */ C3840 f14847;

            {
                this.f14847 = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i4) {
                    case 0:
                        C3840 c3840 = this.f14847;
                        c3840.getClass();
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view = c3840.f14873;
                        if (view != null) {
                            view.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup2 = c3840.f14853;
                        if (viewGroup2 != null) {
                            viewGroup2.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup3 = c3840.f14863;
                        if (viewGroup3 != null) {
                            viewGroup3.setAlpha(floatValue);
                            return;
                        }
                        return;
                    case 1:
                        C3840 c38402 = this.f14847;
                        c38402.getClass();
                        c38402.m8010(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    case 2:
                        C3840 c38403 = this.f14847;
                        c38403.getClass();
                        c38403.m8010(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    default:
                        C3840 c38404 = this.f14847;
                        c38404.getClass();
                        float floatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view2 = c38404.f14873;
                        if (view2 != null) {
                            view2.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup4 = c38404.f14853;
                        if (viewGroup4 != null) {
                            viewGroup4.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup5 = c38404.f14863;
                        if (viewGroup5 != null) {
                            viewGroup5.setAlpha(floatValue2);
                            return;
                        }
                        return;
                }
            }
        });
        ofFloat4.addListener(new C3864(this, 5));
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m8001(View view) {
        if (view == null) {
            return 0;
        }
        int width = view.getWidth();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return width;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + width;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static boolean m8002(View view) {
        int id = view.getId();
        return id == R.id.600 || id == R.id.4t8 || id == R.id.6oh || id == R.id.1na || id == R.id.2ti || id == R.id.vq || id == R.id.574;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static ObjectAnimator m8003(View view, float f, float f2) {
        return ObjectAnimator.ofFloat(view, "translationY", f, f2);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m8004(int i) {
        int i2 = this.f14872;
        this.f14872 = i;
        C3860 c3860 = this.f14874;
        if (i == 2) {
            c3860.setVisibility(8);
        } else if (i2 == 2) {
            c3860.setVisibility(0);
        }
        if (i2 != i) {
            Iterator it = c3860.f15001.iterator();
            while (it.hasNext()) {
                InterfaceC3863 interfaceC3863 = (InterfaceC3863) it.next();
                c3860.getVisibility();
                ((ViewOnClickListenerC3868) interfaceC3863).f15051.m8030();
            }
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m8005(Runnable runnable, long j) {
        if (j >= 0) {
            this.f14874.postDelayed(runnable, j);
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m8006() {
        if (!this.f14854) {
            m8004(0);
            m8007();
            return;
        }
        int i = this.f14872;
        if (i == 1) {
            this.f14861.start();
        } else if (i == 2) {
            this.f14852.start();
        } else if (i == 3) {
            this.f14867 = true;
        } else if (i == 4) {
            return;
        }
        m8007();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m8007() {
        if (this.f14872 == 3) {
            return;
        }
        m8011();
        int showTimeoutMs = this.f14874.getShowTimeoutMs();
        if (showTimeoutMs > 0) {
            if (!this.f14854) {
                m8005(this.f14865, showTimeoutMs);
            } else if (this.f14872 == 1) {
                m8005(this.f14855, 2000L);
            } else {
                m8005(this.f14849, showTimeoutMs);
            }
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m8008(View view, boolean z) {
        if (view == null) {
            return;
        }
        ArrayList arrayList = this.f14850;
        if (!z) {
            view.setVisibility(8);
            arrayList.remove(view);
            return;
        }
        if (this.f14856 && m8002(view)) {
            view.setVisibility(4);
        } else {
            view.setVisibility(0);
        }
        arrayList.add(view);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m8009(View view) {
        return view != null && this.f14850.contains(view);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m8010(float f) {
        ViewGroup viewGroup = this.f14870;
        if (viewGroup != null) {
            viewGroup.setTranslationX((int) ((1.0f - f) * viewGroup.getWidth()));
        }
        ViewGroup viewGroup2 = this.f14851;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(1.0f - f);
        }
        ViewGroup viewGroup3 = this.f14877;
        if (viewGroup3 != null) {
            viewGroup3.setAlpha(1.0f - f);
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m8011() {
        RunnableC3846 runnableC3846 = this.f14865;
        C3860 c3860 = this.f14874;
        c3860.removeCallbacks(runnableC3846);
        c3860.removeCallbacks(this.f14862);
        c3860.removeCallbacks(this.f14849);
        c3860.removeCallbacks(this.f14855);
    }
}
