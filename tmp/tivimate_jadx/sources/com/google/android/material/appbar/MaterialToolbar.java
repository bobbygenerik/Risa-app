package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import ar.tvplayer.tv.R;
import java.util.ArrayList;
import java.util.Collections;
import p021.AbstractC1031;
import p129.AbstractC2185;
import p184.AbstractC2764;
import p188.C2844;
import p259.AbstractC3399;
import ʻٴ.ˑﹳ;
import ﹳˋ.ʽʽ;

/* loaded from: classes.dex */
public class MaterialToolbar extends Toolbar {

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public static final ImageView.ScaleType[] f2530 = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    /* renamed from: ʼـ, reason: contains not printable characters */
    public Boolean f2531;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public boolean f2532;

    /* renamed from: ˑ, reason: contains not printable characters */
    public ImageView.ScaleType f2533;

    /* renamed from: י, reason: contains not printable characters */
    public boolean f2534;

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public Integer f2535;

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        super(AbstractC2764.m6163(context, attributeSet, R.attr.5rb, R.style.f268363gh), attributeSet, 0);
        Context context2 = getContext();
        TypedArray m5186 = AbstractC2185.m5186(context2, attributeSet, AbstractC3399.f13288, R.attr.5rb, R.style.f268363gh, new int[0]);
        if (m5186.hasValue(2)) {
            setNavigationIconTint(m5186.getColor(2, -1));
        }
        this.f2534 = m5186.getBoolean(4, false);
        this.f2532 = m5186.getBoolean(3, false);
        int i = m5186.getInt(1, -1);
        if (i >= 0) {
            ImageView.ScaleType[] scaleTypeArr = f2530;
            if (i < scaleTypeArr.length) {
                this.f2533 = scaleTypeArr[i];
            }
        }
        if (m5186.hasValue(0)) {
            this.f2531 = Boolean.valueOf(m5186.getBoolean(0, false));
        }
        m5186.recycle();
        Drawable background = getBackground();
        ColorStateList valueOf = background == null ? ColorStateList.valueOf(0) : AbstractC1031.m3361(background);
        if (valueOf != null) {
            C2844 c2844 = new C2844();
            c2844.m6321(valueOf);
            c2844.m6332(context2);
            c2844.m6327(getElevation());
            setBackground(c2844);
        }
    }

    public ImageView.ScaleType getLogoScaleType() {
        return this.f2533;
    }

    public Integer getNavigationIconTint() {
        return this.f2535;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof C2844) {
            ʽʽ.ʾˋ(this, (C2844) background);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ImageView imageView;
        Drawable drawable;
        super.onLayout(z, i, i2, i3, i4);
        ˑﹳ r9 = AbstractC2185.f8627;
        int i5 = 0;
        ImageView imageView2 = null;
        if (this.f2534 || this.f2532) {
            ArrayList m5185 = AbstractC2185.m5185(this, getTitle());
            TextView textView = m5185.isEmpty() ? null : (TextView) Collections.min(m5185, r9);
            ArrayList m51852 = AbstractC2185.m5185(this, getSubtitle());
            TextView textView2 = m51852.isEmpty() ? null : (TextView) Collections.max(m51852, r9);
            if (textView != null || textView2 != null) {
                int measuredWidth = getMeasuredWidth();
                int i6 = measuredWidth / 2;
                int paddingLeft = getPaddingLeft();
                int paddingRight = measuredWidth - getPaddingRight();
                for (int i7 = 0; i7 < getChildCount(); i7++) {
                    View childAt = getChildAt(i7);
                    if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                        if (childAt.getRight() < i6 && childAt.getRight() > paddingLeft) {
                            paddingLeft = childAt.getRight();
                        }
                        if (childAt.getLeft() > i6 && childAt.getLeft() < paddingRight) {
                            paddingRight = childAt.getLeft();
                        }
                    }
                }
                Pair pair = new Pair(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
                if (this.f2534 && textView != null) {
                    m2334(textView, pair);
                }
                if (this.f2532 && textView2 != null) {
                    m2334(textView2, pair);
                }
            }
        }
        Drawable logo = getLogo();
        if (logo != null) {
            while (true) {
                if (i5 >= getChildCount()) {
                    break;
                }
                View childAt2 = getChildAt(i5);
                if ((childAt2 instanceof ImageView) && (drawable = (imageView = (ImageView) childAt2).getDrawable()) != null && drawable.getConstantState() != null && drawable.getConstantState().equals(logo.getConstantState())) {
                    imageView2 = imageView;
                    break;
                }
                i5++;
            }
        }
        if (imageView2 != null) {
            Boolean bool = this.f2531;
            if (bool != null) {
                imageView2.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.f2533;
            if (scaleType != null) {
                imageView2.setScaleType(scaleType);
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        Drawable background = getBackground();
        if (background instanceof C2844) {
            ((C2844) background).m6327(f);
        }
    }

    public void setLogoAdjustViewBounds(boolean z) {
        Boolean bool = this.f2531;
        if (bool == null || bool.booleanValue() != z) {
            this.f2531 = Boolean.valueOf(z);
            requestLayout();
        }
    }

    public void setLogoScaleType(ImageView.ScaleType scaleType) {
        if (this.f2533 != scaleType) {
            this.f2533 = scaleType;
            requestLayout();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null && this.f2535 != null) {
            drawable = drawable.mutate();
            drawable.setTint(this.f2535.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public void setNavigationIconTint(int i) {
        this.f2535 = Integer.valueOf(i);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z) {
        if (this.f2532 != z) {
            this.f2532 = z;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z) {
        if (this.f2534 != z) {
            this.f2534 = z;
            requestLayout();
        }
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void m2334(TextView textView, Pair pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = textView.getMeasuredWidth();
        int i = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i2 = measuredWidth2 + i;
        int max = Math.max(Math.max(((Integer) pair.first).intValue() - i, 0), Math.max(i2 - ((Integer) pair.second).intValue(), 0));
        if (max > 0) {
            i += max;
            i2 -= max;
            textView.measure(View.MeasureSpec.makeMeasureSpec(i2 - i, 1073741824), textView.getMeasuredHeightAndState());
        }
        textView.layout(i, textView.getTop(), i2, textView.getBottom());
    }
}
