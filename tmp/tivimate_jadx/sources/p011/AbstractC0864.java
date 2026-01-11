package p011;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Looper;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.leanback.widget.RunnableC0142;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceScreen;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import ar.tvplayer.tv.R;
import p053.AbstractC1436;
import p121.RunnableC2028;
import p137.AbstractC2305;
import p179.AbstractC2669;
import p229.AbstractComponentCallbacksC3123;
import p229.C3085;
import p229.C3105;
import p229.C3137;

/* renamed from: ʻᐧ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0864 extends AbstractComponentCallbacksC3123 {

    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public C0850 f3679;

    /* renamed from: ʿـ, reason: contains not printable characters */
    public boolean f3680;

    /* renamed from: ـˊ, reason: contains not printable characters */
    public RecyclerView f3681;

    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public boolean f3683;

    /* renamed from: ⁱי, reason: contains not printable characters */
    public RunnableC2028 f3684;

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public final C0878 f3682 = new C0878(this);

    /* renamed from: ﹳⁱ, reason: contains not printable characters */
    public int f3685 = R.layout.3ep;

    /* renamed from: ʻʿ, reason: contains not printable characters */
    public final HandlerC0874 f3678 = new HandlerC0874(this, Looper.getMainLooper(), 0);

    /* renamed from: ﹶ, reason: contains not printable characters */
    public final RunnableC0142 f3686 = new RunnableC0142(5, this);

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public void mo3061(View view, Bundle bundle) {
        Bundle bundle2;
        PreferenceScreen preferenceScreen;
        if (bundle != null && (bundle2 = bundle.getBundle("android:preferences")) != null && (preferenceScreen = this.f3679.f3641) != null) {
            preferenceScreen.mo844(bundle2);
        }
        if (this.f3683) {
            PreferenceScreen preferenceScreen2 = this.f3679.f3641;
            if (preferenceScreen2 != null) {
                this.f3681.setAdapter(new C0867(preferenceScreen2));
                preferenceScreen2.mo846();
            }
            RunnableC2028 runnableC2028 = this.f3684;
            if (runnableC2028 != null) {
                runnableC2028.run();
                this.f3684 = null;
            }
        }
        this.f3680 = true;
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʽᵔ */
    public void mo421(Bundle bundle) {
        super.mo421(bundle);
        TypedValue typedValue = new TypedValue();
        m6779().getTheme().resolveAttribute(R.attr.5lg, typedValue, true);
        int i = typedValue.resourceId;
        if (i == 0) {
            i = R.style.f262746lm;
        }
        m6779().getTheme().applyStyle(i, false);
        C0850 c0850 = new C0850(m6779());
        this.f3679 = c0850;
        c0850.f3638 = this;
        Bundle bundle2 = this.f11906;
        m3064(bundle2 != null ? bundle2.getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT") : null);
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʾˊ */
    public void mo423() {
        RunnableC0142 runnableC0142 = this.f3686;
        HandlerC0874 handlerC0874 = this.f3678;
        handlerC0874.removeCallbacks(runnableC0142);
        handlerC0874.removeMessages(1);
        if (this.f3683) {
            this.f3681.setAdapter(null);
            PreferenceScreen preferenceScreen = this.f3679.f3641;
            if (preferenceScreen != null) {
                preferenceScreen.mo831();
            }
        }
        this.f3681 = null;
        this.f11926 = true;
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʾﾞ */
    public void mo424(Bundle bundle) {
        PreferenceScreen preferenceScreen = this.f3679.f3641;
        if (preferenceScreen != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreen.mo832(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public AbstractComponentCallbacksC3123 mo3062() {
        return null;
    }

    /* renamed from: ˋـ, reason: contains not printable characters */
    public final void m3063(int i, String str) {
        C0850 c0850 = this.f3679;
        if (c0850 == null) {
            throw new RuntimeException("This should be called after super.onCreate.");
        }
        Context m6779 = m6779();
        c0850.f3640 = true;
        C0857 c0857 = new C0857(m6779, c0850);
        XmlResourceParser xml = m6779.getResources().getXml(i);
        try {
            PreferenceGroup m3055 = c0857.m3055(xml);
            xml.close();
            PreferenceScreen preferenceScreen = (PreferenceScreen) m3055;
            preferenceScreen.m836(c0850);
            SharedPreferences.Editor editor = c0850.f3639;
            if (editor != null) {
                editor.apply();
            }
            c0850.f3640 = false;
            PreferenceScreen preferenceScreen2 = preferenceScreen;
            if (str != null) {
                Preference m848 = preferenceScreen.m848(str);
                boolean z = m848 instanceof PreferenceScreen;
                preferenceScreen2 = m848;
                if (!z) {
                    throw new IllegalArgumentException(AbstractC2305.m5378("Preference object with key ", str, " is not a PreferenceScreen"));
                }
            }
            m3067(preferenceScreen2);
        } catch (Throwable th) {
            xml.close();
            throw th;
        }
    }

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public abstract void m3064(String str);

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public boolean m3065(Preference preference) {
        String str = preference.f1354;
        boolean z = false;
        if (str == null) {
            return false;
        }
        if (mo3062() instanceof AbstractC1436) {
            ((AbstractC1436) mo3062()).getClass();
            z = true;
        }
        for (AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this; !z && abstractComponentCallbacksC3123 != null; abstractComponentCallbacksC3123 = abstractComponentCallbacksC3123.f11928) {
            if (abstractComponentCallbacksC3123 instanceof AbstractC1436) {
                z = true;
            }
        }
        if (!z) {
            mo4203();
        }
        if (!z) {
            C3085 m6805 = m6805();
            Bundle m835 = preference.m835();
            C3105 m6699 = m6805.m6699();
            m6806().getClassLoader();
            AbstractComponentCallbacksC3123 m6752 = m6699.m6752(str);
            m6752.m6807(m835);
            m6752.m6790(this);
            C3137 c3137 = new C3137(m6805);
            c3137.m6889(((View) m6810().getParent()).getId(), m6752, null);
            c3137.m6880(null);
            c3137.m6890();
        }
        return true;
    }

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public RecyclerView mo3066(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        RecyclerView recyclerView;
        if (m6779().getPackageManager().hasSystemFeature("android.hardware.type.automotive") && (recyclerView = (RecyclerView) viewGroup.findViewById(R.id.gq)) != null) {
            return recyclerView;
        }
        RecyclerView recyclerView2 = (RecyclerView) layoutInflater.inflate(R.layout.697, viewGroup, false);
        m6779();
        recyclerView2.setLayoutManager(new LinearLayoutManager(1));
        recyclerView2.setAccessibilityDelegateCompat(new C0875(recyclerView2));
        return recyclerView2;
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ᐧˎ */
    public final void mo2400() {
        this.f11926 = true;
        C0850 c0850 = this.f3679;
        c0850.f3642 = null;
        c0850.f3636 = null;
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ᐧﹶ */
    public View mo435(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        TypedArray obtainStyledAttributes = m6779().obtainStyledAttributes(null, AbstractC0869.f3709, R.attr.65s, 0);
        this.f3685 = obtainStyledAttributes.getResourceId(0, this.f3685);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, -1);
        boolean z = obtainStyledAttributes.getBoolean(3, true);
        obtainStyledAttributes.recycle();
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(m6779());
        View inflate = cloneInContext.inflate(this.f3685, viewGroup, false);
        View findViewById = inflate.findViewById(android.R.id.list_container);
        if (!(findViewById instanceof ViewGroup)) {
            throw new IllegalStateException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
        }
        ViewGroup viewGroup2 = (ViewGroup) findViewById;
        RecyclerView mo3066 = mo3066(cloneInContext, viewGroup2);
        this.f3681 = mo3066;
        C0878 c0878 = this.f3682;
        mo3066.m935(c0878);
        if (drawable != null) {
            c0878.getClass();
            c0878.f3732 = drawable.getIntrinsicHeight();
        } else {
            c0878.f3732 = 0;
        }
        c0878.f3733 = drawable;
        AbstractC0864 abstractC0864 = c0878.f3731;
        RecyclerView recyclerView = abstractC0864.f3681;
        if (recyclerView.f1486.size() != 0) {
            AbstractC2669 abstractC2669 = recyclerView.f1521;
            if (abstractC2669 != null) {
                abstractC2669.mo887("Cannot invalidate item decorations during a scroll or layout");
            }
            recyclerView.m964();
            recyclerView.requestLayout();
        }
        if (dimensionPixelSize != -1) {
            c0878.f3732 = dimensionPixelSize;
            RecyclerView recyclerView2 = abstractC0864.f3681;
            if (recyclerView2.f1486.size() != 0) {
                AbstractC2669 abstractC26692 = recyclerView2.f1521;
                if (abstractC26692 != null) {
                    abstractC26692.mo887("Cannot invalidate item decorations during a scroll or layout");
                }
                recyclerView2.m964();
                recyclerView2.requestLayout();
            }
        }
        c0878.f3730 = z;
        if (this.f3681.getParent() == null) {
            viewGroup2.addView(this.f3681);
        }
        this.f3678.post(this.f3686);
        return inflate;
    }

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public final void m3067(PreferenceScreen preferenceScreen) {
        C0850 c0850 = this.f3679;
        PreferenceScreen preferenceScreen2 = c0850.f3641;
        if (preferenceScreen != preferenceScreen2) {
            if (preferenceScreen2 != null) {
                preferenceScreen2.mo831();
            }
            c0850.f3641 = preferenceScreen;
            this.f3683 = true;
            if (this.f3680) {
                HandlerC0874 handlerC0874 = this.f3678;
                if (handlerC0874.hasMessages(1)) {
                    return;
                }
                handlerC0874.obtainMessage(1).sendToTarget();
            }
        }
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ⁱˉ */
    public void mo2402() {
        this.f11926 = true;
        C0850 c0850 = this.f3679;
        c0850.f3642 = this;
        c0850.f3636 = this;
    }

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public final void m3068(String str) {
        RunnableC2028 runnableC2028 = new RunnableC2028(this, str, 1, false);
        if (this.f3681 == null) {
            this.f3684 = runnableC2028;
        } else {
            runnableC2028.run();
        }
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final Preference m3069(CharSequence charSequence) {
        PreferenceScreen preferenceScreen;
        C0850 c0850 = this.f3679;
        if (c0850 == null || (preferenceScreen = c0850.f3641) == null) {
            return null;
        }
        return preferenceScreen.m848(charSequence);
    }
}
