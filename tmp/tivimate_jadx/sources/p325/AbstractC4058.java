package p325;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import ar.tvplayer.tv.R;
import p129.AbstractC2185;
import p184.AbstractC2764;
import p188.C2844;
import p188.C2862;
import p259.AbstractC3399;
import ʽٴ.ˈ;
import ˈˋ.ʾˊ;
import ˉᵎ.ⁱˊ;

/* renamed from: ᴵـ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4058 extends FrameLayout {

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final ViewOnTouchListenerC4059 f15451 = new Object();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final float f15452;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2862 f15453;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final float f15454;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public PorterDuff.Mode f15455;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int f15456;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public ColorStateList f15457;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f15458;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f15459;

    /* JADX WARN: Multi-variable type inference failed */
    public AbstractC4058(Context context, AttributeSet attributeSet) {
        super(AbstractC2764.m6163(context, attributeSet, 0, 0), attributeSet);
        GradientDrawable gradientDrawable;
        Context context2 = getContext();
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, AbstractC3399.f13290);
        if (obtainStyledAttributes.hasValue(6)) {
            setElevation(obtainStyledAttributes.getDimensionPixelSize(6, 0));
        }
        this.f15458 = obtainStyledAttributes.getInt(2, 0);
        if (obtainStyledAttributes.hasValue(8) || obtainStyledAttributes.hasValue(9)) {
            this.f15453 = C2862.m6361(context2, attributeSet, 0, 0).m6356();
        }
        this.f15452 = obtainStyledAttributes.getFloat(3, 1.0f);
        setBackgroundTintList(ⁱˊ.ﹳᐧ(context2, obtainStyledAttributes, 4));
        setBackgroundTintMode(AbstractC2185.m5189(obtainStyledAttributes.getInt(5, -1), PorterDuff.Mode.SRC_IN));
        this.f15454 = obtainStyledAttributes.getFloat(1, 1.0f);
        this.f15459 = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        this.f15456 = obtainStyledAttributes.getDimensionPixelSize(7, -1);
        obtainStyledAttributes.recycle();
        setOnTouchListener(f15451);
        setFocusable(true);
        if (getBackground() == null) {
            int i = ˈ.ˏי(getBackgroundOverlayColorAlpha(), ˈ.ʼʼ(getContext(), ʾˊ.ᴵˊ(this, R.attr.6pf)), ˈ.ʼʼ(getContext(), ʾˊ.ᴵˊ(this, R.attr.3nl)));
            C2862 c2862 = this.f15453;
            if (c2862 != null) {
                int i2 = AbstractC4057.f15450;
                C2844 c2844 = new C2844(c2862);
                c2844.m6321(ColorStateList.valueOf(i));
                gradientDrawable = c2844;
            } else {
                Resources resources = getResources();
                int i3 = AbstractC4057.f15450;
                float dimension = resources.getDimension(R.dimen.4t5);
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setShape(0);
                gradientDrawable2.setCornerRadius(dimension);
                gradientDrawable2.setColor(i);
                gradientDrawable = gradientDrawable2;
            }
            ColorStateList colorStateList = this.f15457;
            if (colorStateList != null) {
                gradientDrawable.setTintList(colorStateList);
            }
            setBackground(gradientDrawable);
        }
    }

    private void setBaseTransientBottomBar(AbstractC4057 abstractC4057) {
    }

    public float getActionTextColorAlpha() {
        return this.f15454;
    }

    public int getAnimationMode() {
        return this.f15458;
    }

    public float getBackgroundOverlayColorAlpha() {
        return this.f15452;
    }

    public int getMaxInlineActionWidth() {
        return this.f15456;
    }

    public int getMaxWidth() {
        return this.f15459;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        requestApplyInsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int i3 = this.f15459;
        if (i3 <= 0 || getMeasuredWidth() <= i3) {
            return;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
    }

    public void setAnimationMode(int i) {
        this.f15458 = i;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != null && this.f15457 != null) {
            drawable = drawable.mutate();
            drawable.setTintList(this.f15457);
            drawable.setTintMode(this.f15455);
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        this.f15457 = colorStateList;
        if (getBackground() != null) {
            Drawable mutate = getBackground().mutate();
            mutate.setTintList(colorStateList);
            mutate.setTintMode(this.f15455);
            if (mutate != getBackground()) {
                super.setBackgroundDrawable(mutate);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        this.f15455 = mode;
        if (getBackground() != null) {
            Drawable mutate = getBackground().mutate();
            mutate.setTintMode(mode);
            if (mutate != getBackground()) {
                super.setBackgroundDrawable(mutate);
            }
        }
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        setOnTouchListener(onClickListener != null ? null : f15451);
        super.setOnClickListener(onClickListener);
    }
}
