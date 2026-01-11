package p053;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.leanback.preference.LeanbackSettingsRootView;
import androidx.preference.DialogPreference;
import androidx.preference.EditTextPreference;
import androidx.preference.ListPreference;
import androidx.preference.MultiSelectListPreference;
import ar.tvplayer.tv.R;
import p011.AbstractC0864;
import p011.ViewOnKeyListenerC0860;
import p229.AbstractComponentCallbacksC3123;
import p229.C3085;
import p229.C3137;

/* renamed from: ʽᵔ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1436 extends AbstractComponentCallbacksC3123 {

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public final ViewOnKeyListenerC0860 f5610 = new ViewOnKeyListenerC0860(1, this);

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʻᴵ */
    public void mo3061(View view, Bundle bundle) {
        if (bundle == null) {
            m4199();
        }
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʽⁱ */
    public final void mo422() {
        this.f11926 = true;
        LeanbackSettingsRootView leanbackSettingsRootView = (LeanbackSettingsRootView) this.f11908;
        if (leanbackSettingsRootView != null) {
            leanbackSettingsRootView.setOnBackKeyListener(this.f5610);
        }
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public abstract void m4199();

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public final void m4200(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        C3085 m6788 = m6788();
        m6788.getClass();
        C3137 c3137 = new C3137(m6788);
        if (m6788().m6697("androidx.leanback.preference.LeanbackSettingsFragment.PREFERENCE_FRAGMENT") != null) {
            c3137.m6880(null);
            c3137.m6889(R.id.46r, abstractComponentCallbacksC3123, "androidx.leanback.preference.LeanbackSettingsFragment.PREFERENCE_FRAGMENT");
        } else {
            c3137.m6879(R.id.46r, abstractComponentCallbacksC3123, "androidx.leanback.preference.LeanbackSettingsFragment.PREFERENCE_FRAGMENT", 1);
        }
        c3137.m6890();
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public final void mo4201() {
        this.f11926 = true;
        LeanbackSettingsRootView leanbackSettingsRootView = (LeanbackSettingsRootView) this.f11908;
        if (leanbackSettingsRootView != null) {
            leanbackSettingsRootView.setOnBackKeyListener(null);
        }
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ᐧﹶ */
    public final View mo435(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.41j, viewGroup, false);
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public boolean m4202(AbstractC0864 abstractC0864, DialogPreference dialogPreference) {
        if (abstractC0864 == null) {
            throw new IllegalArgumentException("Cannot display dialog for preference " + dialogPreference + ", Caller must not be null!");
        }
        if (dialogPreference instanceof ListPreference) {
            String str = ((ListPreference) dialogPreference).f1353;
            Bundle bundle = new Bundle(1);
            bundle.putString("key", str);
            C1434 c1434 = new C1434();
            c1434.m6807(bundle);
            c1434.m6790(abstractC0864);
            m4200(c1434);
            return true;
        }
        if (dialogPreference instanceof MultiSelectListPreference) {
            String str2 = ((MultiSelectListPreference) dialogPreference).f1353;
            Bundle bundle2 = new Bundle(1);
            bundle2.putString("key", str2);
            C1434 c14342 = new C1434();
            c14342.m6807(bundle2);
            c14342.m6790(abstractC0864);
            m4200(c14342);
            return true;
        }
        if (!(dialogPreference instanceof EditTextPreference)) {
            return false;
        }
        String str3 = dialogPreference.f1353;
        Bundle bundle3 = new Bundle(1);
        bundle3.putString("key", str3);
        C1437 c1437 = new C1437();
        c1437.m6807(bundle3);
        c1437.m6790(abstractC0864);
        m4200(c1437);
        return true;
    }
}
