package com.google.android.material.datepicker;

import android.view.View;
import android.widget.AdapterView;

/* renamed from: com.google.android.material.datepicker.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0667 implements AdapterView.OnItemClickListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ MaterialCalendarGridView f2733;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C0658 f2734;

    public C0667(C0658 c0658, MaterialCalendarGridView materialCalendarGridView) {
        this.f2734 = c0658;
        this.f2733 = materialCalendarGridView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        MaterialCalendarGridView materialCalendarGridView = this.f2733;
        C0677 m2387 = materialCalendarGridView.m2387();
        if (i < m2387.m2412() || i > m2387.m2410()) {
            return;
        }
        if (materialCalendarGridView.m2387().getItem(i).longValue() >= ((C0678) this.f2734.f2695.ᴵˊ).f2771.f2753.f2700) {
            throw null;
        }
    }
}
