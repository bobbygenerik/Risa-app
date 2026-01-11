package p229;

import android.transition.Transition;
import android.view.View;
import java.util.ArrayList;

/* renamed from: ˑʼ.ˈˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3091 implements Transition.TransitionListener {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f11779;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ View f11780;

    public C3091(View view, ArrayList arrayList) {
        this.f11780 = view;
        this.f11779 = arrayList;
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
        this.f11780.setVisibility(8);
        ArrayList arrayList = this.f11779;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((View) arrayList.get(i)).setVisibility(0);
        }
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionStart(Transition transition) {
        transition.removeListener(this);
        transition.addListener(this);
    }
}
