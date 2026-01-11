package p011;

import android.os.Bundle;
import androidx.preference.ListPreference;
import p363.C4411;
import p363.C4426;

/* renamed from: ʻᐧ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0873 extends AbstractDialogInterfaceOnClickListenerC0852 {

    /* renamed from: ˋـ, reason: contains not printable characters */
    public int f3718;

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public CharSequence[] f3719;

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public CharSequence[] f3720;

    @Override // p011.AbstractDialogInterfaceOnClickListenerC0852, p229.DialogInterfaceOnCancelListenerC3073, p229.AbstractComponentCallbacksC3123
    /* renamed from: ʽᵔ */
    public final void mo421(Bundle bundle) {
        super.mo421(bundle);
        if (bundle != null) {
            this.f3718 = bundle.getInt("ListPreferenceDialogFragment.index", 0);
            this.f3720 = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
            this.f3719 = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
            return;
        }
        ListPreference listPreference = (ListPreference) m3052();
        CharSequence[] charSequenceArr = listPreference.f1338;
        CharSequence[] charSequenceArr2 = listPreference.f1341;
        if (charSequenceArr == null || charSequenceArr2 == null) {
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        this.f3718 = listPreference.m824(listPreference.f1342);
        this.f3720 = listPreference.f1338;
        this.f3719 = charSequenceArr2;
    }

    @Override // p011.AbstractDialogInterfaceOnClickListenerC0852, p229.DialogInterfaceOnCancelListenerC3073, p229.AbstractComponentCallbacksC3123
    /* renamed from: ʾﾞ */
    public final void mo424(Bundle bundle) {
        super.mo424(bundle);
        bundle.putInt("ListPreferenceDialogFragment.index", this.f3718);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", this.f3720);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", this.f3719);
    }

    @Override // p011.AbstractDialogInterfaceOnClickListenerC0852
    /* renamed from: ᵔⁱ */
    public final void mo3051(C4426 c4426) {
        CharSequence[] charSequenceArr = this.f3720;
        int i = this.f3718;
        DialogInterfaceOnClickListenerC0871 dialogInterfaceOnClickListenerC0871 = new DialogInterfaceOnClickListenerC0871(this);
        C4411 c4411 = c4426.f16470;
        c4411.f16422 = charSequenceArr;
        c4411.f16416 = dialogInterfaceOnClickListenerC0871;
        c4411.f16413 = i;
        c4411.f16421 = true;
        c4411.f16415 = null;
        c4411.f16417 = null;
    }

    @Override // p011.AbstractDialogInterfaceOnClickListenerC0852
    /* renamed from: ﹶʽ */
    public final void mo3053(boolean z) {
        int i;
        if (!z || (i = this.f3718) < 0) {
            return;
        }
        String charSequence = this.f3719[i].toString();
        ListPreference listPreference = (ListPreference) m3052();
        listPreference.m845(charSequence);
        listPreference.m823(charSequence);
    }
}
