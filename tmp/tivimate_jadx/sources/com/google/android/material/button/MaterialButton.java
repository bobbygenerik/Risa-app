package com.google.android.material.button;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import java.util.Iterator;
import java.util.LinkedHashSet;
import p021.AbstractC1031;
import p129.AbstractC2185;
import p137.AbstractC2305;
import p137.C2240;
import p167.C2603;
import p167.C2608;
import p184.AbstractC2764;
import p188.C2844;
import p188.C2847;
import p188.C2849;
import p188.C2862;
import p188.InterfaceC2843;
import p188.InterfaceC2869;
import p259.AbstractC3399;
import p283.AbstractC3566;
import p283.C3563;
import p283.C3565;
import p283.C3567;
import p283.C3569;
import p283.InterfaceC3564;
import p283.RunnableC3568;
import p323.AbstractC3985;
import p427.AbstractC5055;
import ˈˋ.ʾˊ;
import ˉˆ.ʿ;
import ˉᵎ.ⁱˊ;
import ᴵˋ.ˊʻ;
import ﹳˋ.ʽʽ;

/* loaded from: classes.dex */
public class MaterialButton extends C2240 implements Checkable, InterfaceC2843 {

    /* renamed from: ʻᵎ */
    public static final int[] f2625 = {R.attr.state_checkable};

    /* renamed from: ˊᵔ */
    public static final int[] f2626 = {R.attr.state_checked};

    /* renamed from: ـﹶ */
    public static final C3563 f2627 = new Object();

    /* renamed from: ʼˈ */
    public float f2628;

    /* renamed from: ʿ */
    public boolean f2629;

    /* renamed from: ʿᵢ */
    public int f2630;

    /* renamed from: ˆﾞ */
    public int f2631;

    /* renamed from: ˈʿ */
    public boolean f2632;

    /* renamed from: ˈٴ */
    public final C3567 f2633;

    /* renamed from: ˈⁱ */
    public LinearLayout.LayoutParams f2634;

    /* renamed from: ˉـ */
    public int f2635;

    /* renamed from: ˉٴ */
    public ColorStateList f2636;

    /* renamed from: ˊʻ */
    public InterfaceC3564 f2637;

    /* renamed from: ˊˋ */
    public int f2638;

    /* renamed from: ˋᵔ */
    public int f2639;

    /* renamed from: ˏᵢ */
    public float f2640;

    /* renamed from: ˑٴ */
    public boolean f2641;

    /* renamed from: ـˏ */
    public int f2642;

    /* renamed from: ٴʼ */
    public String f2643;

    /* renamed from: ٴᵢ */
    public PorterDuff.Mode f2644;

    /* renamed from: ᐧᴵ */
    public float f2645;

    /* renamed from: ᐧﾞ */
    public int f2646;

    /* renamed from: ᴵʼ */
    public C2608 f2647;

    /* renamed from: ᴵˑ */
    public boolean f2648;

    /* renamed from: ᴵᵔ */
    public final LinkedHashSet f2649;

    /* renamed from: ᵎˊ */
    public int f2650;

    /* renamed from: ᵎᵔ */
    public C2847 f2651;

    /* renamed from: ᵎⁱ */
    public Drawable f2652;

    /* renamed from: ᵔי */
    public int f2653;

    /* renamed from: ᵔٴ */
    public int f2654;

    /* renamed from: ﹳـ */
    public int f2655;

    public MaterialButton(Context context, AttributeSet attributeSet) {
        super(AbstractC2764.m6164(ar.tvplayer.tv.R.attr.2s3, ar.tvplayer.tv.R.style.f2676014o, context, attributeSet, new int[]{ar.tvplayer.tv.R.attr.24r}), attributeSet, ar.tvplayer.tv.R.attr.2s3);
        this.f2649 = new LinkedHashSet();
        this.f2632 = false;
        this.f2641 = false;
        this.f2638 = -1;
        this.f2628 = -1.0f;
        this.f2642 = -1;
        this.f2655 = -1;
        this.f2630 = -1;
        Context context2 = getContext();
        TypedArray m5186 = AbstractC2185.m5186(context2, attributeSet, AbstractC3399.f13279, ar.tvplayer.tv.R.attr.2s3, ar.tvplayer.tv.R.style.f2676014o, new int[0]);
        this.f2654 = m5186.getDimensionPixelSize(13, 0);
        int i = m5186.getInt(16, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.f2644 = AbstractC2185.m5189(i, mode);
        this.f2636 = ⁱˊ.ﹳᐧ(getContext(), m5186, 15);
        this.f2652 = ⁱˊ.ʽﹳ(getContext(), m5186, 11);
        this.f2639 = m5186.getInteger(12, 1);
        this.f2650 = m5186.getDimensionPixelSize(14, 0);
        InterfaceC2869 m6344 = C2849.m6344(context2, m5186, 19);
        m6344 = m6344 == null ? C2862.m6361(context2, attributeSet, ar.tvplayer.tv.R.attr.2s3, ar.tvplayer.tv.R.style.f2676014o).m6356() : m6344;
        boolean z = m5186.getBoolean(17, false);
        C3567 c3567 = new C3567(this, m6344);
        this.f2633 = c3567;
        c3567.f13942 = m5186.getDimensionPixelOffset(2, 0);
        c3567.f13953 = m5186.getDimensionPixelOffset(3, 0);
        c3567.f13945 = m5186.getDimensionPixelOffset(4, 0);
        c3567.f13947 = m5186.getDimensionPixelOffset(5, 0);
        if (m5186.hasValue(9)) {
            int dimensionPixelSize = m5186.getDimensionPixelSize(9, -1);
            c3567.f13933 = dimensionPixelSize;
            c3567.f13949 = c3567.f13949.mo6350(dimensionPixelSize);
            c3567.m7520();
            c3567.f13951 = true;
        }
        c3567.f13937 = m5186.getDimensionPixelSize(22, 0);
        c3567.f13944 = AbstractC2185.m5189(m5186.getInt(8, -1), mode);
        c3567.f13952 = ⁱˊ.ﹳᐧ(getContext(), m5186, 7);
        c3567.f13939 = ⁱˊ.ﹳᐧ(getContext(), m5186, 21);
        c3567.f13946 = ⁱˊ.ﹳᐧ(getContext(), m5186, 18);
        c3567.f13943 = m5186.getBoolean(6, false);
        c3567.f13932 = m5186.getDimensionPixelSize(10, 0);
        c3567.f13941 = m5186.getBoolean(23, true);
        int paddingStart = getPaddingStart();
        int paddingTop = getPaddingTop();
        int paddingEnd = getPaddingEnd();
        int paddingBottom = getPaddingBottom();
        if (m5186.hasValue(0)) {
            c3567.f13948 = true;
            setSupportBackgroundTintList(c3567.f13952);
            setSupportBackgroundTintMode(c3567.f13944);
        } else {
            c3567.m7519();
        }
        setPaddingRelative(paddingStart + c3567.f13942, paddingTop + c3567.f13945, paddingEnd + c3567.f13953, paddingBottom + c3567.f13947);
        setCheckedInternal(m5186.getBoolean(1, false));
        if (m6344 instanceof C2849) {
            c3567.f13935 = m2366();
            if (c3567.f13949 instanceof C2849) {
                c3567.m7520();
            }
        }
        setOpticalCenterEnabled(z);
        m5186.recycle();
        setCompoundDrawablePadding(this.f2654);
        m2364(this.f2652 != null);
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        return textAlignment != 1 ? (textAlignment == 6 || textAlignment == 3) ? Layout.Alignment.ALIGN_OPPOSITE : textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER : getGravityTextAlignment();
    }

    public float getDisplayedWidthIncrease() {
        return this.f2645;
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & 8388615;
        return gravity != 1 ? (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
    }

    private int getOpticalCenterShift() {
        C2844 m7523;
        if (this.f2648 && this.f2629 && (m7523 = this.f2633.m7523(false)) != null) {
            return (int) (m7523.m6328() * 0.11f);
        }
        return 0;
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        if (getTransformationMethod() != null) {
            charSequence = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(charSequence, 0, charSequence.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float f = 0.0f;
        for (int i = 0; i < lineCount; i++) {
            f = Math.max(f, getLayout().getLineWidth(i));
        }
        return (int) Math.ceil(f);
    }

    private void setCheckedInternal(boolean z) {
        if (!m2367() || this.f2632 == z) {
            return;
        }
        this.f2632 = z;
        refreshDrawableState();
        if (getParent() instanceof MaterialButtonToggleGroup) {
            MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) getParent();
            boolean z2 = this.f2632;
            if (!materialButtonToggleGroup.f2657) {
                playSoundEffect(0);
                materialButtonToggleGroup.m2373(getId(), z2);
            }
        }
        if (this.f2641) {
            return;
        }
        this.f2641 = true;
        Iterator it = this.f2649.iterator();
        if (it.hasNext()) {
            throw AbstractC2305.m5372(it);
        }
        this.f2641 = false;
    }

    public void setDisplayedWidthIncrease(float f) {
        MaterialButton materialButton;
        MaterialButton materialButton2;
        if (this.f2645 != f) {
            this.f2645 = f;
            m2368();
            invalidate();
            if (getParent() instanceof AbstractC3566) {
                AbstractC3566 abstractC3566 = (AbstractC3566) getParent();
                int i = (int) this.f2645;
                int indexOfChild = abstractC3566.indexOfChild(this);
                if (indexOfChild < 0) {
                    return;
                }
                int i2 = indexOfChild - 1;
                while (true) {
                    materialButton = null;
                    if (i2 < 0) {
                        materialButton2 = null;
                        break;
                    } else {
                        if (abstractC3566.m7514(i2)) {
                            materialButton2 = (MaterialButton) abstractC3566.getChildAt(i2);
                            break;
                        }
                        i2--;
                    }
                }
                int childCount = abstractC3566.getChildCount();
                while (true) {
                    indexOfChild++;
                    if (indexOfChild >= childCount) {
                        break;
                    } else if (abstractC3566.m7514(indexOfChild)) {
                        materialButton = (MaterialButton) abstractC3566.getChildAt(indexOfChild);
                        break;
                    }
                }
                if (materialButton2 == null && materialButton == null) {
                    return;
                }
                if (materialButton2 == null) {
                    materialButton.setDisplayedWidthDecrease(i);
                }
                if (materialButton == null) {
                    materialButton2.setDisplayedWidthDecrease(i);
                }
                if (materialButton2 == null || materialButton == null) {
                    return;
                }
                materialButton2.setDisplayedWidthDecrease(i / 2);
                materialButton.setDisplayedWidthDecrease((i + 1) / 2);
            }
        }
    }

    /* renamed from: ﹳٴ */
    public static /* synthetic */ void m2363(MaterialButton materialButton) {
        materialButton.f2635 = materialButton.getOpticalCenterShift();
        materialButton.m2368();
        materialButton.invalidate();
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public String getA11yClassName() {
        if (TextUtils.isEmpty(this.f2643)) {
            return (m2367() ? CompoundButton.class : Button.class).getName();
        }
        return this.f2643;
    }

    public int getAllowedWidthDecrease() {
        return this.f2630;
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (m2371()) {
            return this.f2633.f13933;
        }
        return 0;
    }

    public C2603 getCornerSpringForce() {
        return this.f2633.f13935;
    }

    public Drawable getIcon() {
        return this.f2652;
    }

    public int getIconGravity() {
        return this.f2639;
    }

    public int getIconPadding() {
        return this.f2654;
    }

    public int getIconSize() {
        return this.f2650;
    }

    public ColorStateList getIconTint() {
        return this.f2636;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f2644;
    }

    public int getInsetBottom() {
        return this.f2633.f13947;
    }

    public int getInsetTop() {
        return this.f2633.f13945;
    }

    public ColorStateList getRippleColor() {
        if (m2371()) {
            return this.f2633.f13946;
        }
        return null;
    }

    public InterfaceC2869 getShapeAppearance() {
        if (m2371()) {
            return this.f2633.f13949;
        }
        throw new IllegalStateException("Attempted to get ShapeAppearance from a MaterialButton which has an overwritten background.");
    }

    public C2862 getShapeAppearanceModel() {
        if (m2371()) {
            return this.f2633.f13949.mo6347();
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (m2371()) {
            return this.f2633.f13939;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (m2371()) {
            return this.f2633.f13937;
        }
        return 0;
    }

    @Override // p137.C2240
    public ColorStateList getSupportBackgroundTintList() {
        return m2371() ? this.f2633.f13952 : super.getSupportBackgroundTintList();
    }

    @Override // p137.C2240
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return m2371() ? this.f2633.f13944 : super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f2632;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (m2371()) {
            ʽʽ.ʾˋ(this, this.f2633.m7523(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (m2367()) {
            View.mergeDrawableStates(onCreateDrawableState, f2625);
        }
        if (this.f2632) {
            View.mergeDrawableStates(onCreateDrawableState, f2626);
        }
        return onCreateDrawableState;
    }

    @Override // p137.C2240, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(this.f2632);
    }

    @Override // p137.C2240, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(m2367());
        accessibilityNodeInfo.setChecked(this.f2632);
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // p137.C2240, android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        super.onLayout(z, i, i2, i3, i4);
        m2365(getMeasuredWidth(), getMeasuredHeight());
        int i6 = getResources().getConfiguration().orientation;
        if (this.f2638 != i6) {
            this.f2638 = i6;
            this.f2628 = -1.0f;
        }
        if (this.f2628 == -1.0f) {
            this.f2628 = getMeasuredWidth();
            if (this.f2634 == null && (getParent() instanceof AbstractC3566) && ((AbstractC3566) getParent()).getButtonSizeChange() != null) {
                this.f2634 = (LinearLayout.LayoutParams) getLayoutParams();
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f2634);
                layoutParams.width = (int) this.f2628;
                setLayoutParams(layoutParams);
            }
        }
        boolean z2 = false;
        if (this.f2630 == -1) {
            if (this.f2652 == null) {
                i5 = 0;
            } else {
                int iconPadding = getIconPadding();
                int i7 = this.f2650;
                if (i7 == 0) {
                    i7 = this.f2652.getIntrinsicWidth();
                }
                i5 = iconPadding + i7;
            }
            this.f2630 = (getMeasuredWidth() - getTextLayoutWidth()) - i5;
        }
        if (this.f2642 == -1) {
            this.f2642 = getPaddingStart();
        }
        if (this.f2655 == -1) {
            this.f2655 = getPaddingEnd();
        }
        if ((getParent() instanceof AbstractC3566) && ((AbstractC3566) getParent()).getOrientation() == 0) {
            z2 = true;
        }
        this.f2629 = z2;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C3565)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C3565 c3565 = (C3565) parcelable;
        super.onRestoreInstanceState(c3565.f15355);
        setChecked(c3565.f13920);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.os.Parcelable, ᴵˑ.ⁱˊ, ٴˉ.ˑﹳ] */
    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? abstractC3985 = new AbstractC3985(super.onSaveInstanceState());
        abstractC3985.f13920 = this.f2632;
        return abstractC3985;
    }

    @Override // p137.C2240, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        m2365(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (isEnabled() && this.f2633.f13941) {
            toggle();
        }
        return super.performClick();
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.f2652 != null) {
            if (this.f2652.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    public void setA11yClassName(String str) {
        this.f2643 = str;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (!m2371()) {
            super.setBackgroundColor(i);
            return;
        }
        C3567 c3567 = this.f2633;
        if (c3567.m7523(false) != null) {
            c3567.m7523(false).setTint(i);
        }
    }

    @Override // p137.C2240, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!m2371()) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
            return;
        }
        C3567 c3567 = this.f2633;
        c3567.f13948 = true;
        MaterialButton materialButton = c3567.f13950;
        materialButton.setSupportBackgroundTintList(c3567.f13952);
        materialButton.setSupportBackgroundTintMode(c3567.f13944);
        super.setBackgroundDrawable(drawable);
    }

    @Override // p137.C2240, android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundDrawable(i != 0 ? ˊʻ.ﹳᐧ(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z) {
        if (m2371()) {
            this.f2633.f13943 = z;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        setCheckedInternal(z);
    }

    public void setCornerRadius(int i) {
        if (m2371()) {
            C3567 c3567 = this.f2633;
            if (c3567.f13951 && c3567.f13933 == i) {
                return;
            }
            c3567.f13933 = i;
            c3567.f13951 = true;
            c3567.f13949 = c3567.f13949.mo6350(i);
            c3567.m7520();
        }
    }

    public void setCornerRadiusResource(int i) {
        if (m2371()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    public void setCornerSpringForce(C2603 c2603) {
        C3567 c3567 = this.f2633;
        c3567.f13935 = c2603;
        if (c3567.f13949 instanceof C2849) {
            c3567.m7520();
        }
    }

    public void setDisplayedWidthDecrease(int i) {
        this.f2640 = Math.min(i, this.f2630);
        m2368();
        invalidate();
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (m2371()) {
            this.f2633.m7523(false).m6327(f);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f2652 != drawable) {
            this.f2652 = drawable;
            m2364(true);
            m2365(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i) {
        if (this.f2639 != i) {
            this.f2639 = i;
            m2365(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i) {
        if (this.f2654 != i) {
            this.f2654 = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(int i) {
        setIcon(i != 0 ? ˊʻ.ﹳᐧ(getContext(), i) : null);
    }

    public void setIconSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f2650 != i) {
            this.f2650 = i;
            m2364(true);
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f2636 != colorStateList) {
            this.f2636 = colorStateList;
            m2364(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f2644 != mode) {
            this.f2644 = mode;
            m2364(false);
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(AbstractC1031.m3358(getContext(), i));
    }

    public void setInsetBottom(int i) {
        C3567 c3567 = this.f2633;
        c3567.m7522(c3567.f13945, i);
    }

    public void setInsetTop(int i) {
        C3567 c3567 = this.f2633;
        c3567.m7522(i, c3567.f13947);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(InterfaceC3564 interfaceC3564) {
        this.f2637 = interfaceC3564;
    }

    public void setOpticalCenterEnabled(boolean z) {
        if (this.f2648 != z) {
            this.f2648 = z;
            C3567 c3567 = this.f2633;
            if (z) {
                C3569 c3569 = new C3569(0, this);
                c3567.f13938 = c3569;
                C2844 m7523 = c3567.m7523(false);
                if (m7523 != null) {
                    m7523.f10664 = c3569;
                }
            } else {
                c3567.f13938 = null;
                C2844 m75232 = c3567.m7523(false);
                if (m75232 != null) {
                    m75232.f10664 = null;
                }
            }
            post(new RunnableC3568(0, this));
        }
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        ʿ r0 = this.f2637;
        if (r0 != null) {
            ((MaterialButtonToggleGroup) r0.ᴵˊ).invalidate();
        }
        super.setPressed(z);
        m2369(false);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (m2371()) {
            C3567 c3567 = this.f2633;
            MaterialButton materialButton = c3567.f13950;
            if (c3567.f13946 != colorStateList) {
                c3567.f13946 = colorStateList;
                if (materialButton.getBackground() instanceof RippleDrawable) {
                    ((RippleDrawable) materialButton.getBackground()).setColor(AbstractC5055.m9959(colorStateList));
                }
            }
        }
    }

    public void setRippleColorResource(int i) {
        if (m2371()) {
            setRippleColor(AbstractC1031.m3358(getContext(), i));
        }
    }

    public void setShapeAppearance(InterfaceC2869 interfaceC2869) {
        if (!m2371()) {
            throw new IllegalStateException("Attempted to set ShapeAppearance on a MaterialButton which has an overwritten background.");
        }
        C3567 c3567 = this.f2633;
        if (c3567.f13935 == null && interfaceC2869.mo6348()) {
            c3567.f13935 = m2366();
            if (c3567.f13949 instanceof C2849) {
                c3567.m7520();
            }
        }
        c3567.f13949 = interfaceC2869;
        c3567.m7520();
    }

    @Override // p188.InterfaceC2843
    public void setShapeAppearanceModel(C2862 c2862) {
        if (!m2371()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        C3567 c3567 = this.f2633;
        c3567.f13949 = c2862;
        c3567.m7520();
    }

    public void setShouldDrawSurfaceColorStroke(boolean z) {
        if (m2371()) {
            C3567 c3567 = this.f2633;
            c3567.f13934 = z;
            c3567.m7521();
        }
    }

    public void setSizeChange(C2847 c2847) {
        if (this.f2651 != c2847) {
            this.f2651 = c2847;
            m2369(true);
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (m2371()) {
            C3567 c3567 = this.f2633;
            if (c3567.f13939 != colorStateList) {
                c3567.f13939 = colorStateList;
                c3567.m7521();
            }
        }
    }

    public void setStrokeColorResource(int i) {
        if (m2371()) {
            setStrokeColor(AbstractC1031.m3358(getContext(), i));
        }
    }

    public void setStrokeWidth(int i) {
        if (m2371()) {
            C3567 c3567 = this.f2633;
            if (c3567.f13937 != i) {
                c3567.f13937 = i;
                c3567.m7521();
            }
        }
    }

    public void setStrokeWidthResource(int i) {
        if (m2371()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // p137.C2240
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (!m2371()) {
            super.setSupportBackgroundTintList(colorStateList);
            return;
        }
        C3567 c3567 = this.f2633;
        if (c3567.f13952 != colorStateList) {
            c3567.f13952 = colorStateList;
            if (c3567.m7523(false) != null) {
                c3567.m7523(false).setTintList(c3567.f13952);
            }
        }
    }

    @Override // p137.C2240
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (!m2371()) {
            super.setSupportBackgroundTintMode(mode);
            return;
        }
        C3567 c3567 = this.f2633;
        if (c3567.f13944 != mode) {
            c3567.f13944 = mode;
            if (c3567.m7523(false) == null || c3567.f13944 == null) {
                return;
            }
            c3567.m7523(false).setTintMode(c3567.f13944);
        }
    }

    @Override // android.view.View
    public void setTextAlignment(int i) {
        super.setTextAlignment(i);
        m2365(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setToggleCheckedStateOnClick(boolean z) {
        this.f2633.f13941 = z;
    }

    @Override // android.widget.TextView
    public void setWidth(int i) {
        this.f2628 = -1.0f;
        super.setWidth(i);
    }

    public void setWidthChangeMax(int i) {
        if (this.f2646 != i) {
            this.f2646 = i;
            m2369(true);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f2632);
    }

    /* renamed from: ʼˎ */
    public final void m2364(boolean z) {
        Drawable drawable = this.f2652;
        if (drawable != null) {
            Drawable mutate = drawable.mutate();
            this.f2652 = mutate;
            mutate.setTintList(this.f2636);
            PorterDuff.Mode mode = this.f2644;
            if (mode != null) {
                this.f2652.setTintMode(mode);
            }
            int i = this.f2650;
            if (i == 0) {
                i = this.f2652.getIntrinsicWidth();
            }
            int i2 = this.f2650;
            if (i2 == 0) {
                i2 = this.f2652.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f2652;
            int i3 = this.f2653;
            int i4 = this.f2631;
            drawable2.setBounds(i3, i4, i + i3, i2 + i4);
            this.f2652.setVisible(true, z);
        }
        if (z) {
            m2370();
            return;
        }
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        int i5 = this.f2639;
        if (((i5 == 1 || i5 == 2) && drawable3 != this.f2652) || (((i5 == 3 || i5 == 4) && drawable5 != this.f2652) || ((i5 == 16 || i5 == 32) && drawable4 != this.f2652))) {
            m2370();
        }
    }

    /* renamed from: ˆʾ */
    public final void m2365(int i, int i2) {
        if (this.f2652 == null || getLayout() == null) {
            return;
        }
        int i3 = this.f2639;
        if (i3 != 1 && i3 != 2 && i3 != 3 && i3 != 4) {
            if (i3 == 16 || i3 == 32) {
                this.f2653 = 0;
                if (i3 == 16) {
                    this.f2631 = 0;
                    m2364(false);
                    return;
                }
                int i4 = this.f2650;
                if (i4 == 0) {
                    i4 = this.f2652.getIntrinsicHeight();
                }
                int max = Math.max(0, (((((i2 - getTextHeight()) - getPaddingTop()) - i4) - this.f2654) - getPaddingBottom()) / 2);
                if (this.f2631 != max) {
                    this.f2631 = max;
                    m2364(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f2631 = 0;
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        int i5 = this.f2639;
        if (i5 == 1 || i5 == 3 || ((i5 == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i5 == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.f2653 = 0;
            m2364(false);
            return;
        }
        int i6 = this.f2650;
        if (i6 == 0) {
            i6 = this.f2652.getIntrinsicWidth();
        }
        int textLayoutWidth = ((((i - getTextLayoutWidth()) - getPaddingEnd()) - i6) - this.f2654) - getPaddingStart();
        if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
            textLayoutWidth /= 2;
        }
        if ((getLayoutDirection() == 1) != (this.f2639 == 4)) {
            textLayoutWidth = -textLayoutWidth;
        }
        if (this.f2653 != textLayoutWidth) {
            this.f2653 = textLayoutWidth;
            m2364(false);
        }
    }

    /* renamed from: ˈ */
    public final C2603 m2366() {
        Context context = getContext();
        TypedValue typedValue = ʾˊ.ʼʼ(context, ar.tvplayer.tv.R.attr.4p6);
        int[] iArr = AbstractC3399.f13285;
        TypedArray obtainStyledAttributes = typedValue == null ? context.obtainStyledAttributes(null, iArr, 0, ar.tvplayer.tv.R.style.f262285la) : context.obtainStyledAttributes(typedValue.resourceId, iArr);
        C2603 c2603 = new C2603();
        try {
            float f = obtainStyledAttributes.getFloat(1, Float.MIN_VALUE);
            if (f == Float.MIN_VALUE) {
                throw new IllegalArgumentException("A MaterialSpring style must have stiffness value.");
            }
            float f2 = obtainStyledAttributes.getFloat(0, Float.MIN_VALUE);
            if (f2 == Float.MIN_VALUE) {
                throw new IllegalArgumentException("A MaterialSpring style must have a damping value.");
            }
            c2603.m5851(f);
            c2603.m5852(f2);
            return c2603;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: ˑﹳ */
    public final boolean m2367() {
        C3567 c3567 = this.f2633;
        return c3567 != null && c3567.f13943;
    }

    /* renamed from: ٴﹶ */
    public final void m2368() {
        int i = (int) (this.f2645 - this.f2640);
        int i2 = (i / 2) + this.f2635;
        getLayoutParams().width = (int) (this.f2628 + i);
        setPaddingRelative(this.f2642 + i2, getPaddingTop(), (this.f2655 + i) - i2, getPaddingBottom());
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0071, code lost:
    
        if (r1 == 2) goto L81;
     */
    /* renamed from: ᵎﹶ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2369(boolean r9) {
        /*
            r8 = this;
            ˋⁱ.ʽʽ r0 = r8.f2651
            if (r0 != 0) goto L6
            goto L85
        L6:
            ˊᵔ.ᵔᵢ r0 = r8.f2647
            if (r0 != 0) goto L19
            ˊᵔ.ᵔᵢ r0 = new ˊᵔ.ᵔᵢ
            ٴˉ.ʽ r1 = com.google.android.material.button.MaterialButton.f2627
            r0.<init>(r8, r1)
            r8.f2647 = r0
            ˊᵔ.ʼˎ r1 = r8.m2366()
            r0.f9878 = r1
        L19:
            boolean r0 = r8.f2629
            if (r0 == 0) goto L85
            int r0 = r8.f2646
            ˋⁱ.ʽʽ r1 = r8.f2651
            int[] r2 = r8.getDrawableState()
            int[][] r3 = r1.f10693
            r4 = 0
            r5 = r4
        L29:
            int r6 = r1.f10696
            r7 = -1
            if (r5 >= r6) goto L3a
            r6 = r3[r5]
            boolean r6 = android.util.StateSet.stateSetMatches(r6, r2)
            if (r6 == 0) goto L37
            goto L3b
        L37:
            int r5 = r5 + 1
            goto L29
        L3a:
            r5 = r7
        L3b:
            if (r5 >= 0) goto L54
            int[] r2 = android.util.StateSet.WILD_CARD
            int[][] r3 = r1.f10693
            r5 = r4
        L42:
            int r6 = r1.f10696
            if (r5 >= r6) goto L53
            r6 = r3[r5]
            boolean r6 = android.util.StateSet.stateSetMatches(r6, r2)
            if (r6 == 0) goto L50
            r7 = r5
            goto L53
        L50:
            int r5 = r5 + 1
            goto L42
        L53:
            r5 = r7
        L54:
            if (r5 >= 0) goto L59
            ˉˆ.ʿ r1 = r1.f10695
            goto L5d
        L59:
            ˉˆ.ʿ[] r1 = r1.f10694
            r1 = r1[r5]
        L5d:
            java.lang.Object r1 = r1.ᴵˊ
            ˋⁱ.ᴵˊ r1 = (p188.C2860) r1
            int r2 = r8.getWidth()
            float r3 = r1.f10740
            int r1 = r1.f10741
            r5 = 1
            if (r1 != r5) goto L70
            float r1 = (float) r2
            float r3 = r3 * r1
        L6e:
            int r4 = (int) r3
            goto L74
        L70:
            r2 = 2
            if (r1 != r2) goto L74
            goto L6e
        L74:
            int r0 = java.lang.Math.min(r0, r4)
            ˊᵔ.ᵔᵢ r1 = r8.f2647
            float r0 = (float) r0
            r1.m5861(r0)
            if (r9 == 0) goto L85
            ˊᵔ.ᵔᵢ r9 = r8.f2647
            r9.m5860()
        L85:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButton.m2369(boolean):void");
    }

    /* renamed from: ᵔᵢ */
    public final void m2370() {
        int i = this.f2639;
        if (i == 1 || i == 2) {
            setCompoundDrawablesRelative(this.f2652, null, null, null);
            return;
        }
        if (i == 3 || i == 4) {
            setCompoundDrawablesRelative(null, null, this.f2652, null);
        } else if (i == 16 || i == 32) {
            setCompoundDrawablesRelative(null, this.f2652, null, null);
        }
    }

    /* renamed from: ﾞᴵ */
    public final boolean m2371() {
        C3567 c3567 = this.f2633;
        return (c3567 == null || c3567.f13948) ? false : true;
    }
}
