package p053;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import androidx.leanback.widget.C0134;
import androidx.preference.DialogPreference;
import androidx.preference.EditTextPreference;
import ar.tvplayer.tv.R;

/* renamed from: ʽᵔ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C1437 extends C1439 {

    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public CharSequence f5611;

    /* renamed from: ʿـ, reason: contains not printable characters */
    public int f5612;

    /* renamed from: ـˊ, reason: contains not printable characters */
    public CharSequence f5613;

    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public CharSequence f5614;

    /* renamed from: ﹳⁱ, reason: contains not printable characters */
    public int f5615;

    @Override // p053.C1439, p229.AbstractComponentCallbacksC3123
    /* renamed from: ʽᵔ */
    public final void mo421(Bundle bundle) {
        super.mo421(bundle);
        if (bundle != null) {
            this.f5611 = bundle.getCharSequence("LeanbackEditPreferenceDialog.title");
            this.f5613 = bundle.getCharSequence("LeanbackEditPreferenceDialog.message");
            this.f5614 = bundle.getCharSequence("LeanbackEditPreferenceDialog.text");
            this.f5615 = bundle.getInt("LeanbackEditPreferenceDialog.inputType", 1);
            this.f5612 = bundle.getInt("LeanbackEditPreferenceDialog.imeOptions", 2);
            return;
        }
        DialogPreference m4204 = m4204();
        CharSequence charSequence = m4204.f1332;
        this.f5611 = charSequence;
        String str = m4204.f1328;
        this.f5613 = str;
        if (!(m4204 instanceof EditTextPreference)) {
            throw new IllegalArgumentException("Preference must be a EditTextPreference");
        }
        this.f5611 = charSequence;
        this.f5613 = str;
        this.f5614 = ((EditTextPreference) m4204).f1337;
        this.f5615 = m4204.m835().getInt("input_type", 1);
        this.f5612 = m4204.m835().getInt("ime_option", 2);
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʾﾞ */
    public final void mo424(Bundle bundle) {
        bundle.putCharSequence("LeanbackEditPreferenceDialog.title", this.f5611);
        bundle.putCharSequence("LeanbackEditPreferenceDialog.message", this.f5613);
        bundle.putCharSequence("LeanbackEditPreferenceDialog.text", this.f5614);
        bundle.putInt("LeanbackEditPreferenceDialog.inputType", this.f5615);
        bundle.putInt("LeanbackEditPreferenceDialog.imeOptions", this.f5612);
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
        View inflate = layoutInflater.cloneInContext(new ContextThemeWrapper(m6803(), i)).inflate(R.layout.3e6, viewGroup, false);
        if (!TextUtils.isEmpty(this.f5611)) {
            ((TextView) inflate.findViewById(R.id.up)).setText(this.f5611);
        }
        if (!TextUtils.isEmpty(this.f5613)) {
            TextView textView = (TextView) inflate.findViewById(android.R.id.message);
            textView.setVisibility(0);
            textView.setText(this.f5613);
        }
        EditText editText = (EditText) inflate.findViewById(android.R.id.edit);
        editText.setInputType(this.f5615);
        editText.setImeOptions(this.f5612);
        if (!TextUtils.isEmpty(this.f5614)) {
            editText.setText(this.f5614);
        }
        editText.setOnEditorActionListener(new C0134(2, this));
        return inflate;
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ⁱˉ */
    public final void mo2402() {
        this.f11926 = true;
        EditText editText = (EditText) this.f11908.findViewById(android.R.id.edit);
        InputMethodManager inputMethodManager = (InputMethodManager) m6803().getSystemService("input_method");
        editText.requestFocus();
        inputMethodManager.showSoftInput(editText, 0);
    }
}
