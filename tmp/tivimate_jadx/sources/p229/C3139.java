package p229;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.leanback.transition.C0077;
import androidx.media3.decoder.ffmpeg.C0212;
import java.util.ArrayList;
import java.util.List;

/* renamed from: ˑʼ.ﹳﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3139 extends AbstractC3104 {
    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static boolean m6891(Transition transition) {
        return (AbstractC3104.m6726(transition.getTargetIds()) && AbstractC3104.m6726(transition.getTargetNames()) && AbstractC3104.m6726(transition.getTargetTypes())) ? false : true;
    }

    @Override // p229.AbstractC3104
    /* renamed from: ʻٴ */
    public final void mo6728(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, Object obj, C0212 c0212, Runnable runnable) {
        ((Transition) obj).addListener(new C0077(1, runnable));
    }

    @Override // p229.AbstractC3104
    /* renamed from: ʼʼ */
    public final Object mo6729(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition((Transition) obj);
        return transitionSet;
    }

    @Override // p229.AbstractC3104
    /* renamed from: ʼᐧ */
    public final void mo6731(Object obj, View view, ArrayList arrayList) {
        ((Transition) obj).addListener(new C3091(view, arrayList));
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final void m6892(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        List<View> targets;
        Transition transition = (Transition) obj;
        int i = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            while (i < transitionCount) {
                m6892(transitionSet.getTransitionAt(i), arrayList, arrayList2);
                i++;
            }
            return;
        }
        if (m6891(transition) || (targets = transition.getTargets()) == null || targets.size() != arrayList.size() || !targets.containsAll(arrayList)) {
            return;
        }
        int size = arrayList2 == null ? 0 : arrayList2.size();
        while (i < size) {
            transition.addTarget((View) arrayList2.get(i));
            i++;
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            transition.removeTarget((View) arrayList.get(size2));
        }
    }

    @Override // p229.AbstractC3104
    /* renamed from: ʾᵎ */
    public final void mo6734(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.getTargets().clear();
            transitionSet.getTargets().addAll(arrayList2);
            m6892(transitionSet, arrayList, arrayList2);
        }
    }

    @Override // p229.AbstractC3104
    /* renamed from: ˉʿ */
    public final boolean mo6736(Object obj) {
        if (!C3085.m6654(2)) {
            return false;
        }
        String str = "Predictive back not available for framework transition " + obj + ". Please switch to AndroidX Transition 1.5.0 or higher to enable seeking.";
        return false;
    }

    @Override // p229.AbstractC3104
    /* renamed from: ˉˆ */
    public final Object mo6737(Object obj, Object obj2) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.addTransition((Transition) obj);
        }
        transitionSet.addTransition((Transition) obj2);
        return transitionSet;
    }

    @Override // p229.AbstractC3104
    /* renamed from: ˏי */
    public final void mo6738(Object obj, Rect rect) {
        ((Transition) obj).setEpicenterCallback(new C3112(1, rect));
    }

    @Override // p229.AbstractC3104
    /* renamed from: ˑﹳ */
    public final void mo6739(ViewGroup viewGroup, Object obj) {
        TransitionManager.beginDelayedTransition(viewGroup, (Transition) obj);
    }

    @Override // p229.AbstractC3104
    /* renamed from: יـ */
    public final void mo6740(View view, Object obj) {
        if (view != null) {
            Rect rect = new Rect();
            AbstractC3104.m6725(view, rect);
            ((Transition) obj).setEpicenterCallback(new C3112(0, rect));
        }
    }

    @Override // p229.AbstractC3104
    /* renamed from: ـˆ */
    public final void mo6741(Object obj, View view, ArrayList arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        List<View> targets = transitionSet.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AbstractC3104.m6727(targets, (View) arrayList.get(i));
        }
        targets.add(view);
        arrayList.add(view);
        mo6746(transitionSet, arrayList);
    }

    @Override // p229.AbstractC3104
    /* renamed from: ᵎﹶ */
    public final boolean mo6742(Object obj) {
        return obj instanceof Transition;
    }

    @Override // p229.AbstractC3104
    /* renamed from: ᵔʾ */
    public final Object mo6743(Object obj, Object obj2, Object obj3) {
        Transition transition = (Transition) obj;
        Transition transition2 = (Transition) obj2;
        Transition transition3 = (Transition) obj3;
        if (transition != null && transition2 != null) {
            transition = new TransitionSet().addTransition(transition).addTransition(transition2).setOrdering(1);
        } else if (transition == null) {
            transition = transition2 != null ? transition2 : null;
        }
        if (transition3 == null) {
            return transition;
        }
        TransitionSet transitionSet = new TransitionSet();
        if (transition != null) {
            transitionSet.addTransition(transition);
        }
        transitionSet.addTransition(transition3);
        return transitionSet;
    }

    @Override // p229.AbstractC3104
    /* renamed from: ᵔᵢ */
    public final Object mo6744(Object obj) {
        if (obj != null) {
            return ((Transition) obj).clone();
        }
        return null;
    }

    @Override // p229.AbstractC3104
    /* renamed from: ᵔﹳ */
    public final void mo6745(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2) {
        ((Transition) obj).addListener(new C3140(this, obj2, arrayList, obj3, arrayList2));
    }

    @Override // p229.AbstractC3104
    /* renamed from: ⁱˊ */
    public final void mo6746(Object obj, ArrayList arrayList) {
        Transition transition = (Transition) obj;
        if (transition == null) {
            return;
        }
        int i = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            while (i < transitionCount) {
                mo6746(transitionSet.getTransitionAt(i), arrayList);
                i++;
            }
            return;
        }
        if (m6891(transition) || !AbstractC3104.m6726(transition.getTargets())) {
            return;
        }
        int size = arrayList.size();
        while (i < size) {
            transition.addTarget((View) arrayList.get(i));
            i++;
        }
    }

    @Override // p229.AbstractC3104
    /* renamed from: ﹳٴ */
    public final void mo6747(View view, Object obj) {
        ((Transition) obj).addTarget(view);
    }

    @Override // p229.AbstractC3104
    /* renamed from: ﾞʻ */
    public final boolean mo6749() {
        return C3085.m6654(4) ? false : false;
    }
}
