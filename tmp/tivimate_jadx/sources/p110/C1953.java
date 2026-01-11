package p110;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.google.android.material.chip.Chip;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p129.C2180;
import p129.InterfaceC2187;
import p188.C2844;
import p188.C2845;
import p188.C2861;
import p188.C2862;
import p236.C3199;
import p278.InterfaceC3539;
import p401.C4762;
import p427.AbstractC5055;
import ˊⁱ.ˑﹳ;

/* renamed from: ˆᵢ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1953 extends C2844 implements Drawable.Callback, InterfaceC2187 {

    /* renamed from: ʻʿ, reason: contains not printable characters */
    public float f7737;

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public float f7738;

    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public ColorStateList f7739;

    /* renamed from: ʼـ, reason: contains not printable characters */
    public RippleDrawable f7740;

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final RectF f7741;

    /* renamed from: ʽʾ, reason: contains not printable characters */
    public WeakReference f7742;

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public final Paint f7743;

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public ColorStateList f7744;

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public SpannableStringBuilder f7745;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public boolean f7746;

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public boolean f7747;

    /* renamed from: ʿʽ, reason: contains not printable characters */
    public boolean f7748;

    /* renamed from: ʿـ, reason: contains not printable characters */
    public float f7749;

    /* renamed from: ˆˑ, reason: contains not printable characters */
    public TextUtils.TruncateAt f7750;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public float f7751;

    /* renamed from: ˈـ, reason: contains not printable characters */
    public final C2180 f7752;

    /* renamed from: ˊˊ, reason: contains not printable characters */
    public PorterDuffColorFilter f7753;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public ColorStateList f7754;

    /* renamed from: ˊﹳ, reason: contains not printable characters */
    public ColorStateList f7755;

    /* renamed from: ˊﾞ, reason: contains not printable characters */
    public ColorStateList f7756;

    /* renamed from: ˋˊ, reason: contains not printable characters */
    public final Paint.FontMetrics f7757;

    /* renamed from: ˋـ, reason: contains not printable characters */
    public int f7758;

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public int f7759;

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public int f7760;

    /* renamed from: ˎـ, reason: contains not printable characters */
    public boolean f7761;

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public ColorStateList f7762;

    /* renamed from: ˏⁱ, reason: contains not printable characters */
    public int[] f7763;

    /* renamed from: ˑ, reason: contains not printable characters */
    public Drawable f7764;

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public ColorStateList f7765;

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public int f7766;

    /* renamed from: י, reason: contains not printable characters */
    public boolean f7767;

    /* renamed from: יˉ, reason: contains not printable characters */
    public final PointF f7768;

    /* renamed from: יﹳ, reason: contains not printable characters */
    public float f7769;

    /* renamed from: ـʻ, reason: contains not printable characters */
    public PorterDuff.Mode f7770;

    /* renamed from: ـˊ, reason: contains not printable characters */
    public C3199 f7771;

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public Drawable f7772;

    /* renamed from: ـᵢ, reason: contains not printable characters */
    public float f7773;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public ColorStateList f7774;

    /* renamed from: ٴʿ, reason: contains not printable characters */
    public int f7775;

    /* renamed from: ٴᴵ, reason: contains not printable characters */
    public float f7776;

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public CharSequence f7777;

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public Drawable f7778;

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public float f7779;

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public boolean f7780;

    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public C3199 f7781;

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public int f7782;

    /* renamed from: ᵢʻ, reason: contains not printable characters */
    public int f7783;

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public int f7784;

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public boolean f7785;

    /* renamed from: ⁱי, reason: contains not printable characters */
    public float f7786;

    /* renamed from: ⁱᴵ, reason: contains not printable characters */
    public float f7787;

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public int f7788;

    /* renamed from: ﹳⁱ, reason: contains not printable characters */
    public float f7789;

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public ColorStateList f7790;

    /* renamed from: ﹶ, reason: contains not printable characters */
    public float f7791;

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public boolean f7792;

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public final Context f7793;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public float f7794;

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final Path f7795;

    /* renamed from: ﾞˏ, reason: contains not printable characters */
    public ColorFilter f7796;

    /* renamed from: ˆﹳ, reason: contains not printable characters */
    public static final int[] f7736 = {R.attr.state_enabled};

    /* renamed from: ˆˎ, reason: contains not printable characters */
    public static final ShapeDrawable f7735 = new ShapeDrawable(new OvalShape());

    public C1953(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, ar.tvplayer.tv.R.attr.mc, ar.tvplayer.tv.R.style.f26769289);
        this.f7794 = -1.0f;
        this.f7743 = new Paint(1);
        this.f7757 = new Paint.FontMetrics();
        this.f7741 = new RectF();
        this.f7768 = new PointF();
        this.f7795 = new Path();
        this.f7775 = 255;
        this.f7770 = PorterDuff.Mode.SRC_IN;
        this.f7742 = new WeakReference(null);
        m6332(context);
        this.f7793 = context;
        C2180 c2180 = new C2180(this);
        this.f7752 = c2180;
        this.f7777 = "";
        c2180.f8554.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = f7736;
        setState(iArr);
        m4914(iArr);
        this.f7761 = true;
        f7735.setTint(-1);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static boolean m4909(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public static void m4910(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static boolean m4911(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    @Override // p188.C2844, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i;
        Canvas canvas2;
        int i2;
        float f;
        int i3;
        Rect bounds = getBounds();
        if (bounds.isEmpty() || (i = this.f7775) == 0) {
            return;
        }
        if (i < 255) {
            canvas2 = canvas;
            i2 = canvas2.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, i);
        } else {
            canvas2 = canvas;
            i2 = 0;
        }
        boolean z = this.f7748;
        Paint paint = this.f7743;
        RectF rectF = this.f7741;
        if (!z) {
            paint.setColor(this.f7759);
            paint.setStyle(Paint.Style.FILL);
            rectF.set(bounds);
            canvas2.drawRoundRect(rectF, m4913(), m4913(), paint);
        }
        if (!this.f7748) {
            paint.setColor(this.f7766);
            paint.setStyle(Paint.Style.FILL);
            ColorFilter colorFilter = this.f7796;
            if (colorFilter == null) {
                colorFilter = this.f7753;
            }
            paint.setColorFilter(colorFilter);
            rectF.set(bounds);
            canvas2.drawRoundRect(rectF, m4913(), m4913(), paint);
        }
        if (this.f7748) {
            super.draw(canvas);
        }
        if (this.f7738 > 0.0f && !this.f7748) {
            paint.setColor(this.f7788);
            paint.setStyle(Paint.Style.STROKE);
            if (!this.f7748) {
                ColorFilter colorFilter2 = this.f7796;
                if (colorFilter2 == null) {
                    colorFilter2 = this.f7753;
                }
                paint.setColorFilter(colorFilter2);
            }
            float f2 = bounds.left;
            float f3 = this.f7738 / 2.0f;
            rectF.set(f2 + f3, bounds.top + f3, bounds.right - f3, bounds.bottom - f3);
            float f4 = this.f7794 - (this.f7738 / 2.0f);
            canvas2.drawRoundRect(rectF, f4, f4, paint);
        }
        paint.setColor(this.f7784);
        paint.setStyle(Paint.Style.FILL);
        rectF.set(bounds);
        if (this.f7748) {
            RectF rectF2 = new RectF(bounds);
            C2862 mo6347 = this.f10671.f10755.mo6347();
            float[] fArr = this.f10670;
            float f5 = this.f10671.f10742;
            ˑﹳ r6 = this.f10662;
            C2845 c2845 = this.f10650;
            f = 2.0f;
            Path path = this.f7795;
            c2845.m6339(mo6347, fArr, f5, rectF2, r6, path);
            m6323(canvas2, paint, path, this.f10671.f10755.mo6347(), this.f10670, m6326());
        } else {
            canvas2.drawRoundRect(rectF, m4913(), m4913(), paint);
            f = 2.0f;
        }
        if (m4939()) {
            m4912(bounds, rectF);
            float f6 = rectF.left;
            float f7 = rectF.top;
            canvas2.translate(f6, f7);
            this.f7772.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            this.f7772.draw(canvas2);
            canvas2.translate(-f6, -f7);
        }
        if (m4919()) {
            m4912(bounds, rectF);
            float f8 = rectF.left;
            float f9 = rectF.top;
            canvas2.translate(f8, f9);
            this.f7778.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            this.f7778.draw(canvas2);
            canvas2.translate(-f8, -f9);
        }
        if (this.f7761 && this.f7777 != null) {
            PointF pointF = this.f7768;
            pointF.set(0.0f, 0.0f);
            Paint.Align align = Paint.Align.LEFT;
            CharSequence charSequence = this.f7777;
            C2180 c2180 = this.f7752;
            if (charSequence != null) {
                float m4930 = m4930() + this.f7749 + this.f7737;
                if (getLayoutDirection() == 0) {
                    pointF.x = bounds.left + m4930;
                } else {
                    pointF.x = bounds.right - m4930;
                    align = Paint.Align.RIGHT;
                }
                float centerY = bounds.centerY();
                TextPaint textPaint = c2180.f8554;
                Paint.FontMetrics fontMetrics = this.f7757;
                textPaint.getFontMetrics(fontMetrics);
                pointF.y = centerY - ((fontMetrics.descent + fontMetrics.ascent) / f);
            }
            rectF.setEmpty();
            if (this.f7777 != null) {
                float m49302 = m4930() + this.f7749 + this.f7737;
                float m4917 = m4917() + this.f7787 + this.f7791;
                if (getLayoutDirection() == 0) {
                    rectF.left = bounds.left + m49302;
                    rectF.right = bounds.right - m4917;
                } else {
                    rectF.left = bounds.left + m4917;
                    rectF.right = bounds.right - m49302;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
            C4762 c4762 = c2180.f8555;
            TextPaint textPaint2 = c2180.f8554;
            if (c4762 != null) {
                textPaint2.drawableState = getState();
                c2180.f8555.m9527(this.f7793, textPaint2, c2180.f8553);
            }
            textPaint2.setTextAlign(align);
            boolean z2 = Math.round(c2180.m5166(this.f7777.toString())) > Math.round(rectF.width());
            if (z2) {
                int save = canvas2.save();
                canvas2.clipRect(rectF);
                i3 = save;
            } else {
                i3 = 0;
            }
            CharSequence charSequence2 = this.f7777;
            if (z2 && this.f7750 != null) {
                charSequence2 = TextUtils.ellipsize(charSequence2, textPaint2, rectF.width(), this.f7750);
            }
            canvas.drawText(charSequence2, 0, charSequence2.length(), pointF.x, pointF.y, textPaint2);
            canvas2 = canvas;
            if (z2) {
                canvas2.restoreToCount(i3);
            }
        }
        if (m4934()) {
            rectF.setEmpty();
            if (m4934()) {
                float f10 = this.f7787 + this.f7776;
                if (getLayoutDirection() == 0) {
                    float f11 = bounds.right - f10;
                    rectF.right = f11;
                    rectF.left = f11 - this.f7769;
                } else {
                    float f12 = bounds.left + f10;
                    rectF.left = f12;
                    rectF.right = f12 + this.f7769;
                }
                float exactCenterY = bounds.exactCenterY();
                float f13 = this.f7769;
                float f14 = exactCenterY - (f13 / f);
                rectF.top = f14;
                rectF.bottom = f14 + f13;
            }
            float f15 = rectF.left;
            float f16 = rectF.top;
            canvas2.translate(f15, f16);
            this.f7764.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            this.f7740.setBounds(this.f7764.getBounds());
            this.f7740.jumpToCurrentState();
            this.f7740.draw(canvas2);
            canvas2.translate(-f15, -f16);
        }
        if (this.f7775 < 255) {
            canvas2.restoreToCount(i2);
        }
    }

    @Override // p188.C2844, android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f7775;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.f7796;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.f7751;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.min(Math.round(m4917() + this.f7752.m5166(this.f7777.toString()) + m4930() + this.f7749 + this.f7737 + this.f7791 + this.f7787), this.f7783);
    }

    @Override // p188.C2844, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // p188.C2844, android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Outline outline2;
        if (this.f7748) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline2 = outline;
            outline2.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.f7751, this.f7794);
        } else {
            outline.setRoundRect(bounds, this.f7794);
            outline2 = outline;
        }
        outline2.setAlpha(this.f7775 / 255.0f);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // p188.C2844, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        if (m4911(this.f7754) || m4911(this.f7774) || m4911(this.f7790)) {
            return true;
        }
        C4762 c4762 = this.f7752.f8555;
        if (c4762 == null || (colorStateList = c4762.f17985) == null || !colorStateList.isStateful()) {
            return (this.f7785 && this.f7778 != null && this.f7747) || m4909(this.f7772) || m4909(this.f7778) || m4911(this.f7756);
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        if (m4939()) {
            onLayoutDirectionChanged |= this.f7772.setLayoutDirection(i);
        }
        if (m4919()) {
            onLayoutDirectionChanged |= this.f7778.setLayoutDirection(i);
        }
        if (m4934()) {
            onLayoutDirectionChanged |= this.f7764.setLayoutDirection(i);
        }
        if (!onLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        boolean onLevelChange = super.onLevelChange(i);
        if (m4939()) {
            onLevelChange |= this.f7772.setLevel(i);
        }
        if (m4919()) {
            onLevelChange |= this.f7778.setLevel(i);
        }
        if (m4934()) {
            onLevelChange |= this.f7764.setLevel(i);
        }
        if (onLevelChange) {
            invalidateSelf();
        }
        return onLevelChange;
    }

    @Override // p188.C2844, android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        if (this.f7748) {
            super.onStateChange(iArr);
        }
        return m4915(iArr, this.f7763);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // p188.C2844, android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.f7775 != i) {
            this.f7775 = i;
            invalidateSelf();
        }
    }

    @Override // p188.C2844, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f7796 != colorFilter) {
            this.f7796 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // p188.C2844, android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        if (this.f7756 != colorStateList) {
            this.f7756 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // p188.C2844, android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.f7770 != mode) {
            this.f7770 = mode;
            ColorStateList colorStateList = this.f7756;
            this.f7753 = (colorStateList == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (m4939()) {
            visible |= this.f7772.setVisible(z, z2);
        }
        if (m4919()) {
            visible |= this.f7778.setVisible(z, z2);
        }
        if (m4934()) {
            visible |= this.f7764.setVisible(z, z2);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void m4912(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m4939() || m4919()) {
            float f = this.f7749 + this.f7789;
            Drawable drawable = this.f7792 ? this.f7778 : this.f7772;
            float f2 = this.f7779;
            if (f2 <= 0.0f && drawable != null) {
                f2 = drawable.getIntrinsicWidth();
            }
            if (getLayoutDirection() == 0) {
                float f3 = rect.left + f;
                rectF.left = f3;
                rectF.right = f3 + f2;
            } else {
                float f4 = rect.right - f;
                rectF.right = f4;
                rectF.left = f4 - f2;
            }
            Drawable drawable2 = this.f7792 ? this.f7778 : this.f7772;
            float f5 = this.f7779;
            if (f5 <= 0.0f && drawable2 != null) {
                f5 = (float) Math.ceil(TypedValue.applyDimension(1, 24, this.f7793.getResources().getDisplayMetrics()));
                if (drawable2.getIntrinsicHeight() <= f5) {
                    f5 = drawable2.getIntrinsicHeight();
                }
            }
            float exactCenterY = rect.exactCenterY() - (f5 / 2.0f);
            rectF.top = exactCenterY;
            rectF.bottom = exactCenterY + f5;
        }
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final float m4913() {
        if (!this.f7748) {
            return this.f7794;
        }
        float[] fArr = this.f10670;
        return fArr != null ? fArr[3] : this.f10671.f10755.mo6347().f10762.mo6342(m6326());
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final boolean m4914(int[] iArr) {
        if (Arrays.equals(this.f7763, iArr)) {
            return false;
        }
        this.f7763 = iArr;
        if (m4934()) {
            return m4915(getState(), iArr);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x014d  */
    /* renamed from: ʽʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4915(int[] r10, int[] r11) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p110.C1953.m4915(int[], int[]):boolean");
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void m4916(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        drawable.setLayoutDirection(getLayoutDirection());
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.f7764) {
            drawable.setTintList(this.f7762);
            if (drawable.isStateful()) {
                drawable.setState(this.f7763);
                return;
            }
            return;
        }
        Drawable drawable2 = this.f7772;
        if (drawable == drawable2 && this.f7767) {
            drawable2.setTintList(this.f7744);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final float m4917() {
        if (m4934()) {
            return this.f7773 + this.f7769 + this.f7776;
        }
        return 0.0f;
    }

    /* renamed from: ʿ, reason: contains not printable characters */
    public final void m4918(C4762 c4762) {
        C2180 c2180 = this.f7752;
        C1951 c1951 = c2180.f8553;
        TextPaint textPaint = c2180.f8554;
        if (c2180.f8555 != c4762) {
            c2180.f8555 = c4762;
            if (c4762 != null) {
                Context context = this.f7793;
                c4762.m9528(context, textPaint, c1951);
                InterfaceC2187 interfaceC2187 = (InterfaceC2187) c2180.f8552.get();
                if (interfaceC2187 != null) {
                    textPaint.drawableState = interfaceC2187.getState();
                }
                c4762.m9527(context, textPaint, c1951);
                c2180.f8551 = true;
            }
            InterfaceC2187 interfaceC21872 = (InterfaceC2187) c2180.f8552.get();
            if (interfaceC21872 != null) {
                C1953 c1953 = (C1953) interfaceC21872;
                c1953.m4935();
                c1953.invalidateSelf();
                c1953.onStateChange(interfaceC21872.getState());
            }
        }
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final boolean m4919() {
        return this.f7785 && this.f7778 != null && this.f7792;
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final void m4920(ColorStateList colorStateList) {
        if (this.f7790 != colorStateList) {
            this.f7790 = colorStateList;
            if (this.f7748) {
                C2861 c2861 = this.f10671;
                if (c2861.f10746 != colorStateList) {
                    c2861.f10746 = colorStateList;
                    onStateChange(getState());
                }
            }
            onStateChange(getState());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final void m4921(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f7764;
        if (drawable3 != 0) {
            boolean z = drawable3 instanceof InterfaceC3539;
            drawable2 = drawable3;
            if (z) {
                drawable2 = null;
            }
        } else {
            drawable2 = null;
        }
        if (drawable2 != drawable) {
            float m4917 = m4917();
            this.f7764 = drawable != null ? drawable.mutate() : null;
            this.f7740 = new RippleDrawable(AbstractC5055.m9959(this.f7765), this.f7764, f7735);
            float m49172 = m4917();
            m4910(drawable2);
            if (m4934()) {
                m4916(this.f7764);
            }
            invalidateSelf();
            if (m4917 != m49172) {
                m4935();
            }
        }
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m4922(boolean z) {
        if (this.f7747 != z) {
            this.f7747 = z;
            float m4930 = m4930();
            if (!z && this.f7792) {
                this.f7792 = false;
            }
            float m49302 = m4930();
            invalidateSelf();
            if (m4930 != m49302) {
                m4935();
            }
        }
    }

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final void m4923(float f) {
        if (this.f7786 != f) {
            float m4930 = m4930();
            this.f7786 = f;
            float m49302 = m4930();
            invalidateSelf();
            if (m4930 != m49302) {
                m4935();
            }
        }
    }

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final void m4924(ColorStateList colorStateList) {
        if (this.f7765 != colorStateList) {
            this.f7765 = colorStateList;
            this.f7755 = null;
            onStateChange(getState());
        }
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m4925(float f) {
        if (this.f7794 != f) {
            this.f7794 = f;
            setShapeAppearanceModel(m6315().mo6350(f));
        }
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final void m4926(ColorStateList colorStateList) {
        Drawable drawable;
        if (this.f7739 != colorStateList) {
            this.f7739 = colorStateList;
            if (this.f7785 && (drawable = this.f7778) != null && this.f7747) {
                drawable.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final void m4927(float f) {
        if (this.f7773 != f) {
            this.f7773 = f;
            invalidateSelf();
            if (m4934()) {
                m4935();
            }
        }
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final void m4928(float f) {
        if (this.f7769 != f) {
            this.f7769 = f;
            invalidateSelf();
            if (m4934()) {
                m4935();
            }
        }
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final void m4929(float f) {
        if (this.f7776 != f) {
            this.f7776 = f;
            invalidateSelf();
            if (m4934()) {
                m4935();
            }
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final float m4930() {
        if (!m4939() && !m4919()) {
            return 0.0f;
        }
        float f = this.f7789;
        Drawable drawable = this.f7792 ? this.f7778 : this.f7772;
        float f2 = this.f7779;
        if (f2 <= 0.0f && drawable != null) {
            f2 = drawable.getIntrinsicWidth();
        }
        return f2 + f + this.f7786;
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final void m4931(ColorStateList colorStateList) {
        if (this.f7762 != colorStateList) {
            this.f7762 = colorStateList;
            if (m4934()) {
                this.f7764.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void m4932(float f) {
        if (this.f7779 != f) {
            float m4930 = m4930();
            this.f7779 = f;
            float m49302 = m4930();
            invalidateSelf();
            if (m4930 != m49302) {
                m4935();
            }
        }
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final void m4933(boolean z) {
        if (this.f7785 != z) {
            boolean m4919 = m4919();
            this.f7785 = z;
            boolean m49192 = m4919();
            if (m4919 != m49192) {
                if (m49192) {
                    m4916(this.f7778);
                } else {
                    m4910(this.f7778);
                }
                invalidateSelf();
                m4935();
            }
        }
    }

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public final boolean m4934() {
        return this.f7746 && this.f7764 != null;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final void m4935() {
        InterfaceC1950 interfaceC1950 = (InterfaceC1950) this.f7742.get();
        if (interfaceC1950 != null) {
            Chip chip = (Chip) interfaceC1950;
            chip.m2385(chip.f2677);
            chip.requestLayout();
            chip.invalidateOutline();
        }
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final void m4936(float f) {
        if (this.f7789 != f) {
            float m4930 = m4930();
            this.f7789 = f;
            float m49302 = m4930();
            invalidateSelf();
            if (m4930 != m49302) {
                m4935();
            }
        }
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final void m4937(Drawable drawable) {
        if (this.f7778 != drawable) {
            float m4930 = m4930();
            this.f7778 = drawable;
            float m49302 = m4930();
            m4910(this.f7778);
            m4916(this.f7778);
            invalidateSelf();
            if (m4930 != m49302) {
                m4935();
            }
        }
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final void m4938(ColorStateList colorStateList) {
        this.f7767 = true;
        if (this.f7744 != colorStateList) {
            this.f7744 = colorStateList;
            if (m4939()) {
                this.f7772.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final boolean m4939() {
        return this.f7780 && this.f7772 != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m4940(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f7772;
        if (drawable3 != 0) {
            boolean z = drawable3 instanceof InterfaceC3539;
            drawable2 = drawable3;
            if (z) {
                drawable2 = null;
            }
        } else {
            drawable2 = null;
        }
        if (drawable2 != drawable) {
            float m4930 = m4930();
            this.f7772 = drawable != null ? drawable.mutate() : null;
            float m49302 = m4930();
            m4910(drawable2);
            if (m4939()) {
                m4916(this.f7772);
            }
            invalidateSelf();
            if (m4930 != m49302) {
                m4935();
            }
        }
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final void m4941(boolean z) {
        if (this.f7780 != z) {
            boolean m4939 = m4939();
            this.f7780 = z;
            boolean m49392 = m4939();
            if (m4939 != m49392) {
                if (m49392) {
                    m4916(this.f7772);
                } else {
                    m4910(this.f7772);
                }
                invalidateSelf();
                m4935();
            }
        }
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final void m4942(float f) {
        if (this.f7738 != f) {
            this.f7738 = f;
            this.f7743.setStrokeWidth(f);
            if (this.f7748) {
                this.f10671.f10745 = f;
                invalidateSelf();
            }
            invalidateSelf();
        }
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final void m4943(boolean z) {
        if (this.f7746 != z) {
            boolean m4934 = m4934();
            this.f7746 = z;
            boolean m49342 = m4934();
            if (m4934 != m49342) {
                if (m49342) {
                    m4916(this.f7764);
                } else {
                    m4910(this.f7764);
                }
                invalidateSelf();
                m4935();
            }
        }
    }
}
