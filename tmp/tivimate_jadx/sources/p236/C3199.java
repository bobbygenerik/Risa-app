package p236;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import java.util.ArrayList;
import p255.C3368;

/* renamed from: ˑˏ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3199 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3368 f12242 = new C3368(0);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3368 f12241 = new C3368(0);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object, ˑˏ.ʽ] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C3199 m7036(ArrayList arrayList) {
        C3199 c3199 = new C3199();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Animator animator = (Animator) arrayList.get(i);
            if (!(animator instanceof ObjectAnimator)) {
                throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
            }
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            c3199.f12241.put(objectAnimator.getPropertyName(), objectAnimator.getValues());
            String propertyName = objectAnimator.getPropertyName();
            long startDelay = objectAnimator.getStartDelay();
            long duration = objectAnimator.getDuration();
            TimeInterpolator interpolator = objectAnimator.getInterpolator();
            ?? obj = new Object();
            obj.f12237 = 0;
            obj.f12238 = 1;
            obj.f12240 = startDelay;
            obj.f12239 = duration;
            obj.f12236 = interpolator;
            obj.f12237 = objectAnimator.getRepeatCount();
            obj.f12238 = objectAnimator.getRepeatMode();
            c3199.f12242.put(propertyName, obj);
        }
        return c3199;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C3199 m7037(Context context, int i) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (loadAnimator instanceof AnimatorSet) {
                return m7036(((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(loadAnimator);
            return m7036(arrayList);
        } catch (Exception e) {
            String str = "Can't load animation resource ID #0x" + Integer.toHexString(i);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C3199) {
            return this.f12242.equals(((C3199) obj).f12242);
        }
        return false;
    }

    public final int hashCode() {
        return this.f12242.hashCode();
    }

    public final String toString() {
        return "\n" + C3199.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f12242 + "}\n";
    }
}
