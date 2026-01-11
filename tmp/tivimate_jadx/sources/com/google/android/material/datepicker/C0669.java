package com.google.android.material.datepicker;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.measurement.AbstractC0473;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import p179.AbstractC2691;

/* renamed from: com.google.android.material.datepicker.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0669 extends AbstractC2691 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C0678 f2735;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ C0658 f2736;

    public C0669(C0678 c0678, C0658 c0658) {
        this.f2735 = c0678;
        this.f2736 = c0658;
    }

    @Override // p179.AbstractC2691
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo2403(RecyclerView recyclerView, int i, int i2) {
        C0675 c0675 = this.f2736.f2694;
        C0678 c0678 = this.f2735;
        int m893 = i < 0 ? ((LinearLayoutManager) c0678.f2767.getLayoutManager()).m893() : ((LinearLayoutManager) c0678.f2767.getLayoutManager()).m895();
        Calendar m2391 = AbstractC0654.m2391(c0675.f2754.f2746);
        m2391.add(2, m893);
        C0673 c0673 = new C0673(m2391);
        c0678.f2774 = c0673;
        MaterialButton materialButton = c0678.f2779;
        Calendar m23912 = AbstractC0654.m2391(c0675.f2754.f2746);
        m23912.add(2, m893);
        m23912.set(5, 1);
        Calendar m23913 = AbstractC0654.m2391(m23912);
        m23913.get(2);
        m23913.get(1);
        m23913.getMaximum(7);
        m23913.getActualMaximum(5);
        m23913.getTimeInMillis();
        materialButton.setText(AbstractC0473.m1919(m23913.getTimeInMillis()));
        c0678.m2415(c0675.f2754.m2409(c0673));
    }
}
