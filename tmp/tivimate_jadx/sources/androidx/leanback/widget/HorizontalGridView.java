package androidx.leanback.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import p186.AbstractC2823;

/* loaded from: classes.dex */
public class HorizontalGridView extends AbstractC0145 {

    /* renamed from: ʻʼ, reason: contains not printable characters */
    public boolean f653;

    /* renamed from: ʻˆ, reason: contains not printable characters */
    public int f654;

    /* renamed from: ˆʻ, reason: contains not printable characters */
    public LinearGradient f655;

    /* renamed from: ˆˎ, reason: contains not printable characters */
    public boolean f656;

    /* renamed from: ˉʽ, reason: contains not printable characters */
    public int f657;

    /* renamed from: ˎʼ, reason: contains not printable characters */
    public int f658;

    /* renamed from: ˏʻ, reason: contains not printable characters */
    public final Rect f659;

    /* renamed from: ˑﹶ, reason: contains not printable characters */
    public LinearGradient f660;

    /* renamed from: יʿ, reason: contains not printable characters */
    public int f661;

    /* renamed from: ᴵٴ, reason: contains not printable characters */
    public Bitmap f662;

    /* renamed from: ᵢᐧ, reason: contains not printable characters */
    public final Paint f663;

    /* renamed from: ﾞˊ, reason: contains not printable characters */
    public Bitmap f664;

    public HorizontalGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HorizontalGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.f663 = new Paint();
        this.f659 = new Rect();
        this.f1005.m495(0);
        m654(context, attributeSet);
        int[] iArr = AbstractC0130.f972;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        AbstractC2823.m6282(this, context, iArr, attributeSet, obtainStyledAttributes, 0);
        setRowHeight(obtainStyledAttributes);
        setNumRows(obtainStyledAttributes.getInt(0, 1));
        obtainStyledAttributes.recycle();
        m540();
        Paint paint = new Paint();
        this.f663 = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
    }

    private Bitmap getTempBitmapHigh() {
        Bitmap bitmap = this.f662;
        if (bitmap == null || bitmap.getWidth() != this.f658 || this.f662.getHeight() != getHeight()) {
            this.f662 = Bitmap.createBitmap(this.f658, getHeight(), Bitmap.Config.ARGB_8888);
        }
        return this.f662;
    }

    private Bitmap getTempBitmapLow() {
        Bitmap bitmap = this.f664;
        if (bitmap == null || bitmap.getWidth() != this.f657 || this.f664.getHeight() != getHeight()) {
            this.f664 = Bitmap.createBitmap(this.f657, getHeight(), Bitmap.Config.ARGB_8888);
        }
        return this.f664;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final void draw(Canvas canvas) {
        boolean z;
        boolean z2 = true;
        if (this.f656) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                this.f1005.getClass();
                C0151 c0151 = (C0151) childAt.getLayoutParams();
                c0151.getClass();
                if (childAt.getLeft() + c0151.f1019 < getPaddingLeft() - this.f661) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (this.f653) {
            for (int childCount2 = getChildCount() - 1; childCount2 >= 0; childCount2--) {
                View childAt2 = getChildAt(childCount2);
                this.f1005.getClass();
                C0151 c01512 = (C0151) childAt2.getLayoutParams();
                c01512.getClass();
                if (childAt2.getRight() - c01512.f1021 > (getWidth() - getPaddingRight()) + this.f654) {
                    break;
                }
            }
        }
        z2 = false;
        if (!z) {
            this.f664 = null;
        }
        if (!z2) {
            this.f662 = null;
        }
        if (!z && !z2) {
            super.draw(canvas);
            return;
        }
        int paddingLeft = this.f656 ? (getPaddingLeft() - this.f661) - this.f657 : 0;
        int width = this.f653 ? (getWidth() - getPaddingRight()) + this.f654 + this.f658 : getWidth();
        int save = canvas.save();
        canvas.clipRect((this.f656 ? this.f657 : 0) + paddingLeft, 0, width - (this.f653 ? this.f658 : 0), getHeight());
        super.draw(canvas);
        canvas.restoreToCount(save);
        Canvas canvas2 = new Canvas();
        Rect rect = this.f659;
        rect.top = 0;
        rect.bottom = getHeight();
        if (z && this.f657 > 0) {
            Bitmap tempBitmapLow = getTempBitmapLow();
            tempBitmapLow.eraseColor(0);
            canvas2.setBitmap(tempBitmapLow);
            int save2 = canvas2.save();
            canvas2.clipRect(0, 0, this.f657, getHeight());
            float f = -paddingLeft;
            canvas2.translate(f, 0.0f);
            super.draw(canvas2);
            canvas2.restoreToCount(save2);
            this.f663.setShader(this.f655);
            canvas2.drawRect(0.0f, 0.0f, this.f657, getHeight(), this.f663);
            rect.left = 0;
            rect.right = this.f657;
            canvas.translate(paddingLeft, 0.0f);
            canvas.drawBitmap(tempBitmapLow, rect, rect, (Paint) null);
            canvas.translate(f, 0.0f);
        }
        if (!z2 || this.f658 <= 0) {
            return;
        }
        Bitmap tempBitmapHigh = getTempBitmapHigh();
        tempBitmapHigh.eraseColor(0);
        canvas2.setBitmap(tempBitmapHigh);
        int save3 = canvas2.save();
        canvas2.clipRect(0, 0, this.f658, getHeight());
        canvas2.translate(-(width - this.f658), 0.0f);
        super.draw(canvas2);
        canvas2.restoreToCount(save3);
        this.f663.setShader(this.f660);
        canvas2.drawRect(0.0f, 0.0f, this.f658, getHeight(), this.f663);
        rect.left = 0;
        rect.right = this.f658;
        canvas.translate(width - r3, 0.0f);
        canvas.drawBitmap(tempBitmapHigh, rect, rect, (Paint) null);
        canvas.translate(-(width - this.f658), 0.0f);
    }

    @SuppressLint({"GetterSetterNames"})
    public final boolean getFadingLeftEdge() {
        return this.f656;
    }

    public final int getFadingLeftEdgeLength() {
        return this.f657;
    }

    public final int getFadingLeftEdgeOffset() {
        return this.f661;
    }

    @SuppressLint({"GetterSetterNames"})
    public final boolean getFadingRightEdge() {
        return this.f653;
    }

    public final int getFadingRightEdgeLength() {
        return this.f658;
    }

    public final int getFadingRightEdgeOffset() {
        return this.f654;
    }

    public final void setFadingLeftEdge(boolean z) {
        if (this.f656 != z) {
            this.f656 = z;
            if (!z) {
                this.f664 = null;
            }
            invalidate();
            m540();
        }
    }

    public final void setFadingLeftEdgeLength(int i) {
        if (this.f657 != i) {
            this.f657 = i;
            if (i != 0) {
                this.f655 = new LinearGradient(0.0f, 0.0f, this.f657, 0.0f, 0, -16777216, Shader.TileMode.CLAMP);
            } else {
                this.f655 = null;
            }
            invalidate();
        }
    }

    public final void setFadingLeftEdgeOffset(int i) {
        if (this.f661 != i) {
            this.f661 = i;
            invalidate();
        }
    }

    public final void setFadingRightEdge(boolean z) {
        if (this.f653 != z) {
            this.f653 = z;
            if (!z) {
                this.f662 = null;
            }
            invalidate();
            m540();
        }
    }

    public final void setFadingRightEdgeLength(int i) {
        if (this.f658 != i) {
            this.f658 = i;
            if (i != 0) {
                this.f660 = new LinearGradient(0.0f, 0.0f, this.f658, 0.0f, -16777216, 0, Shader.TileMode.CLAMP);
            } else {
                this.f660 = null;
            }
            invalidate();
        }
    }

    public final void setFadingRightEdgeOffset(int i) {
        if (this.f654 != i) {
            this.f654 = i;
            invalidate();
        }
    }

    public void setNumRows(int i) {
        GridLayoutManager gridLayoutManager = this.f1005;
        if (i < 0) {
            gridLayoutManager.getClass();
            throw new IllegalArgumentException();
        }
        gridLayoutManager.f629 = i;
        requestLayout();
    }

    public void setRowHeight(int i) {
        this.f1005.m466(i);
        requestLayout();
    }

    public void setRowHeight(TypedArray typedArray) {
        if (typedArray.peekValue(1) != null) {
            setRowHeight(typedArray.getLayoutDimension(1, 0));
        }
    }

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public final void m540() {
        if (this.f656 || this.f653) {
            setLayerType(2, null);
            setWillNotDraw(false);
        } else {
            setLayerType(0, null);
            setWillNotDraw(true);
        }
    }
}
