package com.google.android.material.datepicker;

import android.view.ContextThemeWrapper;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ar.tvplayer.tv.R;
import java.util.Calendar;
import p035.AbstractC1220;
import p179.AbstractC2673;
import p179.AbstractC2727;
import p179.C2700;

/* renamed from: com.google.android.material.datepicker.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0658 extends AbstractC2727 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C0675 f2694;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final androidx.leanback.widget.ˉˆ f2695;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f2696;

    public C0658(ContextThemeWrapper contextThemeWrapper, C0675 c0675, androidx.leanback.widget.ˉˆ r7) {
        C0673 c0673 = c0675.f2754;
        C0673 c06732 = c0675.f2758;
        C0673 c06733 = c0675.f2755;
        if (c0673.f2746.compareTo(c06733.f2746) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (c06733.f2746.compareTo(c06732.f2746) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        this.f2696 = (contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.2q5) * C0677.f2762) + (C0664.m2398(contextThemeWrapper, android.R.attr.windowFullscreen) ? contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.2q5) : 0);
        this.f2694 = c0675;
        this.f2695 = r7;
        m6123(true);
    }

    @Override // p179.AbstractC2727
    /* renamed from: ᵔᵢ */
    public final AbstractC2673 mo610(ViewGroup viewGroup, int i) {
        LinearLayout linearLayout = (LinearLayout) AbstractC1220.m3789(viewGroup, R.layout.2ka, viewGroup, false);
        if (!C0664.m2398(viewGroup.getContext(), android.R.attr.windowFullscreen)) {
            return new C0665(linearLayout, false);
        }
        linearLayout.setLayoutParams(new C2700(-1, this.f2696));
        return new C0665(linearLayout, true);
    }

    @Override // p179.AbstractC2727
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long mo2393(int i) {
        Calendar m2391 = AbstractC0654.m2391(this.f2694.f2754.f2746);
        m2391.add(2, i);
        m2391.set(5, 1);
        Calendar m23912 = AbstractC0654.m2391(m2391);
        m23912.get(2);
        m23912.get(1);
        m23912.getMaximum(7);
        m23912.getActualMaximum(5);
        m23912.getTimeInMillis();
        return m23912.getTimeInMillis();
    }

    @Override // p179.AbstractC2727
    /* renamed from: ﹳٴ */
    public final int mo611() {
        return this.f2694.f2757;
    }

    @Override // p179.AbstractC2727
    /* renamed from: ﾞᴵ */
    public final void mo612(AbstractC2673 abstractC2673, int i) {
        C0665 c0665 = (C0665) abstractC2673;
        C0675 c0675 = this.f2694;
        Calendar m2391 = AbstractC0654.m2391(c0675.f2754.f2746);
        m2391.add(2, i);
        C0673 c0673 = new C0673(m2391);
        c0665.f2728.setText(c0673.m2408());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) c0665.f2727.findViewById(R.id.1e9);
        if (materialCalendarGridView.m2387() == null || !c0673.equals(materialCalendarGridView.m2387().f2766)) {
            new C0677(c0673, c0675);
            throw null;
        }
        materialCalendarGridView.invalidate();
        materialCalendarGridView.m2387().getClass();
        throw null;
    }
}
