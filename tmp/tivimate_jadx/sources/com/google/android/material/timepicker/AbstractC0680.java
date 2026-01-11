package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import ar.tvplayer.tv.R;
import p188.C2844;
import p188.C2851;
import p259.AbstractC3399;

/* renamed from: com.google.android.material.timepicker.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0680 extends ConstraintLayout {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final C2844 f2950;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public int f2951;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final RunnableC0689 f2952;

    /* JADX WARN: Type inference failed for: r6v2, types: [com.google.android.material.timepicker.ᵔᵢ] */
    public AbstractC0680(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.1o2);
        LayoutInflater.from(context).inflate(R.layout.78g, this);
        C2844 c2844 = new C2844();
        this.f2950 = c2844;
        c2844.setShapeAppearanceModel(c2844.f10671.f10755.mo6351(new C2851(0.5f)));
        this.f2950.m6321(ColorStateList.valueOf(-1));
        setBackground(this.f2950);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC3399.f13278, R.attr.1o2, 0);
        this.f2951 = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f2952 = new Runnable() { // from class: com.google.android.material.timepicker.ᵔᵢ
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC0680.this.mo2455();
            }
        };
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (view.getId() == -1) {
            view.setId(View.generateViewId());
        }
        Handler handler = getHandler();
        if (handler != null) {
            RunnableC0689 runnableC0689 = this.f2952;
            handler.removeCallbacks(runnableC0689);
            handler.post(runnableC0689);
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        mo2455();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        Handler handler = getHandler();
        if (handler != null) {
            RunnableC0689 runnableC0689 = this.f2952;
            handler.removeCallbacks(runnableC0689);
            handler.post(runnableC0689);
        }
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i) {
        this.f2950.m6321(ColorStateList.valueOf(i));
    }

    /* renamed from: ˉʿ */
    public abstract void mo2455();
}
