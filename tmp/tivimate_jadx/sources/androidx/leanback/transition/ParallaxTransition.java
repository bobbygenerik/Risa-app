package androidx.leanback.transition;

import android.animation.Animator;
import android.content.Context;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import ar.tvplayer.tv.R;

/* loaded from: classes.dex */
public class ParallaxTransition extends Visibility {
    static {
        new LinearInterpolator();
    }

    public ParallaxTransition(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.transition.Visibility
    public final Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null || view.getTag(R.id.5fc) == null) {
            return null;
        }
        throw new ClassCastException();
    }

    @Override // android.transition.Visibility
    public final Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null || view.getTag(R.id.5fc) == null) {
            return null;
        }
        throw new ClassCastException();
    }
}
