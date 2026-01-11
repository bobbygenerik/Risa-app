package com.google.android.material.timepicker;

import android.text.Editable;
import android.text.TextUtils;
import com.google.android.material.chip.Chip;
import p129.AbstractC2182;

/* renamed from: com.google.android.material.timepicker.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0691 extends AbstractC2182 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ ChipTextInputComboView f2960;

    public C0691(ChipTextInputComboView chipTextInputComboView) {
        this.f2960 = chipTextInputComboView;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        boolean isEmpty = TextUtils.isEmpty(editable);
        ChipTextInputComboView chipTextInputComboView = this.f2960;
        if (isEmpty) {
            chipTextInputComboView.f2916.setText(ChipTextInputComboView.m2454(chipTextInputComboView, "00"));
            return;
        }
        String m2454 = ChipTextInputComboView.m2454(chipTextInputComboView, editable);
        Chip chip = chipTextInputComboView.f2916;
        if (TextUtils.isEmpty(m2454)) {
            m2454 = ChipTextInputComboView.m2454(chipTextInputComboView, "00");
        }
        chip.setText(m2454);
    }
}
