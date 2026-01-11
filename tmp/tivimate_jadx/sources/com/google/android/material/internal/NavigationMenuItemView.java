package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.google.android.gms.internal.measurement.ᵎ;
import com.google.android.material.datepicker.C0661;
import p129.AbstractC2184;
import p137.C2295;
import p143.AbstractC2389;
import p186.AbstractC2823;
import p353.C4329;
import p353.InterfaceC4304;

/* loaded from: classes.dex */
public class NavigationMenuItemView extends AbstractC2184 implements InterfaceC4304 {

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public static final int[] f2796 = {R.attr.state_checked};

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public final C0661 f2797;

    /* renamed from: ʿ, reason: contains not printable characters */
    public final boolean f2798;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final CheckedTextView f2799;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public int f2800;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public boolean f2801;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public boolean f2802;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public ColorStateList f2803;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public C4329 f2804;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public Drawable f2805;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public boolean f2806;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public FrameLayout f2807;

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2798 = true;
        C0661 c0661 = new C0661(3, this);
        this.f2797 = c0661;
        setOrientation(0);
        LayoutInflater.from(context).inflate(ar.tvplayer.tv.R.layout.3i0, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(ar.tvplayer.tv.R.dimen.77l));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(ar.tvplayer.tv.R.id.33i);
        this.f2799 = checkedTextView;
        AbstractC2823.m6273(checkedTextView, c0661);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.f2807 == null) {
                this.f2807 = (FrameLayout) ((ViewStub) findViewById(ar.tvplayer.tv.R.id.6m7)).inflate();
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            this.f2807.removeAllViews();
            this.f2807.addView(view);
        }
    }

    @Override // p353.InterfaceC4304
    public C4329 getItemData() {
        return this.f2804;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        C4329 c4329 = this.f2804;
        if (c4329 != null && c4329.isCheckable() && this.f2804.isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f2796);
        }
        return onCreateDrawableState;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.f2801 != z) {
            this.f2801 = z;
            this.f2797.mo6072(this.f2799, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        CheckedTextView checkedTextView = this.f2799;
        checkedTextView.setChecked(z);
        checkedTextView.setTypeface(checkedTextView.getTypeface(), (z && this.f2798) ? 1 : 0);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, getPaddingTop(), i, getPaddingBottom());
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.f2802) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = drawable.mutate();
                drawable.setTintList(this.f2803);
            }
            int i = this.f2800;
            drawable.setBounds(0, 0, i, i);
        } else if (this.f2806) {
            if (this.f2805 == null) {
                Resources resources = getResources();
                Resources.Theme theme = getContext().getTheme();
                ThreadLocal threadLocal = AbstractC2389.f9219;
                Drawable drawable2 = resources.getDrawable(ar.tvplayer.tv.R.drawable.1dh, theme);
                this.f2805 = drawable2;
                if (drawable2 != null) {
                    int i2 = this.f2800;
                    drawable2.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.f2805;
        }
        this.f2799.setCompoundDrawablesRelative(drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.f2799.setCompoundDrawablePadding(i);
    }

    public void setIconSize(int i) {
        this.f2800 = i;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f2803 = colorStateList;
        this.f2802 = colorStateList != null;
        C4329 c4329 = this.f2804;
        if (c4329 != null) {
            setIcon(c4329.getIcon());
        }
    }

    public void setMaxLines(int i) {
        this.f2799.setMaxLines(i);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.f2806 = z;
    }

    public void setTextAppearance(int i) {
        this.f2799.setTextAppearance(i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f2799.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.f2799.setText(charSequence);
    }

    @Override // p353.InterfaceC4304
    /* renamed from: ﹳٴ */
    public final void mo28(C4329 c4329) {
        StateListDrawable stateListDrawable;
        this.f2804 = c4329;
        int i = c4329.f16092;
        if (i > 0) {
            setId(i);
        }
        setVisibility(c4329.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(ar.tvplayer.tv.R.attr.56h, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(f2796, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            setBackground(stateListDrawable);
        }
        setCheckable(c4329.isCheckable());
        setChecked(c4329.isChecked());
        setEnabled(c4329.isEnabled());
        setTitle(c4329.f16081);
        setIcon(c4329.getIcon());
        setActionView(c4329.getActionView());
        setContentDescription(c4329.f16089);
        ᵎ.יـ(this, c4329.f16093);
        C4329 c43292 = this.f2804;
        CharSequence charSequence = c43292.f16081;
        CheckedTextView checkedTextView = this.f2799;
        if (charSequence == null && c43292.getIcon() == null && this.f2804.getActionView() != null) {
            checkedTextView.setVisibility(8);
            FrameLayout frameLayout = this.f2807;
            if (frameLayout != null) {
                C2295 c2295 = (C2295) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) c2295).width = -1;
                this.f2807.setLayoutParams(c2295);
                return;
            }
            return;
        }
        checkedTextView.setVisibility(0);
        FrameLayout frameLayout2 = this.f2807;
        if (frameLayout2 != null) {
            C2295 c22952 = (C2295) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) c22952).width = -2;
            this.f2807.setLayoutParams(c22952);
        }
    }
}
