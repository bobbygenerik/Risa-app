package p129;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import p137.AbstractC2247;
import p259.AbstractC3399;

/* renamed from: ˈᐧ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2184 extends AbstractC2247 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public int f8621;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final Rect f8622;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final Rect f8623;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public Drawable f8624;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final boolean f8625;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public boolean f8626;

    public AbstractC2184(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f8623 = new Rect();
        this.f8622 = new Rect();
        this.f8621 = 119;
        this.f8625 = true;
        this.f8626 = false;
        AbstractC2185.m5188(context, attributeSet, 0, 0);
        int[] iArr = AbstractC3399.f13294;
        AbstractC2185.m5187(context, attributeSet, iArr, 0, 0, new int[0]);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        this.f8621 = obtainStyledAttributes.getInt(1, this.f8621);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f8625 = obtainStyledAttributes.getBoolean(2, true);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f8624;
        if (drawable != null) {
            if (this.f8626) {
                this.f8626 = false;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                boolean z = this.f8625;
                Rect rect = this.f8623;
                if (z) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                int i = this.f8621;
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                Rect rect2 = this.f8622;
                Gravity.apply(i, intrinsicWidth, intrinsicHeight, rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public final void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f8624;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f8624;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f8624.setState(getDrawableState());
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f8624;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f8621;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f8624;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // p137.AbstractC2247, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f8626 = z | this.f8626;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f8626 = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f8624;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f8624);
            }
            this.f8624 = drawable;
            this.f8626 = true;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f8621 == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setForegroundGravity(int i) {
        if (this.f8621 != i) {
            if ((8388615 & i) == 0) {
                i |= 8388611;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.f8621 = i;
            if (i == 119 && this.f8624 != null) {
                this.f8624.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f8624;
    }
}
