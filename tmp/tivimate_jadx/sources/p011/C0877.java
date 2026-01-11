package p011;

import android.widget.CompoundButton;
import androidx.preference.CheckBoxPreference;
import androidx.preference.SwitchPreference;
import androidx.preference.SwitchPreferenceCompat;
import androidx.preference.TwoStatePreference;

/* renamed from: ʻᐧ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0877 implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ TwoStatePreference f3728;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f3729;

    public /* synthetic */ C0877(TwoStatePreference twoStatePreference, int i) {
        this.f3729 = i;
        this.f3728 = twoStatePreference;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        switch (this.f3729) {
            case 0:
                CheckBoxPreference checkBoxPreference = (CheckBoxPreference) this.f3728;
                checkBoxPreference.m845(Boolean.valueOf(z));
                checkBoxPreference.m857(z);
                return;
            case 1:
                SwitchPreference switchPreference = (SwitchPreference) this.f3728;
                switchPreference.m845(Boolean.valueOf(z));
                switchPreference.m857(z);
                return;
            default:
                SwitchPreferenceCompat switchPreferenceCompat = (SwitchPreferenceCompat) this.f3728;
                switchPreferenceCompat.m845(Boolean.valueOf(z));
                switchPreferenceCompat.m857(z);
                return;
        }
    }
}
