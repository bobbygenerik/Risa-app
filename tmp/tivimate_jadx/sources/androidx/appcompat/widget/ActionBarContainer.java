package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import ar.tvplayer.tv.R;
import p137.AbstractC2264;
import p137.C2337;
import p350.AbstractC4295;

/* loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public View f70;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f71;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Drawable f72;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f73;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public Drawable f74;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final boolean f75;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public View f76;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Drawable f77;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final int f78;

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBackground(new C2337(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC4295.f15921);
        boolean z = false;
        this.f72 = obtainStyledAttributes.getDrawable(0);
        this.f77 = obtainStyledAttributes.getDrawable(2);
        this.f78 = obtainStyledAttributes.getDimensionPixelSize(13, -1);
        if (getId() == R.id.6tr) {
            this.f75 = true;
            this.f74 = obtainStyledAttributes.getDrawable(1);
        }
        obtainStyledAttributes.recycle();
        if (!this.f75 ? !(this.f72 != null || this.f77 != null) : this.f74 == null) {
            z = true;
        }
        setWillNotDraw(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f72;
        if (drawable != null && drawable.isStateful()) {
            this.f72.setState(getDrawableState());
        }
        Drawable drawable2 = this.f77;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f77.setState(getDrawableState());
        }
        Drawable drawable3 = this.f74;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f74.setState(getDrawableState());
    }

    public View getTabContainer() {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f72;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f77;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f74;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f76 = findViewById(R.id.6eh);
        this.f70 = findViewById(R.id.5r0);
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f71 || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        boolean z2 = true;
        if (this.f75) {
            Drawable drawable = this.f74;
            if (drawable != null) {
                drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z2 = false;
            }
        } else {
            if (this.f72 == null) {
                z2 = false;
            } else if (this.f76.getVisibility() == 0) {
                this.f72.setBounds(this.f76.getLeft(), this.f76.getTop(), this.f76.getRight(), this.f76.getBottom());
            } else {
                View view = this.f70;
                if (view == null || view.getVisibility() != 0) {
                    this.f72.setBounds(0, 0, 0, 0);
                } else {
                    this.f72.setBounds(this.f70.getLeft(), this.f70.getTop(), this.f70.getRight(), this.f70.getBottom());
                }
            }
            this.f73 = false;
        }
        if (z2) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        if (this.f76 == null && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && (i3 = this.f78) >= 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(i3, View.MeasureSpec.getSize(i2)), Integer.MIN_VALUE);
        }
        super.onMeasure(i, i2);
        if (this.f76 == null) {
            return;
        }
        View.MeasureSpec.getMode(i2);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f72;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f72);
        }
        this.f72 = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f76;
            if (view != null) {
                this.f72.setBounds(view.getLeft(), this.f76.getTop(), this.f76.getRight(), this.f76.getBottom());
            }
        }
        boolean z = false;
        if (!this.f75 ? !(this.f72 != null || this.f77 != null) : this.f74 == null) {
            z = true;
        }
        setWillNotDraw(z);
        invalidate();
        invalidateOutline();
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f74;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f74);
        }
        this.f74 = drawable;
        boolean z = this.f75;
        boolean z2 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (z && (drawable2 = this.f74) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!z ? !(this.f72 != null || this.f77 != null) : this.f74 == null) {
            z2 = true;
        }
        setWillNotDraw(z2);
        invalidate();
        invalidateOutline();
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2 = this.f77;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f77);
        }
        this.f77 = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f73 && this.f77 != null) {
                throw null;
            }
        }
        boolean z = false;
        if (!this.f75 ? !(this.f72 != null || this.f77 != null) : this.f74 == null) {
            z = true;
        }
        setWillNotDraw(z);
        invalidate();
        invalidateOutline();
    }

    public void setTabContainer(AbstractC2264 abstractC2264) {
    }

    public void setTransitioning(boolean z) {
        this.f71 = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f72;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f77;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f74;
        if (drawable3 != null) {
            drawable3.setVisible(z, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i) {
        if (i != 0) {
            return super.startActionModeForChild(view, callback, i);
        }
        return null;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        Drawable drawable2 = this.f72;
        boolean z = this.f75;
        if (drawable == drawable2 && !z) {
            return true;
        }
        if (drawable == this.f77 && this.f73) {
            return true;
        }
        return (drawable == this.f74 && z) || super.verifyDrawable(drawable);
    }
}
