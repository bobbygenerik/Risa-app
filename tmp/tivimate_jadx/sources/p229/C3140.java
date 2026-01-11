package p229;

import android.transition.Transition;
import java.util.ArrayList;

/* renamed from: ˑʼ.ﹶᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3140 implements Transition.TransitionListener {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f12016;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f12017;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ C3139 f12018;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f12019;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ Object f12020;

    public C3140(C3139 c3139, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2) {
        this.f12018 = c3139;
        this.f12020 = obj;
        this.f12019 = arrayList;
        this.f12016 = obj2;
        this.f12017 = arrayList2;
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionStart(Transition transition) {
        C3139 c3139 = this.f12018;
        Object obj = this.f12020;
        if (obj != null) {
            c3139.m6892(obj, this.f12019, null);
        }
        Object obj2 = this.f12016;
        if (obj2 != null) {
            c3139.m6892(obj2, this.f12017, null);
        }
    }
}
