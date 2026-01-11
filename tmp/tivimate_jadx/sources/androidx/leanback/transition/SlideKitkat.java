package androidx.leanback.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import ar.tvplayer.tv.R;
import p272.AbstractC3483;

/* loaded from: classes.dex */
class SlideKitkat extends Visibility {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC0080 f561;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final DecelerateInterpolator f558 = new DecelerateInterpolator();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final AccelerateInterpolator f553 = new AccelerateInterpolator();

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final C0074 f554 = new C0074(0);

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final C0075 f559 = new C0075(0);

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final C0074 f556 = new C0074(1);

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final C0075 f557 = new C0075(1);

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final C0074 f555 = new C0074(2);

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final C0074 f560 = new C0074(3);

    public SlideKitkat(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC3483.f13669);
        int i = obtainStyledAttributes.getInt(3, 80);
        if (i == 3) {
            this.f561 = f554;
        } else if (i == 5) {
            this.f561 = f556;
        } else if (i == 48) {
            this.f561 = f559;
        } else if (i == 80) {
            this.f561 = f557;
        } else if (i == 8388611) {
            this.f561 = f555;
        } else {
            if (i != 8388613) {
                throw new IllegalArgumentException("Invalid slide direction");
            }
            this.f561 = f560;
        }
        long j = obtainStyledAttributes.getInt(1, -1);
        if (j >= 0) {
            setDuration(j);
        }
        long j2 = obtainStyledAttributes.getInt(2, -1);
        if (j2 > 0) {
            setStartDelay(j2);
        }
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId > 0) {
            setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static ObjectAnimator m445(View view, Property property, float f, float f2, float f3, TimeInterpolator timeInterpolator, int i) {
        float[] fArr = (float[]) view.getTag(R.id.12o);
        if (fArr != null) {
            f = View.TRANSLATION_Y == property ? fArr[1] : fArr[0];
            view.setTag(R.id.12o, null);
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, f, f2);
        C0076 c0076 = new C0076(view, property, f3, f2, i);
        ofFloat.addListener(c0076);
        ofFloat.addPauseListener(c0076);
        ofFloat.setInterpolator(timeInterpolator);
        return ofFloat;
    }

    @Override // android.transition.Visibility
    public final Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int i, TransitionValues transitionValues2, int i2) {
        View view = transitionValues2 != null ? transitionValues2.view : null;
        if (view == null) {
            return null;
        }
        float m455 = this.f561.m455(view);
        return m445(view, this.f561.m456(), this.f561.m457(view), m455, m455, f558, 0);
    }

    @Override // android.transition.Visibility
    public final Animator onDisappear(ViewGroup viewGroup, TransitionValues transitionValues, int i, TransitionValues transitionValues2, int i2) {
        View view = transitionValues != null ? transitionValues.view : null;
        if (view == null) {
            return null;
        }
        float m455 = this.f561.m455(view);
        return m445(view, this.f561.m456(), m455, this.f561.m457(view), m455, f553, 4);
    }
}
