package com.google.android.material.chip;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.TextView;
import ar.tvplayer.core.domain.ʽﹳ;
import com.google.android.material.chip.Chip;
import java.lang.ref.WeakReference;
import java.util.Locale;
import p021.AbstractC1031;
import p110.C1948;
import p110.C1949;
import p110.C1951;
import p110.C1953;
import p110.InterfaceC1950;
import p119.AbstractC2006;
import p119.C2004;
import p129.AbstractC2185;
import p129.C2180;
import p129.InterfaceC2191;
import p137.C2328;
import p184.AbstractC2764;
import p186.AbstractC2823;
import p188.C2862;
import p188.InterfaceC2843;
import p236.C3199;
import p259.AbstractC3399;
import p278.InterfaceC3539;
import p401.C4762;
import p427.AbstractC5055;
import ˈˋ.ʾˊ;
import ˉᵎ.ⁱˊ;
import ᴵˋ.ˊʻ;
import ﹳˋ.ʽʽ;

/* loaded from: classes.dex */
public class Chip extends C2328 implements InterfaceC1950, InterfaceC2843, Checkable {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public boolean f2669;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public boolean f2670;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public int f2671;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final C1951 f2672;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public View.OnClickListener f2673;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public InsetDrawable f2674;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final C1949 f2675;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public CharSequence f2676;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public int f2677;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final Rect f2678;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f2679;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public RippleDrawable f2680;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C1953 f2681;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public boolean f2682;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public CompoundButton.OnCheckedChangeListener f2683;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public boolean f2684;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public boolean f2685;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final RectF f2686;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public static final Rect f2668 = new Rect();

    /* renamed from: ˉـ, reason: contains not printable characters */
    public static final int[] f2667 = {R.attr.state_selected};

    /* renamed from: ʿ, reason: contains not printable characters */
    public static final int[] f2666 = {R.attr.state_checkable};

    public Chip(Context context, AttributeSet attributeSet) {
        super(AbstractC2764.m6163(context, attributeSet, ar.tvplayer.tv.R.attr.mc, ar.tvplayer.tv.R.style.f26769289), attributeSet, ar.tvplayer.tv.R.attr.mc);
        int resourceId;
        int resourceId2;
        int resourceId3;
        this.f2678 = new Rect();
        this.f2686 = new RectF();
        this.f2672 = new C1951(0, this);
        Context context2 = getContext();
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
                throw new UnsupportedOperationException("Chip does not support multi-line text");
            }
            if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
            }
        }
        C1953 c1953 = new C1953(context2, attributeSet);
        Context context3 = c1953.f7793;
        int[] iArr = AbstractC3399.f13274;
        TypedArray m5186 = AbstractC2185.m5186(context3, attributeSet, iArr, ar.tvplayer.tv.R.attr.mc, ar.tvplayer.tv.R.style.f26769289, new int[0]);
        c1953.f7748 = m5186.hasValue(37);
        Context context4 = c1953.f7793;
        ColorStateList colorStateList = ⁱˊ.ﹳᐧ(context4, m5186, 24);
        if (c1953.f7754 != colorStateList) {
            c1953.f7754 = colorStateList;
            c1953.onStateChange(c1953.getState());
        }
        ColorStateList colorStateList2 = ⁱˊ.ﹳᐧ(context4, m5186, 11);
        if (c1953.f7774 != colorStateList2) {
            c1953.f7774 = colorStateList2;
            c1953.onStateChange(c1953.getState());
        }
        float dimension = m5186.getDimension(19, 0.0f);
        if (c1953.f7751 != dimension) {
            c1953.f7751 = dimension;
            c1953.invalidateSelf();
            c1953.m4935();
        }
        if (m5186.hasValue(12)) {
            c1953.m4925(m5186.getDimension(12, 0.0f));
        }
        c1953.m4920(ⁱˊ.ﹳᐧ(context4, m5186, 22));
        c1953.m4942(m5186.getDimension(23, 0.0f));
        c1953.m4924(ⁱˊ.ﹳᐧ(context4, m5186, 36));
        String text = m5186.getText(5);
        text = text == null ? "" : text;
        if (!TextUtils.equals(c1953.f7777, text)) {
            c1953.f7777 = text;
            c1953.f7752.f8551 = true;
            c1953.invalidateSelf();
            c1953.m4935();
        }
        C4762 c4762 = (!m5186.hasValue(0) || (resourceId3 = m5186.getResourceId(0, 0)) == 0) ? null : new C4762(context4, resourceId3);
        c4762.f17991 = m5186.getDimension(1, c4762.f17991);
        c1953.m4918(c4762);
        int i = m5186.getInt(3, 0);
        if (i == 1) {
            c1953.f7750 = TextUtils.TruncateAt.START;
        } else if (i == 2) {
            c1953.f7750 = TextUtils.TruncateAt.MIDDLE;
        } else if (i == 3) {
            c1953.f7750 = TextUtils.TruncateAt.END;
        }
        c1953.m4941(m5186.getBoolean(18, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            c1953.m4941(m5186.getBoolean(15, false));
        }
        c1953.m4940(ⁱˊ.ʽﹳ(context4, m5186, 14));
        if (m5186.hasValue(17)) {
            c1953.m4938(ⁱˊ.ﹳᐧ(context4, m5186, 17));
        }
        c1953.m4932(m5186.getDimension(16, -1.0f));
        c1953.m4943(m5186.getBoolean(31, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            c1953.m4943(m5186.getBoolean(26, false));
        }
        c1953.m4921(ⁱˊ.ʽﹳ(context4, m5186, 25));
        c1953.m4931(ⁱˊ.ﹳᐧ(context4, m5186, 30));
        c1953.m4928(m5186.getDimension(28, 0.0f));
        c1953.m4922(m5186.getBoolean(6, false));
        c1953.m4933(m5186.getBoolean(10, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            c1953.m4933(m5186.getBoolean(8, false));
        }
        c1953.m4937(ⁱˊ.ʽﹳ(context4, m5186, 7));
        if (m5186.hasValue(9)) {
            c1953.m4926(ⁱˊ.ﹳᐧ(context4, m5186, 9));
        }
        c1953.f7771 = (!m5186.hasValue(39) || (resourceId2 = m5186.getResourceId(39, 0)) == 0) ? null : C3199.m7037(context4, resourceId2);
        c1953.f7781 = (!m5186.hasValue(33) || (resourceId = m5186.getResourceId(33, 0)) == 0) ? null : C3199.m7037(context4, resourceId);
        float dimension2 = m5186.getDimension(21, 0.0f);
        if (c1953.f7749 != dimension2) {
            c1953.f7749 = dimension2;
            c1953.invalidateSelf();
            c1953.m4935();
        }
        c1953.m4936(m5186.getDimension(35, 0.0f));
        c1953.m4923(m5186.getDimension(34, 0.0f));
        float dimension3 = m5186.getDimension(41, 0.0f);
        if (c1953.f7737 != dimension3) {
            c1953.f7737 = dimension3;
            c1953.invalidateSelf();
            c1953.m4935();
        }
        float dimension4 = m5186.getDimension(40, 0.0f);
        if (c1953.f7791 != dimension4) {
            c1953.f7791 = dimension4;
            c1953.invalidateSelf();
            c1953.m4935();
        }
        c1953.m4927(m5186.getDimension(29, 0.0f));
        c1953.m4929(m5186.getDimension(27, 0.0f));
        float dimension5 = m5186.getDimension(13, 0.0f);
        if (c1953.f7787 != dimension5) {
            c1953.f7787 = dimension5;
            c1953.invalidateSelf();
            c1953.m4935();
        }
        c1953.f7783 = m5186.getDimensionPixelSize(4, Integer.MAX_VALUE);
        m5186.recycle();
        AbstractC2185.m5188(context2, attributeSet, ar.tvplayer.tv.R.attr.mc, ar.tvplayer.tv.R.style.f26769289);
        AbstractC2185.m5187(context2, attributeSet, iArr, ar.tvplayer.tv.R.attr.mc, ar.tvplayer.tv.R.style.f26769289, new int[0]);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, ar.tvplayer.tv.R.attr.mc, ar.tvplayer.tv.R.style.f26769289);
        this.f2685 = obtainStyledAttributes.getBoolean(32, false);
        TypedValue typedValue = ʾˊ.ʼʼ(context2, ar.tvplayer.tv.R.attr.70i);
        this.f2677 = (int) Math.ceil(obtainStyledAttributes.getDimension(20, (int) ((typedValue == null || typedValue.type != 5) ? context2.getResources().getDimension(ar.tvplayer.tv.R.dimen.39s) : typedValue.getDimension(context2.getResources().getDisplayMetrics()))));
        obtainStyledAttributes.recycle();
        setChipDrawable(c1953);
        c1953.m6327(getElevation());
        AbstractC2185.m5188(context2, attributeSet, ar.tvplayer.tv.R.attr.mc, ar.tvplayer.tv.R.style.f26769289);
        AbstractC2185.m5187(context2, attributeSet, iArr, ar.tvplayer.tv.R.attr.mc, ar.tvplayer.tv.R.style.f26769289, new int[0]);
        TypedArray obtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, iArr, ar.tvplayer.tv.R.attr.mc, ar.tvplayer.tv.R.style.f26769289);
        boolean hasValue = obtainStyledAttributes2.hasValue(37);
        obtainStyledAttributes2.recycle();
        this.f2675 = new C1949(this, this);
        m2382();
        if (!hasValue) {
            setOutlineProvider(new C1948(this, 0));
        }
        setChecked(this.f2679);
        setText(c1953.f7777);
        setEllipsize(c1953.f7750);
        m2384();
        if (!this.f2681.f7761) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        m2386();
        if (this.f2685) {
            setMinHeight(this.f2677);
        }
        this.f2671 = getLayoutDirection();
        super.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: ˆᵢ.ﹳٴ
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                CompoundButton.OnCheckedChangeListener onCheckedChangeListener = Chip.this.f2683;
                if (onCheckedChangeListener != null) {
                    onCheckedChangeListener.onCheckedChanged(compoundButton, z);
                }
            }
        });
    }

    private RectF getCloseIconTouchBounds() {
        RectF rectF = this.f2686;
        rectF.setEmpty();
        if (m2381() && this.f2673 != null) {
            C1953 c1953 = this.f2681;
            Rect bounds = c1953.getBounds();
            rectF.setEmpty();
            if (c1953.m4934()) {
                float f = c1953.f7787 + c1953.f7776 + c1953.f7769 + c1953.f7773 + c1953.f7791;
                if (c1953.getLayoutDirection() == 0) {
                    float f2 = bounds.right;
                    rectF.right = f2;
                    rectF.left = f2 - f;
                } else {
                    float f3 = bounds.left;
                    rectF.left = f3;
                    rectF.right = f3 + f;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
        }
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        int i = (int) closeIconTouchBounds.left;
        int i2 = (int) closeIconTouchBounds.top;
        int i3 = (int) closeIconTouchBounds.right;
        int i4 = (int) closeIconTouchBounds.bottom;
        Rect rect = this.f2678;
        rect.set(i, i2, i3, i4);
        return rect;
    }

    private C4762 getTextAppearance() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7752.f8555;
        }
        return null;
    }

    private void setCloseIconHovered(boolean z) {
        if (this.f2684 != z) {
            this.f2684 = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.f2682 != z) {
            this.f2682 = z;
            refreshDrawableState();
        }
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        int i;
        if (!this.f2669) {
            return super.dispatchHoverEvent(motionEvent);
        }
        C1949 c1949 = this.f2675;
        AccessibilityManager accessibilityManager = c1949.f9209;
        int i2 = 0;
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action == 7 || action == 9) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                Chip chip = c1949.f7731;
                if (chip.m2381() && chip.getCloseIconTouchBounds().contains(x, y)) {
                    i2 = 1;
                }
                int i3 = c1949.f9205;
                if (i3 != i2) {
                    c1949.f9205 = i2;
                    c1949.m5477(i2, 128);
                    c1949.m5477(i3, 256);
                    return true;
                }
            } else if (action == 10 && (i = c1949.f9205) != Integer.MIN_VALUE) {
                if (i != Integer.MIN_VALUE) {
                    c1949.f9205 = Integer.MIN_VALUE;
                    c1949.m5477(Integer.MIN_VALUE, 128);
                    c1949.m5477(i, 256);
                    return true;
                }
            }
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.f2669) {
            return super.dispatchKeyEvent(keyEvent);
        }
        C1949 c1949 = this.f2675;
        c1949.getClass();
        boolean z = false;
        int i = 0;
        z = false;
        z = false;
        z = false;
        z = false;
        z = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i2 = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode == 19) {
                                    i2 = 33;
                                } else if (keyCode == 21) {
                                    i2 = 17;
                                } else if (keyCode != 22) {
                                    i2 = 130;
                                }
                                int repeatCount = keyEvent.getRepeatCount() + 1;
                                boolean z2 = false;
                                while (i < repeatCount && c1949.m5472(i2, null)) {
                                    i++;
                                    z2 = true;
                                }
                                z = z2;
                                break;
                            }
                            break;
                    }
                }
                if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                    int i3 = c1949.f9210;
                    if (i3 != Integer.MIN_VALUE) {
                        Chip chip = c1949.f7731;
                        if (i3 == 0) {
                            chip.performClick();
                        } else if (i3 == 1) {
                            chip.playSoundEffect(0);
                            View.OnClickListener onClickListener = chip.f2673;
                            if (onClickListener != null) {
                                onClickListener.onClick(chip);
                            }
                            if (chip.f2669) {
                                chip.f2675.m5477(1, 1);
                            }
                        }
                    }
                    z = true;
                }
            } else if (keyEvent.hasNoModifiers()) {
                z = c1949.m5472(2, null);
            } else if (keyEvent.hasModifiers(1)) {
                z = c1949.m5472(1, null);
            }
        }
        if (!z || c1949.f9210 == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [boolean, int] */
    @Override // p137.C2328, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C1953 c1953 = this.f2681;
        boolean z = false;
        int i = 0;
        z = false;
        if (c1953 != null && C1953.m4909(c1953.f7764)) {
            C1953 c19532 = this.f2681;
            ?? isEnabled = isEnabled();
            int i2 = isEnabled;
            if (this.f2670) {
                i2 = isEnabled + 1;
            }
            int i3 = i2;
            if (this.f2684) {
                i3 = i2 + 1;
            }
            int i4 = i3;
            if (this.f2682) {
                i4 = i3 + 1;
            }
            int i5 = i4;
            if (isChecked()) {
                i5 = i4 + 1;
            }
            int[] iArr = new int[i5];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i = 1;
            }
            if (this.f2670) {
                iArr[i] = 16842908;
                i++;
            }
            if (this.f2684) {
                iArr[i] = 16843623;
                i++;
            }
            if (this.f2682) {
                iArr[i] = 16842919;
                i++;
            }
            if (isChecked()) {
                iArr[i] = 16842913;
            }
            z = c19532.m4914(iArr);
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.f2676)) {
            return this.f2676;
        }
        C1953 c1953 = this.f2681;
        if (c1953 == null || !c1953.f7747) {
            return isClickable() ? "android.widget.Button" : "android.view.View";
        }
        getParent();
        return "android.widget.Button";
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f2674;
        return insetDrawable == null ? this.f2681 : insetDrawable;
    }

    public Drawable getCheckedIcon() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7778;
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7739;
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7774;
        }
        return null;
    }

    public float getChipCornerRadius() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return Math.max(0.0f, c1953.m4913());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f2681;
    }

    public float getChipEndPadding() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7787;
        }
        return 0.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable getChipIcon() {
        Drawable drawable;
        C1953 c1953 = this.f2681;
        if (c1953 == null || (drawable = c1953.f7772) == 0) {
            return null;
        }
        if (!(drawable instanceof InterfaceC3539)) {
            return drawable;
        }
        return null;
    }

    public float getChipIconSize() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7779;
        }
        return 0.0f;
    }

    public ColorStateList getChipIconTint() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7744;
        }
        return null;
    }

    public float getChipMinHeight() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7751;
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7749;
        }
        return 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7790;
        }
        return null;
    }

    public float getChipStrokeWidth() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7738;
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable getCloseIcon() {
        Drawable drawable;
        C1953 c1953 = this.f2681;
        if (c1953 == null || (drawable = c1953.f7764) == 0) {
            return null;
        }
        if (!(drawable instanceof InterfaceC3539)) {
            return drawable;
        }
        return null;
    }

    public CharSequence getCloseIconContentDescription() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7745;
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7776;
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7769;
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7773;
        }
        return 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7762;
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7750;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        if (this.f2669) {
            C1949 c1949 = this.f2675;
            if (c1949.f9210 == 1 || c1949.f9207 == 1) {
                rect.set(getCloseIconTouchBoundsInt());
                return;
            }
        }
        super.getFocusedRect(rect);
    }

    public C3199 getHideMotionSpec() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7781;
        }
        return null;
    }

    public float getIconEndPadding() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7786;
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7789;
        }
        return 0.0f;
    }

    public ColorStateList getRippleColor() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7765;
        }
        return null;
    }

    public C2862 getShapeAppearanceModel() {
        return this.f2681.m6315();
    }

    public C3199 getShowMotionSpec() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7771;
        }
        return null;
    }

    public float getTextEndPadding() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7791;
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            return c1953.f7737;
        }
        return 0.0f;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ʽʽ.ʾˋ(this, this.f2681);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f2667);
        }
        C1953 c1953 = this.f2681;
        if (c1953 != null && c1953.f7747) {
            View.mergeDrawableStates(onCreateDrawableState, f2666);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (this.f2669) {
            C1949 c1949 = this.f2675;
            int i2 = c1949.f9210;
            if (i2 != Integer.MIN_VALUE) {
                c1949.m5471(i2);
            }
            if (z) {
                c1949.m5472(i, rect);
            }
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        C1953 c1953 = this.f2681;
        accessibilityNodeInfo.setCheckable(c1953 != null && c1953.f7747);
        accessibilityNodeInfo.setClickable(isClickable());
        getParent();
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        return (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) ? PointerIcon.getSystemIcon(getContext(), 1002) : super.onResolvePointerIcon(motionEvent, i);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.f2671 != i) {
            this.f2671 = i;
            m2386();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
    
        if (r0 != 3) goto L28;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getActionMasked()
            android.graphics.RectF r1 = r5.getCloseIconTouchBounds()
            float r2 = r6.getX()
            float r3 = r6.getY()
            boolean r1 = r1.contains(r2, r3)
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L4a
            if (r0 == r2) goto L2c
            r4 = 2
            if (r0 == r4) goto L21
            r1 = 3
            if (r0 == r1) goto L45
            goto L50
        L21:
            boolean r0 = r5.f2682
            if (r0 == 0) goto L50
            if (r1 != 0) goto L2a
            r5.setCloseIconPressed(r3)
        L2a:
            r0 = r2
            goto L51
        L2c:
            boolean r0 = r5.f2682
            if (r0 == 0) goto L45
            r5.playSoundEffect(r3)
            android.view.View$OnClickListener r0 = r5.f2673
            if (r0 == 0) goto L3a
            r0.onClick(r5)
        L3a:
            boolean r0 = r5.f2669
            if (r0 == 0) goto L43
            ˆᵢ.ˈ r0 = r5.f2675
            r0.m5477(r2, r2)
        L43:
            r0 = r2
            goto L46
        L45:
            r0 = r3
        L46:
            r5.setCloseIconPressed(r3)
            goto L51
        L4a:
            if (r1 == 0) goto L50
            r5.setCloseIconPressed(r2)
            goto L2a
        L50:
            r0 = r3
        L51:
            if (r0 != 0) goto L5b
            boolean r6 = super.onTouchEvent(r6)
            if (r6 == 0) goto L5a
            goto L5b
        L5a:
            return r3
        L5b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setAccessibilityClassName(CharSequence charSequence) {
        this.f2676 = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f2680) {
            super.setBackground(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
    }

    @Override // p137.C2328, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f2680) {
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // p137.C2328, android.view.View
    public void setBackgroundResource(int i) {
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
    }

    public void setCheckable(boolean z) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4922(z);
        }
    }

    public void setCheckableResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4922(c1953.f7793.getResources().getBoolean(i));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        C1953 c1953 = this.f2681;
        if (c1953 == null) {
            this.f2679 = z;
        } else if (c1953.f7747) {
            super.setChecked(z);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4937(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i) {
        setCheckedIconVisible(i);
    }

    public void setCheckedIconResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4937(ˊʻ.ﹳᐧ(c1953.f7793, i));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4926(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4926(AbstractC1031.m3358(c1953.f7793, i));
        }
    }

    public void setCheckedIconVisible(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4933(c1953.f7793.getResources().getBoolean(i));
        }
    }

    public void setCheckedIconVisible(boolean z) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4933(z);
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        C1953 c1953 = this.f2681;
        if (c1953 == null || c1953.f7774 == colorStateList) {
            return;
        }
        c1953.f7774 = colorStateList;
        c1953.onStateChange(c1953.getState());
    }

    public void setChipBackgroundColorResource(int i) {
        ColorStateList m3358;
        C1953 c1953 = this.f2681;
        if (c1953 == null || c1953.f7774 == (m3358 = AbstractC1031.m3358(c1953.f7793, i))) {
            return;
        }
        c1953.f7774 = m3358;
        c1953.onStateChange(c1953.getState());
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4925(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4925(c1953.f7793.getResources().getDimension(i));
        }
    }

    public void setChipDrawable(C1953 c1953) {
        C1953 c19532 = this.f2681;
        if (c19532 != c1953) {
            if (c19532 != null) {
                c19532.f7742 = new WeakReference(null);
            }
            this.f2681 = c1953;
            c1953.f7761 = false;
            c1953.f7742 = new WeakReference(this);
            m2385(this.f2677);
        }
    }

    public void setChipEndPadding(float f) {
        C1953 c1953 = this.f2681;
        if (c1953 == null || c1953.f7787 == f) {
            return;
        }
        c1953.f7787 = f;
        c1953.invalidateSelf();
        c1953.m4935();
    }

    public void setChipEndPaddingResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            float dimension = c1953.f7793.getResources().getDimension(i);
            if (c1953.f7787 != dimension) {
                c1953.f7787 = dimension;
                c1953.invalidateSelf();
                c1953.m4935();
            }
        }
    }

    public void setChipIcon(Drawable drawable) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4940(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i) {
        setChipIconVisible(i);
    }

    public void setChipIconResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4940(ˊʻ.ﹳᐧ(c1953.f7793, i));
        }
    }

    public void setChipIconSize(float f) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4932(f);
        }
    }

    public void setChipIconSizeResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4932(c1953.f7793.getResources().getDimension(i));
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4938(colorStateList);
        }
    }

    public void setChipIconTintResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4938(AbstractC1031.m3358(c1953.f7793, i));
        }
    }

    public void setChipIconVisible(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4941(c1953.f7793.getResources().getBoolean(i));
        }
    }

    public void setChipIconVisible(boolean z) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4941(z);
        }
    }

    public void setChipMinHeight(float f) {
        C1953 c1953 = this.f2681;
        if (c1953 == null || c1953.f7751 == f) {
            return;
        }
        c1953.f7751 = f;
        c1953.invalidateSelf();
        c1953.m4935();
    }

    public void setChipMinHeightResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            float dimension = c1953.f7793.getResources().getDimension(i);
            if (c1953.f7751 != dimension) {
                c1953.f7751 = dimension;
                c1953.invalidateSelf();
                c1953.m4935();
            }
        }
    }

    public void setChipStartPadding(float f) {
        C1953 c1953 = this.f2681;
        if (c1953 == null || c1953.f7749 == f) {
            return;
        }
        c1953.f7749 = f;
        c1953.invalidateSelf();
        c1953.m4935();
    }

    public void setChipStartPaddingResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            float dimension = c1953.f7793.getResources().getDimension(i);
            if (c1953.f7749 != dimension) {
                c1953.f7749 = dimension;
                c1953.invalidateSelf();
                c1953.m4935();
            }
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4920(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4920(AbstractC1031.m3358(c1953.f7793, i));
        }
    }

    public void setChipStrokeWidth(float f) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4942(f);
        }
    }

    public void setChipStrokeWidthResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4942(c1953.f7793.getResources().getDimension(i));
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i) {
        setText(getResources().getString(i));
    }

    public void setCloseIcon(Drawable drawable) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4921(drawable);
        }
        m2382();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        C1953 c1953 = this.f2681;
        if (c1953 == null || c1953.f7745 == charSequence) {
            return;
        }
        String str = C2004.f7878;
        C2004 c2004 = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? C2004.f7877 : C2004.f7876;
        c2004.getClass();
        ʽﹳ r2 = AbstractC2006.f7888;
        c1953.f7745 = c2004.m4982(charSequence);
        c1953.invalidateSelf();
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4929(f);
        }
    }

    public void setCloseIconEndPaddingResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4929(c1953.f7793.getResources().getDimension(i));
        }
    }

    public void setCloseIconResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4921(ˊʻ.ﹳᐧ(c1953.f7793, i));
        }
        m2382();
    }

    public void setCloseIconSize(float f) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4928(f);
        }
    }

    public void setCloseIconSizeResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4928(c1953.f7793.getResources().getDimension(i));
        }
    }

    public void setCloseIconStartPadding(float f) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4927(f);
        }
    }

    public void setCloseIconStartPaddingResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4927(c1953.f7793.getResources().getDimension(i));
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4931(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4931(AbstractC1031.m3358(c1953.f7793, i));
        }
    }

    public void setCloseIconVisible(int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    public void setCloseIconVisible(boolean z) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4943(z);
        }
        m2382();
    }

    @Override // p137.C2328, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // p137.C2328, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m6327(f);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f2681 == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.f7750 = truncateAt;
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        this.f2685 = z;
        m2385(this.f2677);
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            return;
        }
        super.setGravity(i);
    }

    public void setHideMotionSpec(C3199 c3199) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.f7781 = c3199;
        }
    }

    public void setHideMotionSpecResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.f7781 = C3199.m7037(c1953.f7793, i);
        }
    }

    public void setIconEndPadding(float f) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4923(f);
        }
    }

    public void setIconEndPaddingResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4923(c1953.f7793.getResources().getDimension(i));
        }
    }

    public void setIconStartPadding(float f) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4936(f);
        }
    }

    public void setIconStartPaddingResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4936(c1953.f7793.getResources().getDimension(i));
        }
    }

    public void setInternalOnCheckedChangeListener(InterfaceC2191 interfaceC2191) {
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.f2681 == null) {
            return;
        }
        super.setLayoutDirection(i);
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i) {
        super.setMaxWidth(i);
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.f7783 = i;
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i);
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f2683 = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f2673 = onClickListener;
        m2382();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4924(colorStateList);
        }
        this.f2681.getClass();
        m2383();
    }

    public void setRippleColorResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4924(AbstractC1031.m3358(c1953.f7793, i));
            this.f2681.getClass();
            m2383();
        }
    }

    @Override // p188.InterfaceC2843
    public void setShapeAppearanceModel(C2862 c2862) {
        this.f2681.setShapeAppearanceModel(c2862);
    }

    public void setShowMotionSpec(C3199 c3199) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.f7771 = c3199;
        }
    }

    public void setShowMotionSpecResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.f7771 = C3199.m7037(c1953.f7793, i);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (!z) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z);
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        C1953 c1953 = this.f2681;
        if (c1953 == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(c1953.f7761 ? null : charSequence, bufferType);
        C1953 c19532 = this.f2681;
        if (c19532 == null || TextUtils.equals(c19532.f7777, charSequence)) {
            return;
        }
        c19532.f7777 = charSequence;
        c19532.f7752.f8551 = true;
        c19532.invalidateSelf();
        c19532.m4935();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4918(new C4762(c1953.f7793, i));
        }
        m2384();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4918(new C4762(c1953.f7793, i));
        }
        m2384();
    }

    public void setTextAppearance(C4762 c4762) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            c1953.m4918(c4762);
        }
        m2384();
    }

    public void setTextAppearanceResource(int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f) {
        C1953 c1953 = this.f2681;
        if (c1953 == null || c1953.f7791 == f) {
            return;
        }
        c1953.f7791 = f;
        c1953.invalidateSelf();
        c1953.m4935();
    }

    public void setTextEndPaddingResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            float dimension = c1953.f7793.getResources().getDimension(i);
            if (c1953.f7791 != dimension) {
                c1953.f7791 = dimension;
                c1953.invalidateSelf();
                c1953.m4935();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i, float f) {
        super.setTextSize(i, f);
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            float applyDimension = TypedValue.applyDimension(i, f, getResources().getDisplayMetrics());
            C2180 c2180 = c1953.f7752;
            C4762 c4762 = c2180.f8555;
            if (c4762 != null) {
                c4762.f17991 = applyDimension;
                c2180.f8554.setTextSize(applyDimension);
                c1953.m4935();
                c1953.invalidateSelf();
            }
        }
        m2384();
    }

    public void setTextStartPadding(float f) {
        C1953 c1953 = this.f2681;
        if (c1953 == null || c1953.f7737 == f) {
            return;
        }
        c1953.f7737 = f;
        c1953.invalidateSelf();
        c1953.m4935();
    }

    public void setTextStartPaddingResource(int i) {
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            float dimension = c1953.f7793.getResources().getDimension(i);
            if (c1953.f7737 != dimension) {
                c1953.f7737 = dimension;
                c1953.invalidateSelf();
                c1953.m4935();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0011 A[RETURN] */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m2381() {
        /*
            r2 = this;
            ˆᵢ.ﾞᴵ r0 = r2.f2681
            if (r0 == 0) goto L13
            android.graphics.drawable.Drawable r0 = r0.f7764
            if (r0 == 0) goto Le
            boolean r1 = r0 instanceof p278.InterfaceC3539
            if (r1 == 0) goto Lf
            ٴʼ.ﹳٴ r0 = (p278.InterfaceC3539) r0
        Le:
            r0 = 0
        Lf:
            if (r0 == 0) goto L13
            r0 = 1
            return r0
        L13:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.m2381():boolean");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m2382() {
        C1953 c1953;
        if (!m2381() || (c1953 = this.f2681) == null || !c1953.f7746 || this.f2673 == null) {
            AbstractC2823.m6273(this, null);
            this.f2669 = false;
        } else {
            AbstractC2823.m6273(this, this.f2675);
            this.f2669 = true;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m2383() {
        this.f2680 = new RippleDrawable(AbstractC5055.m9959(this.f2681.f7765), getBackgroundDrawable(), null);
        this.f2681.getClass();
        setBackground(this.f2680);
        m2386();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m2384() {
        TextPaint paint = getPaint();
        C1953 c1953 = this.f2681;
        if (c1953 != null) {
            paint.drawableState = c1953.getState();
        }
        C4762 textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.m9527(getContext(), paint, this.f2672);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m2385(int i) {
        this.f2677 = i;
        if (!this.f2685) {
            InsetDrawable insetDrawable = this.f2674;
            if (insetDrawable == null) {
                m2383();
                return;
            } else {
                if (insetDrawable != null) {
                    this.f2674 = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    m2383();
                    return;
                }
                return;
            }
        }
        int max = Math.max(0, i - ((int) this.f2681.f7751));
        int max2 = Math.max(0, i - this.f2681.getIntrinsicWidth());
        if (max2 <= 0 && max <= 0) {
            InsetDrawable insetDrawable2 = this.f2674;
            if (insetDrawable2 == null) {
                m2383();
                return;
            } else {
                if (insetDrawable2 != null) {
                    this.f2674 = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    m2383();
                    return;
                }
                return;
            }
        }
        int i2 = max2 > 0 ? max2 / 2 : 0;
        int i3 = max > 0 ? max / 2 : 0;
        if (this.f2674 != null) {
            Rect rect = new Rect();
            this.f2674.getPadding(rect);
            if (rect.top == i3 && rect.bottom == i3 && rect.left == i2 && rect.right == i2) {
                m2383();
                return;
            }
        }
        if (getMinHeight() != i) {
            setMinHeight(i);
        }
        if (getMinWidth() != i) {
            setMinWidth(i);
        }
        this.f2674 = new InsetDrawable((Drawable) this.f2681, i2, i3, i2, i3);
        m2383();
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m2386() {
        C1953 c1953;
        if (TextUtils.isEmpty(getText()) || (c1953 = this.f2681) == null) {
            return;
        }
        int m4917 = (int) (c1953.m4917() + c1953.f7787 + c1953.f7791);
        C1953 c19532 = this.f2681;
        int m4930 = (int) (c19532.m4930() + c19532.f7749 + c19532.f7737);
        if (this.f2674 != null) {
            Rect rect = new Rect();
            this.f2674.getPadding(rect);
            m4930 += rect.left;
            m4917 += rect.right;
        }
        setPaddingRelative(m4930, getPaddingTop(), m4917, getPaddingBottom());
    }
}
