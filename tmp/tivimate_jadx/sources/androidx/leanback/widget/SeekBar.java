package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import ar.tvplayer.tv.R;

/* loaded from: classes.dex */
public final class SeekBar extends View {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final RectF f762;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final RectF f763;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public int f764;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Paint f765;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public int f766;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final Paint f767;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public int f768;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final Paint f769;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final RectF f770;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final Paint f771;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public int f772;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public int f773;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public int f774;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public int f775;

    public SeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f763 = new RectF();
        this.f770 = new RectF();
        this.f762 = new RectF();
        Paint paint = new Paint(1);
        this.f765 = paint;
        Paint paint2 = new Paint(1);
        this.f771 = paint2;
        Paint paint3 = new Paint(1);
        this.f767 = paint3;
        Paint paint4 = new Paint(1);
        this.f769 = paint4;
        setWillNotDraw(false);
        paint3.setColor(-7829368);
        paint.setColor(-3355444);
        paint2.setColor(-65536);
        paint4.setColor(-1);
        this.f764 = context.getResources().getDimensionPixelSize(R.dimen.7eb);
        this.f775 = context.getResources().getDimensionPixelSize(R.dimen.3ne);
        this.f774 = context.getResources().getDimensionPixelSize(R.dimen.4pk);
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return android.widget.SeekBar.class.getName();
    }

    public int getMax() {
        return this.f768;
    }

    public int getProgress() {
        return this.f766;
    }

    public int getSecondProgress() {
        return this.f773;
    }

    public int getSecondaryProgressColor() {
        return this.f765.getColor();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = isFocused() ? this.f774 : this.f764 / 2;
        canvas.drawRoundRect(this.f762, f, f, this.f767);
        RectF rectF = this.f770;
        if (rectF.right > rectF.left) {
            canvas.drawRoundRect(rectF, f, f, this.f765);
        }
        canvas.drawRoundRect(this.f763, f, f, this.f771);
        canvas.drawCircle(this.f772, getHeight() / 2, f, this.f769);
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        m555();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m555();
    }

    public void setAccessibilitySeekListener(AbstractC0128 abstractC0128) {
    }

    public void setActiveBarHeight(int i) {
        this.f775 = i;
        m555();
    }

    public void setActiveRadius(int i) {
        this.f774 = i;
        m555();
    }

    public void setBarHeight(int i) {
        this.f764 = i;
        m555();
    }

    public void setMax(int i) {
        this.f768 = i;
        m555();
    }

    public void setProgress(int i) {
        int i2 = this.f768;
        if (i > i2) {
            i = i2;
        } else if (i < 0) {
            i = 0;
        }
        this.f766 = i;
        m555();
    }

    public void setProgressColor(int i) {
        this.f771.setColor(i);
    }

    public void setSecondaryProgress(int i) {
        int i2 = this.f768;
        if (i > i2) {
            i = i2;
        } else if (i < 0) {
            i = 0;
        }
        this.f773 = i;
        m555();
    }

    public void setSecondaryProgressColor(int i) {
        this.f765.setColor(i);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m555() {
        int i = isFocused() ? this.f775 : this.f764;
        int width = getWidth();
        int height = getHeight();
        int i2 = (height - i) / 2;
        int i3 = this.f764;
        float f = i2;
        float f2 = height - i2;
        this.f762.set(i3 / 2, f, width - (i3 / 2), f2);
        int i4 = isFocused() ? this.f774 : this.f764 / 2;
        float f3 = width - (i4 * 2);
        float f4 = (this.f766 / this.f768) * f3;
        int i5 = this.f764;
        RectF rectF = this.f763;
        rectF.set(i5 / 2, f, (i5 / 2) + f4, f2);
        this.f770.set(rectF.right, f, (this.f764 / 2) + ((this.f773 / this.f768) * f3), f2);
        this.f772 = i4 + ((int) f4);
        invalidate();
    }
}
