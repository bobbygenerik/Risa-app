package p230;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import ar.tvplayer.tv.R;

/* renamed from: ˑʿ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3145 extends AbstractC3161 {
    public C3145(int i) {
        this.f12090 = i;
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public static float m6935(C3171 c3171, float f) {
        Float f2;
        return (c3171 == null || (f2 = (Float) c3171.f12115.get("android:fade:transitionAlpha")) == null) ? f : f2.floatValue();
    }

    @Override // p230.AbstractC3161, p230.AbstractC3143
    /* renamed from: ʼˎ */
    public final void mo6898(C3171 c3171) {
        AbstractC3161.m6959(c3171);
        View view = c3171.f12114;
        Float f = (Float) view.getTag(R.id.5e4);
        if (f == null) {
            f = view.getVisibility() == 0 ? Float.valueOf(AbstractC3168.f12105.mo5067(view)) : Float.valueOf(0.0f);
        }
        c3171.f12115.put("android:fade:transitionAlpha", f);
    }

    /* renamed from: ʿ, reason: contains not printable characters */
    public final ObjectAnimator m6936(View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        AbstractC3168.f12105.mo5068(view, f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, AbstractC3168.f12104, f2);
        C3178 c3178 = new C3178(view);
        ofFloat.addListener(c3178);
        m6900().m6932(c3178);
        return ofFloat;
    }

    @Override // p230.AbstractC3161
    /* renamed from: ˉـ, reason: contains not printable characters */
    public final Animator mo6937(View view, C3171 c3171, C3171 c31712) {
        C3176 c3176 = AbstractC3168.f12105;
        c3176.getClass();
        ObjectAnimator m6936 = m6936(view, m6935(c3171, 1.0f), 0.0f);
        if (m6936 == null) {
            c3176.mo5068(view, m6935(c31712, 1.0f));
        }
        return m6936;
    }

    @Override // p230.AbstractC3161
    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final Animator mo6938(View view, C3171 c3171) {
        AbstractC3168.f12105.getClass();
        return m6936(view, m6935(c3171, 0.0f), 1.0f);
    }

    @Override // p230.AbstractC3143
    /* renamed from: ᵢˏ */
    public final boolean mo6930() {
        return true;
    }
}
