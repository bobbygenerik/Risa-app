package p053;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.leanback.widget.VerticalGridView;
import androidx.preference.DialogPreference;
import androidx.preference.ListPreference;
import androidx.preference.MultiSelectListPreference;
import ar.tvplayer.tv.R;
import java.util.Collections;
import java.util.Set;
import p255.C3370;

/* renamed from: ʽᵔ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C1434 extends C1439 {

    /* renamed from: ʻʿ, reason: contains not printable characters */
    public String f5603;

    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public boolean f5604;

    /* renamed from: ʿـ, reason: contains not printable characters */
    public CharSequence f5605;

    /* renamed from: ـˊ, reason: contains not printable characters */
    public CharSequence[] f5606;

    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public CharSequence[] f5607;

    /* renamed from: ⁱי, reason: contains not printable characters */
    public Set f5608;

    /* renamed from: ﹳⁱ, reason: contains not printable characters */
    public CharSequence f5609;

    @Override // p053.C1439, p229.AbstractComponentCallbacksC3123
    /* renamed from: ʽᵔ */
    public final void mo421(Bundle bundle) {
        super.mo421(bundle);
        if (bundle != null) {
            this.f5605 = bundle.getCharSequence("LeanbackListPreferenceDialogFragment.title");
            this.f5609 = bundle.getCharSequence("LeanbackListPreferenceDialogFragment.message");
            this.f5604 = bundle.getBoolean("LeanbackListPreferenceDialogFragment.isMulti");
            this.f5606 = bundle.getCharSequenceArray("LeanbackListPreferenceDialogFragment.entries");
            this.f5607 = bundle.getCharSequenceArray("LeanbackListPreferenceDialogFragment.entryValues");
            if (!this.f5604) {
                this.f5603 = bundle.getString("LeanbackListPreferenceDialogFragment.initialSelection");
                return;
            }
            String[] stringArray = bundle.getStringArray("LeanbackListPreferenceDialogFragment.initialSelections");
            C3370 c3370 = new C3370(stringArray != null ? stringArray.length : 0);
            this.f5608 = c3370;
            if (stringArray != null) {
                Collections.addAll(c3370, stringArray);
                return;
            }
            return;
        }
        DialogPreference m4204 = m4204();
        this.f5605 = m4204.f1332;
        this.f5609 = m4204.f1328;
        if (m4204 instanceof ListPreference) {
            this.f5604 = false;
            ListPreference listPreference = (ListPreference) m4204;
            this.f5606 = listPreference.f1338;
            this.f5607 = listPreference.f1341;
            this.f5603 = listPreference.f1342;
            return;
        }
        if (!(m4204 instanceof MultiSelectListPreference)) {
            throw new IllegalArgumentException("Preference must be a ListPreference or MultiSelectListPreference");
        }
        this.f5604 = true;
        MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) m4204;
        this.f5606 = multiSelectListPreference.f1343;
        this.f5607 = multiSelectListPreference.f1344;
        this.f5608 = multiSelectListPreference.f1345;
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʾﾞ */
    public final void mo424(Bundle bundle) {
        bundle.putCharSequence("LeanbackListPreferenceDialogFragment.title", this.f5605);
        bundle.putCharSequence("LeanbackListPreferenceDialogFragment.message", this.f5609);
        bundle.putBoolean("LeanbackListPreferenceDialogFragment.isMulti", this.f5604);
        bundle.putCharSequenceArray("LeanbackListPreferenceDialogFragment.entries", this.f5606);
        bundle.putCharSequenceArray("LeanbackListPreferenceDialogFragment.entryValues", this.f5607);
        if (!this.f5604) {
            bundle.putString("LeanbackListPreferenceDialogFragment.initialSelection", this.f5603);
        } else {
            Set set = this.f5608;
            bundle.putStringArray("LeanbackListPreferenceDialogFragment.initialSelections", (String[]) set.toArray(new String[set.size()]));
        }
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ᐧﹶ */
    public final View mo435(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        TypedValue typedValue = new TypedValue();
        m6803().getTheme().resolveAttribute(R.attr.5lg, typedValue, true);
        int i = typedValue.resourceId;
        if (i == 0) {
            i = R.style.f262774kk;
        }
        View inflate = layoutInflater.cloneInContext(new ContextThemeWrapper(m6803(), i)).inflate(R.layout.2bj, viewGroup, false);
        VerticalGridView verticalGridView = (VerticalGridView) inflate.findViewById(android.R.id.list);
        verticalGridView.setWindowAlignment(3);
        verticalGridView.setFocusScrollStrategy(0);
        verticalGridView.setAdapter(this.f5604 ? new C1432(this, this.f5606, this.f5607, this.f5608) : new C1432(this, this.f5606, this.f5607, this.f5603));
        verticalGridView.requestFocus();
        CharSequence charSequence = this.f5605;
        if (!TextUtils.isEmpty(charSequence)) {
            ((TextView) inflate.findViewById(R.id.up)).setText(charSequence);
        }
        CharSequence charSequence2 = this.f5609;
        if (!TextUtils.isEmpty(charSequence2)) {
            TextView textView = (TextView) inflate.findViewById(android.R.id.message);
            textView.setVisibility(0);
            textView.setText(charSequence2);
        }
        return inflate;
    }
}
