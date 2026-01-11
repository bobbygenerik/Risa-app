package androidx.leanback.transition;

import android.animation.Animator;
import android.transition.ChangeBounds;
import android.transition.TransitionValues;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;

/* renamed from: androidx.leanback.transition.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0079 extends ChangeBounds {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final HashMap f585 = new HashMap();

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final SparseIntArray f586 = new SparseIntArray();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final HashMap f584 = new HashMap();

    @Override // android.transition.ChangeBounds, android.transition.Transition
    public final Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        View view;
        int intValue;
        Animator createAnimator = super.createAnimator(viewGroup, transitionValues, transitionValues2);
        if (createAnimator != null && transitionValues2 != null && (view = transitionValues2.view) != null) {
            Integer num = (Integer) this.f585.get(view);
            if (num != null) {
                intValue = num.intValue();
            } else {
                int i = this.f586.get(view.getId(), -1);
                if (i != -1) {
                    intValue = i;
                } else {
                    Integer num2 = (Integer) this.f584.get(view.getClass().getName());
                    intValue = num2 != null ? num2.intValue() : 0;
                }
            }
            createAnimator.setStartDelay(intValue);
        }
        return createAnimator;
    }
}
