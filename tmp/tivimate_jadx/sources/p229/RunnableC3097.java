package p229;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;
import p186.ViewTreeObserverOnPreDrawListenerC2831;

/* renamed from: ˑʼ.ˉٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC3097 extends AnimationSet implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f11803;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ViewGroup f11804;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f11805;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final View f11806;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f11807;

    public RunnableC3097(Animation animation, ViewGroup viewGroup, View view) {
        super(false);
        this.f11807 = true;
        this.f11804 = viewGroup;
        this.f11806 = view;
        addAnimation(animation);
        viewGroup.post(this);
    }

    @Override // android.view.animation.AnimationSet, android.view.animation.Animation
    public final boolean getTransformation(long j, Transformation transformation) {
        this.f11807 = true;
        if (this.f11803) {
            return !this.f11805;
        }
        if (!super.getTransformation(j, transformation)) {
            this.f11803 = true;
            ViewTreeObserverOnPreDrawListenerC2831.m6289(this.f11804, this);
        }
        return true;
    }

    @Override // android.view.animation.Animation
    public final boolean getTransformation(long j, Transformation transformation, float f) {
        this.f11807 = true;
        if (this.f11803) {
            return !this.f11805;
        }
        if (!super.getTransformation(j, transformation, f)) {
            this.f11803 = true;
            ViewTreeObserverOnPreDrawListenerC2831.m6289(this.f11804, this);
        }
        return true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z = this.f11803;
        ViewGroup viewGroup = this.f11804;
        if (z || !this.f11807) {
            viewGroup.endViewTransition(this.f11806);
            this.f11805 = true;
        } else {
            this.f11807 = false;
            viewGroup.post(this);
        }
    }
}
