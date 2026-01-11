package androidx.leanback.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.transition.Fade;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import com.google.android.gms.internal.measurement.ᵎ;
import p272.AbstractC3483;

/* loaded from: classes.dex */
public class FadeAndShortSlide extends Visibility {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public float f549;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public ᵎ f550;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C0073 f551;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Visibility f552;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final DecelerateInterpolator f547 = new DecelerateInterpolator();

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final C0078 f544 = new C0078(0);

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final C0078 f546 = new C0078(1);

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final C0078 f543 = new C0078(2);

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final C0078 f548 = new C0078(3);

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static final C0078 f545 = new C0078(4);

    public FadeAndShortSlide(int i) {
        this.f552 = new Fade();
        this.f549 = -1.0f;
        this.f551 = new C0073(this);
        m442(i);
    }

    public FadeAndShortSlide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f552 = new Fade();
        this.f549 = -1.0f;
        this.f551 = new C0073(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC3483.f13669);
        m442(obtainStyledAttributes.getInt(3, 8388611));
        obtainStyledAttributes.recycle();
    }

    @Override // android.transition.Transition
    public final Transition addListener(Transition.TransitionListener transitionListener) {
        this.f552.addListener(transitionListener);
        return super.addListener(transitionListener);
    }

    @Override // android.transition.Visibility, android.transition.Transition
    public final void captureEndValues(TransitionValues transitionValues) {
        this.f552.captureEndValues(transitionValues);
        super.captureEndValues(transitionValues);
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put("android:fadeAndShortSlideTransition:screenPosition", iArr);
    }

    @Override // android.transition.Visibility, android.transition.Transition
    public final void captureStartValues(TransitionValues transitionValues) {
        this.f552.captureStartValues(transitionValues);
        super.captureStartValues(transitionValues);
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put("android:fadeAndShortSlideTransition:screenPosition", iArr);
    }

    @Override // android.transition.Transition
    public final Transition clone() {
        FadeAndShortSlide fadeAndShortSlide = (FadeAndShortSlide) super.clone();
        fadeAndShortSlide.f552 = (Visibility) this.f552.clone();
        return fadeAndShortSlide;
    }

    @Override // android.transition.Visibility
    public final Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null || viewGroup == view) {
            return null;
        }
        int[] iArr = (int[]) transitionValues2.values.get("android:fadeAndShortSlideTransition:screenPosition");
        int i = iArr[0];
        int i2 = iArr[1];
        float translationX = view.getTranslationX();
        ObjectAnimator objectAnimator = ʽٴ.ˈ.ﾞᴵ(view, transitionValues2, i, i2, this.f550.ʼˎ(this, viewGroup, view, iArr), this.f550.ˆʾ(this, viewGroup, view, iArr), translationX, view.getTranslationY(), f547, this);
        Animator onAppear = this.f552.onAppear(viewGroup, view, transitionValues, transitionValues2);
        if (objectAnimator == null) {
            return onAppear;
        }
        if (onAppear == null) {
            return objectAnimator;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(objectAnimator).with(onAppear);
        return animatorSet;
    }

    @Override // android.transition.Visibility
    public final Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null || viewGroup == view) {
            return null;
        }
        int[] iArr = (int[]) transitionValues.values.get("android:fadeAndShortSlideTransition:screenPosition");
        ObjectAnimator objectAnimator = ʽٴ.ˈ.ﾞᴵ(view, transitionValues, iArr[0], iArr[1], view.getTranslationX(), view.getTranslationY(), this.f550.ʼˎ(this, viewGroup, view, iArr), this.f550.ˆʾ(this, viewGroup, view, iArr), f547, this);
        Animator onDisappear = this.f552.onDisappear(viewGroup, view, transitionValues, transitionValues2);
        if (objectAnimator == null) {
            return onDisappear;
        }
        if (onDisappear == null) {
            return objectAnimator;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(objectAnimator).with(onDisappear);
        return animatorSet;
    }

    @Override // android.transition.Transition
    public final Transition removeListener(Transition.TransitionListener transitionListener) {
        this.f552.removeListener(transitionListener);
        return super.removeListener(transitionListener);
    }

    @Override // android.transition.Transition
    public final void setEpicenterCallback(Transition.EpicenterCallback epicenterCallback) {
        this.f552.setEpicenterCallback(epicenterCallback);
        super.setEpicenterCallback(epicenterCallback);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m442(int i) {
        if (i == 48) {
            this.f550 = f545;
            return;
        }
        if (i == 80) {
            this.f550 = f548;
            return;
        }
        if (i == 112) {
            this.f550 = this.f551;
            return;
        }
        if (i == 8388611) {
            this.f550 = f544;
        } else if (i == 8388613) {
            this.f550 = f546;
        } else {
            if (i != 8388615) {
                throw new IllegalArgumentException("Invalid slide direction");
            }
            this.f550 = f543;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final float m443(ViewGroup viewGroup) {
        float f = this.f549;
        return f >= 0.0f ? f : viewGroup.getHeight() / 4;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final float m444(ViewGroup viewGroup) {
        float f = this.f549;
        return f >= 0.0f ? f : viewGroup.getWidth() / 4;
    }
}
