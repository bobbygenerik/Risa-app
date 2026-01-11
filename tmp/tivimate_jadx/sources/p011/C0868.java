package p011;

import android.os.Bundle;
import androidx.preference.MultiSelectListPreference;
import java.util.ArrayList;
import java.util.HashSet;
import p363.C4411;
import p363.C4426;

/* renamed from: ʻᐧ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0868 extends AbstractDialogInterfaceOnClickListenerC0852 {

    /* renamed from: ˋـ, reason: contains not printable characters */
    public final HashSet f3697 = new HashSet();

    /* renamed from: ٴʿ, reason: contains not printable characters */
    public CharSequence[] f3698;

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public CharSequence[] f3699;

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public boolean f3700;

    @Override // p011.AbstractDialogInterfaceOnClickListenerC0852, p229.DialogInterfaceOnCancelListenerC3073, p229.AbstractComponentCallbacksC3123
    /* renamed from: ʽᵔ */
    public final void mo421(Bundle bundle) {
        super.mo421(bundle);
        HashSet hashSet = this.f3697;
        if (bundle != null) {
            hashSet.clear();
            hashSet.addAll(bundle.getStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values"));
            this.f3700 = bundle.getBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", false);
            this.f3699 = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries");
            this.f3698 = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues");
            return;
        }
        MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) m3052();
        CharSequence[] charSequenceArr = multiSelectListPreference.f1343;
        CharSequence[] charSequenceArr2 = multiSelectListPreference.f1344;
        if (charSequenceArr == null || charSequenceArr2 == null) {
            throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
        }
        hashSet.clear();
        hashSet.addAll(multiSelectListPreference.f1345);
        this.f3700 = false;
        this.f3699 = multiSelectListPreference.f1343;
        this.f3698 = charSequenceArr2;
    }

    @Override // p011.AbstractDialogInterfaceOnClickListenerC0852, p229.DialogInterfaceOnCancelListenerC3073, p229.AbstractComponentCallbacksC3123
    /* renamed from: ʾﾞ */
    public final void mo424(Bundle bundle) {
        super.mo424(bundle);
        bundle.putStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values", new ArrayList<>(this.f3697));
        bundle.putBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", this.f3700);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries", this.f3699);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues", this.f3698);
    }

    @Override // p011.AbstractDialogInterfaceOnClickListenerC0852
    /* renamed from: ᵔⁱ */
    public final void mo3051(C4426 c4426) {
        int length = this.f3698.length;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            zArr[i] = this.f3697.contains(this.f3698[i].toString());
        }
        CharSequence[] charSequenceArr = this.f3699;
        DialogInterfaceOnMultiChoiceClickListenerC0858 dialogInterfaceOnMultiChoiceClickListenerC0858 = new DialogInterfaceOnMultiChoiceClickListenerC0858(this);
        C4411 c4411 = c4426.f16470;
        c4411.f16422 = charSequenceArr;
        c4411.f16411 = dialogInterfaceOnMultiChoiceClickListenerC0858;
        c4411.f16405 = zArr;
        c4411.f16418 = true;
    }

    @Override // p011.AbstractDialogInterfaceOnClickListenerC0852
    /* renamed from: ﹶʽ */
    public final void mo3053(boolean z) {
        if (z && this.f3700) {
            MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) m3052();
            HashSet hashSet = this.f3697;
            multiSelectListPreference.m845(hashSet);
            multiSelectListPreference.m826(hashSet);
        }
        this.f3700 = false;
    }
}
