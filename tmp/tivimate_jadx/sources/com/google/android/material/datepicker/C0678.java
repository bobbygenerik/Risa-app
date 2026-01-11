package com.google.android.material.datepicker;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.DecelerateInterpolator;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.Scroller;
import androidx.leanback.widget.RunnableC0114;
import androidx.leanback.widget.ViewOnClickListenerC0083;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import ar.tvplayer.tv.R;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import p179.C2671;
import p179.C2678;
import p186.AbstractC2823;

/* renamed from: com.google.android.material.datepicker.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0678<S> extends AbstractC0653 {

    /* renamed from: ʻʿ, reason: contains not printable characters */
    public RecyclerView f2767;

    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public int f2768;

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public AccessibilityManager f2769;

    /* renamed from: ʿـ, reason: contains not printable characters */
    public int f2770;

    /* renamed from: ـˊ, reason: contains not printable characters */
    public C0675 f2771;

    /* renamed from: ـᵢ, reason: contains not printable characters */
    public View f2772;

    /* renamed from: ٴᴵ, reason: contains not printable characters */
    public View f2773;

    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public C0673 f2774;

    /* renamed from: ⁱי, reason: contains not printable characters */
    public RecyclerView f2775;

    /* renamed from: ⁱᴵ, reason: contains not printable characters */
    public View f2776;

    /* renamed from: ﹳⁱ, reason: contains not printable characters */
    public C0657 f2777;

    /* renamed from: ﹶ, reason: contains not printable characters */
    public View f2778;

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public MaterialButton f2779;

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʽᵔ */
    public final void mo421(Bundle bundle) {
        super.mo421(bundle);
        if (bundle == null) {
            bundle = this.f11906;
        }
        this.f2768 = bundle.getInt("THEME_RES_ID_KEY");
        if (bundle.getParcelable("GRID_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f2771 = (C0675) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        if (bundle.getParcelable("DAY_VIEW_DECORATOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f2774 = (C0673) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʾﾞ */
    public final void mo424(Bundle bundle) {
        bundle.putInt("THEME_RES_ID_KEY", this.f2768);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f2771);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f2774);
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public final void m2413(C0673 c0673) {
        C0658 c0658 = (C0658) this.f2767.getAdapter();
        int m2409 = c0658.f2694.f2754.m2409(c0673);
        AccessibilityManager accessibilityManager = this.f2769;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            int m24092 = m2409 - c0658.f2694.f2754.m2409(this.f2774);
            boolean z = Math.abs(m24092) > 3;
            boolean z2 = m24092 > 0;
            this.f2774 = c0673;
            if (z && z2) {
                this.f2767.mo657(m2409 - 3);
                this.f2767.post(new RunnableC0114(m2409, 1, this));
            } else if (z) {
                this.f2767.mo657(m2409 + 3);
                this.f2767.post(new RunnableC0114(m2409, 1, this));
            } else {
                this.f2767.post(new RunnableC0114(m2409, 1, this));
            }
        } else {
            this.f2774 = c0673;
            this.f2767.mo657(m2409);
        }
        m2415(m2409);
    }

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public final void m2414(int i) {
        this.f2770 = i;
        if (i == 2) {
            this.f2775.getLayoutManager().mo531(this.f2774.f2745 - ((C0659) this.f2775.getAdapter()).f2697.f2771.f2754.f2745);
            this.f2773.setVisibility(0);
            this.f2776.setVisibility(8);
            this.f2778.setVisibility(8);
            this.f2772.setVisibility(8);
            return;
        }
        if (i == 1) {
            this.f2773.setVisibility(8);
            this.f2776.setVisibility(0);
            this.f2778.setVisibility(0);
            this.f2772.setVisibility(0);
            m2413(this.f2774);
        }
    }

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public final void m2415(int i) {
        this.f2772.setEnabled(i + 1 < this.f2767.getAdapter().mo611());
        this.f2778.setEnabled(i - 1 >= 0);
    }

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public final void m2416(View view) {
        if (view == null) {
            return;
        }
        int i = this.f2770;
        if (i == 2) {
            AbstractC2823.m6278(view, m6800(R.string.2ac));
        } else if (i == 1) {
            AbstractC2823.m6278(view, m6800(R.string.15v));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v14, types: [ˋˋ.ˏᵢ, java.lang.Object] */
    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ᐧﹶ */
    public final View mo435(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        int i2;
        C2671 c2671;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(mo4203(), this.f2768);
        this.f2777 = new C0657(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        this.f2769 = (AccessibilityManager) m6779().getSystemService("accessibility");
        C0673 c0673 = this.f2771.f2754;
        if (C0664.m2398(contextThemeWrapper, android.R.attr.windowFullscreen)) {
            i = R.layout.2m5;
            i2 = 1;
        } else {
            i = R.layout.5ei;
            i2 = 0;
        }
        View inflate = cloneInContext.inflate(i, viewGroup, false);
        Resources resources = m6779().getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.170) + resources.getDimensionPixelOffset(R.dimen.14g) + resources.getDimensionPixelSize(R.dimen.4hi);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.2f0);
        int i3 = C0677.f2762;
        inflate.setMinimumHeight(dimensionPixelOffset + dimensionPixelSize + (resources.getDimensionPixelOffset(R.dimen.1hc) * (i3 - 1)) + (resources.getDimensionPixelSize(R.dimen.2q5) * i3) + resources.getDimensionPixelOffset(R.dimen.bi));
        GridView gridView = (GridView) inflate.findViewById(R.id.31a);
        AbstractC2823.m6273(gridView, new C0670(0));
        int i4 = this.f2771.f2759;
        gridView.setAdapter((ListAdapter) (i4 > 0 ? new C0666(i4) : new C0666()));
        gridView.setNumColumns(c0673.f2747);
        gridView.setEnabled(false);
        this.f2767 = (RecyclerView) inflate.findViewById(R.id.73a);
        this.f2767.setLayoutManager(new C0672(this, i2, i2));
        this.f2767.setTag("MONTHS_VIEW_GROUP_TAG");
        C0658 c0658 = new C0658(contextThemeWrapper, this.f2771, new androidx.leanback.widget.ˉˆ(3, this));
        this.f2767.setAdapter(c0658);
        int integer = contextThemeWrapper.getResources().getInteger(R.integer.2u5);
        RecyclerView recyclerView3 = (RecyclerView) inflate.findViewById(R.id.5vt);
        this.f2775 = recyclerView3;
        if (recyclerView3 != null) {
            recyclerView3.setHasFixedSize(true);
            this.f2775.setLayoutManager(new GridLayoutManager(integer));
            this.f2775.setAdapter(new C0659(this));
            RecyclerView recyclerView4 = this.f2775;
            ?? obj = new Object();
            AbstractC0654.m2389(null);
            AbstractC0654.m2389(null);
            recyclerView4.m935(obj);
        }
        View findViewById = inflate.findViewById(R.id.5mf);
        C0675 c0675 = c0658.f2694;
        if (findViewById != null) {
            MaterialButton materialButton = (MaterialButton) inflate.findViewById(R.id.5mf);
            this.f2779 = materialButton;
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            AbstractC2823.m6273(this.f2779, new C0661(0, this));
            View findViewById2 = inflate.findViewById(R.id.6tm);
            this.f2778 = findViewById2;
            findViewById2.setTag("NAVIGATION_PREV_TAG");
            View findViewById3 = inflate.findViewById(R.id.2de);
            this.f2772 = findViewById3;
            findViewById3.setTag("NAVIGATION_NEXT_TAG");
            this.f2773 = inflate.findViewById(R.id.5vt);
            this.f2776 = inflate.findViewById(R.id.6e4);
            m2414(1);
            this.f2779.setText(this.f2774.m2408());
            this.f2767.m945(new C0669(this, c0658));
            this.f2779.setOnClickListener(new ViewOnClickListenerC0083(2, this));
            this.f2772.setOnClickListener(new ViewOnClickListenerC0679(this, c0658, 1));
            this.f2778.setOnClickListener(new ViewOnClickListenerC0679(this, c0658, 0));
            m2415(c0675.f2754.m2409(this.f2774));
        }
        if (!C0664.m2398(contextThemeWrapper, android.R.attr.windowFullscreen) && (recyclerView2 = (c2671 = new C2671()).f10164) != (recyclerView = this.f2767)) {
            C2678 c2678 = c2671.f10163;
            if (recyclerView2 != null) {
                ArrayList arrayList = recyclerView2.f1528;
                if (arrayList != null) {
                    arrayList.remove(c2678);
                }
                c2671.f10164.setOnFlingListener(null);
            }
            c2671.f10164 = recyclerView;
            if (recyclerView != null) {
                if (recyclerView.getOnFlingListener() != null) {
                    throw new IllegalStateException("An instance of OnFlingListener already set.");
                }
                c2671.f10164.m945(c2678);
                c2671.f10164.setOnFlingListener(c2671);
                new Scroller(c2671.f10164.getContext(), new DecelerateInterpolator());
                c2671.m6002();
            }
        }
        this.f2767.mo657(c0675.f2754.m2409(this.f2774));
        AbstractC2823.m6273(this.f2767, new C0670(1));
        m2416(inflate);
        return inflate;
    }

    @Override // com.google.android.material.datepicker.AbstractC0653
    /* renamed from: ﾞˋ */
    public final void mo2388(ᵎˉ.ⁱˊ r2) {
        this.f2688.add(r2);
    }
}
