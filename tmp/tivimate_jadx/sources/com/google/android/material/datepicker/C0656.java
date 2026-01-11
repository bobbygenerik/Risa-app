package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: com.google.android.material.datepicker.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0656<S> extends AbstractC0653 {

    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public int f2690;

    /* renamed from: ـˊ, reason: contains not printable characters */
    public C0675 f2691;

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʽᵔ */
    public final void mo421(Bundle bundle) {
        super.mo421(bundle);
        if (bundle == null) {
            bundle = this.f11906;
        }
        this.f2690 = bundle.getInt("THEME_RES_ID_KEY");
        if (bundle.getParcelable("DATE_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f2691 = (C0675) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʾﾞ */
    public final void mo424(Bundle bundle) {
        bundle.putInt("THEME_RES_ID_KEY", this.f2690);
        bundle.putParcelable("DATE_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f2691);
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ᐧﹶ */
    public final View mo435(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.cloneInContext(new ContextThemeWrapper(mo4203(), this.f2690));
        throw null;
    }
}
