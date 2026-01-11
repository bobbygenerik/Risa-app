package androidx.leanback.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import ar.tvplayer.tv.R;
import p186.AbstractC2823;
import p272.AbstractC3483;

/* loaded from: classes.dex */
public class PagingIndicator extends View {

    /* renamed from: ʿ, reason: contains not printable characters */
    public static final C0097 f677;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public static final C0097 f678;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public static final C0097 f679;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public static final DecelerateInterpolator f680 = new DecelerateInterpolator();

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public Bitmap f681;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f682;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f683;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public int f684;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public int f685;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f686;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final float f687;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int f688;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int f689;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final Paint f690;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final Paint f691;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public int f692;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public Paint f693;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public int[] f694;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int f695;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f696;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f697;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public int[] f698;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public C0139[] f699;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public int[] f700;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public int f701;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final Rect f702;

    static {
        Class<Float> cls = Float.class;
        f679 = new C0097(cls, "alpha", 0);
        f677 = new C0097(cls, "diameter", 1);
        f678 = new C0097(cls, "translation_x", 2);
    }

    public PagingIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        AnimatorSet animatorSet = new AnimatorSet();
        Resources resources = getResources();
        int[] iArr = AbstractC3483.f13670;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        AbstractC2823.m6282(this, context, iArr, attributeSet, obtainStyledAttributes, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(6, getResources().getDimensionPixelOffset(R.dimen.6da));
        this.f682 = dimensionPixelOffset;
        int i = dimensionPixelOffset * 2;
        this.f696 = i;
        int dimensionPixelOffset2 = obtainStyledAttributes.getDimensionPixelOffset(2, getResources().getDimensionPixelOffset(R.dimen.r4));
        this.f689 = dimensionPixelOffset2;
        int i2 = dimensionPixelOffset2 * 2;
        this.f697 = i2;
        this.f686 = obtainStyledAttributes.getDimensionPixelOffset(5, getResources().getDimensionPixelOffset(R.dimen.56));
        this.f695 = obtainStyledAttributes.getDimensionPixelOffset(4, getResources().getDimensionPixelOffset(R.dimen.o4));
        int color = obtainStyledAttributes.getColor(3, getResources().getColor(R.color.59k));
        Paint paint = new Paint(1);
        this.f691 = paint;
        paint.setColor(color);
        this.f692 = obtainStyledAttributes.getColor(0, getResources().getColor(R.color.3lb));
        if (this.f693 == null && obtainStyledAttributes.hasValue(1)) {
            setArrowColor(obtainStyledAttributes.getColor(1, 0));
        }
        obtainStyledAttributes.recycle();
        this.f683 = resources.getConfiguration().getLayoutDirection() == 0;
        int color2 = resources.getColor(R.color.183);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.44k);
        this.f688 = dimensionPixelSize;
        Paint paint2 = new Paint(1);
        this.f690 = paint2;
        float dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.4d3);
        paint2.setShadowLayer(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize2, color2);
        this.f681 = m544();
        this.f702 = new Rect(0, 0, this.f681.getWidth(), this.f681.getHeight());
        float f = i2;
        this.f687 = this.f681.getWidth() / f;
        AnimatorSet animatorSet2 = new AnimatorSet();
        C0097 c0097 = f679;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object) null, c0097, 0.0f, 1.0f);
        ofFloat.setDuration(167L);
        DecelerateInterpolator decelerateInterpolator = f680;
        ofFloat.setInterpolator(decelerateInterpolator);
        float f2 = i;
        C0097 c00972 = f677;
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat((Object) null, c00972, f2, f);
        ofFloat2.setDuration(417L);
        ofFloat2.setInterpolator(decelerateInterpolator);
        animatorSet2.playTogether(ofFloat, ofFloat2, m543());
        AnimatorSet animatorSet3 = new AnimatorSet();
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat((Object) null, c0097, 1.0f, 0.0f);
        ofFloat3.setDuration(167L);
        ofFloat3.setInterpolator(decelerateInterpolator);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat((Object) null, c00972, f, f2);
        ofFloat4.setDuration(417L);
        ofFloat4.setInterpolator(decelerateInterpolator);
        animatorSet3.playTogether(ofFloat3, ofFloat4, m543());
        animatorSet.playTogether(animatorSet2, animatorSet3);
        setLayerType(1, null);
    }

    private int getDesiredHeight() {
        return getPaddingBottom() + getPaddingTop() + this.f697 + this.f688;
    }

    private int getDesiredWidth() {
        return getPaddingRight() + getPaddingLeft() + getRequiredWidth();
    }

    private int getRequiredWidth() {
        return ((this.f701 - 3) * this.f686) + (this.f695 * 2) + (this.f682 * 2);
    }

    private void setSelectedPage(int i) {
        if (i == this.f685) {
            return;
        }
        this.f685 = i;
        m546();
    }

    public int[] getDotSelectedLeftX() {
        return this.f698;
    }

    public int[] getDotSelectedRightX() {
        return this.f700;
    }

    public int[] getDotSelectedX() {
        return this.f694;
    }

    public int getPageCount() {
        return this.f701;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        for (int i = 0; i < this.f701; i++) {
            C0139 c0139 = this.f699[i];
            float f = c0139.f987 + c0139.f985;
            PagingIndicator pagingIndicator = c0139.f986;
            int i2 = pagingIndicator.f684;
            Paint paint = pagingIndicator.f690;
            canvas.drawCircle(f, i2, c0139.f993, pagingIndicator.f691);
            if (c0139.f992 > 0.0f) {
                paint.setColor(c0139.f991);
                canvas.drawCircle(f, pagingIndicator.f684, c0139.f993, paint);
                Bitmap bitmap = pagingIndicator.f681;
                Rect rect = pagingIndicator.f702;
                float f2 = c0139.f989;
                float f3 = pagingIndicator.f684;
                canvas.drawBitmap(bitmap, rect, new Rect((int) (f - f2), (int) (f3 - f2), (int) (f + f2), (int) (f3 + f2)), pagingIndicator.f693);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int desiredHeight = getDesiredHeight();
        int mode = View.MeasureSpec.getMode(i2);
        if (mode == Integer.MIN_VALUE) {
            desiredHeight = Math.min(desiredHeight, View.MeasureSpec.getSize(i2));
        } else if (mode == 1073741824) {
            desiredHeight = View.MeasureSpec.getSize(i2);
        }
        int desiredWidth = getDesiredWidth();
        int mode2 = View.MeasureSpec.getMode(i);
        if (mode2 == Integer.MIN_VALUE) {
            desiredWidth = Math.min(desiredWidth, View.MeasureSpec.getSize(i));
        } else if (mode2 == 1073741824) {
            desiredWidth = View.MeasureSpec.getSize(i);
        }
        setMeasuredDimension(desiredWidth, desiredHeight);
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        boolean z = i == 0;
        if (this.f683 != z) {
            this.f683 = z;
            this.f681 = m544();
            C0139[] c0139Arr = this.f699;
            if (c0139Arr != null) {
                for (C0139 c0139 : c0139Arr) {
                    c0139.f984 = c0139.f986.f683 ? 1.0f : -1.0f;
                }
            }
            m545();
            invalidate();
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        setMeasuredDimension(i, i2);
        m545();
    }

    public void setArrowBackgroundColor(int i) {
        this.f692 = i;
    }

    public void setArrowColor(int i) {
        if (this.f693 == null) {
            this.f693 = new Paint();
        }
        this.f693.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
    }

    public void setDotBackgroundColor(int i) {
        this.f691.setColor(i);
    }

    public void setPageCount(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("The page count should be a positive integer");
        }
        this.f701 = i;
        this.f699 = new C0139[i];
        for (int i2 = 0; i2 < this.f701; i2++) {
            this.f699[i2] = new C0139(this);
        }
        m545();
        setSelectedPage(0);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ObjectAnimator m543() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object) null, f678, (-this.f695) + this.f686, 0.0f);
        ofFloat.setDuration(417L);
        ofFloat.setInterpolator(f680);
        return ofFloat;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Bitmap m544() {
        Bitmap decodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.uo);
        if (this.f683) {
            return decodeResource;
        }
        Matrix matrix = new Matrix();
        matrix.preScale(-1.0f, 1.0f);
        return Bitmap.createBitmap(decodeResource, 0, 0, decodeResource.getWidth(), decodeResource.getHeight(), matrix, false);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m545() {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int requiredWidth = getRequiredWidth();
        int i = (paddingLeft + width) / 2;
        int i2 = this.f701;
        int[] iArr = new int[i2];
        this.f694 = iArr;
        int[] iArr2 = new int[i2];
        this.f698 = iArr2;
        int[] iArr3 = new int[i2];
        this.f700 = iArr3;
        boolean z = this.f683;
        int i3 = this.f682;
        int i4 = this.f695;
        int i5 = this.f686;
        int i6 = 1;
        if (z) {
            int i7 = i - (requiredWidth / 2);
            iArr[0] = ((i7 + i3) - i5) + i4;
            iArr2[0] = i7 + i3;
            iArr3[0] = (i4 * 2) + ((i7 + i3) - (i5 * 2));
            while (i6 < this.f701) {
                int[] iArr4 = this.f694;
                int[] iArr5 = this.f698;
                int i8 = i6 - 1;
                iArr4[i6] = iArr5[i8] + i4;
                iArr5[i6] = iArr5[i8] + i5;
                this.f700[i6] = iArr4[i8] + i4;
                i6++;
            }
        } else {
            int i9 = (requiredWidth / 2) + i;
            iArr[0] = ((i9 - i3) + i5) - i4;
            iArr2[0] = i9 - i3;
            iArr3[0] = ((i5 * 2) + (i9 - i3)) - (i4 * 2);
            while (i6 < this.f701) {
                int[] iArr6 = this.f694;
                int[] iArr7 = this.f698;
                int i10 = i6 - 1;
                iArr6[i6] = iArr7[i10] - i4;
                iArr7[i6] = iArr7[i10] - i5;
                this.f700[i6] = iArr6[i10] - i4;
                i6++;
            }
        }
        this.f684 = paddingTop + this.f689;
        m546();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m546() {
        int i;
        int i2 = 0;
        while (true) {
            i = this.f685;
            if (i2 >= i) {
                break;
            }
            this.f699[i2].m648();
            C0139 c0139 = this.f699[i2];
            if (i2 != 0) {
                r2 = 1.0f;
            }
            c0139.f990 = r2;
            c0139.f987 = this.f698[i2];
            i2++;
        }
        C0139 c01392 = this.f699[i];
        c01392.f985 = 0.0f;
        c01392.f987 = 0.0f;
        PagingIndicator pagingIndicator = c01392.f986;
        c01392.f988 = pagingIndicator.f697;
        float f = pagingIndicator.f689;
        c01392.f993 = f;
        c01392.f989 = f * pagingIndicator.f687;
        c01392.f992 = 1.0f;
        c01392.m649();
        C0139[] c0139Arr = this.f699;
        int i3 = this.f685;
        C0139 c01393 = c0139Arr[i3];
        c01393.f990 = i3 <= 0 ? 1.0f : -1.0f;
        c01393.f987 = this.f694[i3];
        while (true) {
            i3++;
            if (i3 >= this.f701) {
                return;
            }
            this.f699[i3].m648();
            C0139 c01394 = this.f699[i3];
            c01394.f990 = 1.0f;
            c01394.f987 = this.f700[i3];
        }
    }
}
