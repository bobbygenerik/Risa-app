package com.google.android.material.timepicker;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import ar.tvplayer.tv.R;
import java.util.ArrayList;
import p236.AbstractC3200;
import p259.AbstractC3399;
import ﹳˋ.ʽʽ;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ClockHandView extends View {

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public static final /* synthetic */ int f2934 = 0;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ArrayList f2935;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ValueAnimator f2936;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public int f2937;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f2938;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int f2939;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final Paint f2940;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f2941;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final RectF f2942;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f2943;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final float f2944;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public double f2945;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public float f2946;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public int f2947;

    public ClockHandView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.1o2);
        ValueAnimator valueAnimator = new ValueAnimator();
        this.f2936 = valueAnimator;
        this.f2935 = new ArrayList();
        Paint paint = new Paint();
        this.f2940 = paint;
        this.f2942 = new RectF();
        this.f2937 = 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC3399.f13286, R.attr.1o2, R.style.f268282cn);
        ʽʽ.ʻٴ(context, R.attr.589, 200);
        ʽʽ.ـˆ(context, R.attr.532, AbstractC3200.f12245);
        this.f2947 = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.f2938 = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.f2939 = getResources().getDimensionPixelSize(R.dimen.nf);
        this.f2944 = r5.getDimensionPixelSize(R.dimen.5tq);
        int color = obtainStyledAttributes.getColor(0, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        m2458(0.0f);
        ViewConfiguration.get(context).getScaledTouchSlop();
        setImportantForAccessibility(2);
        obtainStyledAttributes.recycle();
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.timepicker.ˑﹳ
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int i = ClockHandView.f2934;
                ClockHandView.this.m2457(((Float) valueAnimator2.getAnimatedValue()).floatValue());
            }
        });
        valueAnimator.addListener(new ﾞᴵ(0));
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float f = width;
        float m2459 = m2459(this.f2937);
        float cos = (((float) Math.cos(this.f2945)) * m2459) + f;
        float f2 = height;
        float sin = (m2459 * ((float) Math.sin(this.f2945))) + f2;
        Paint paint = this.f2940;
        paint.setStrokeWidth(0.0f);
        canvas.drawCircle(cos, sin, this.f2938, paint);
        double sin2 = Math.sin(this.f2945);
        paint.setStrokeWidth(this.f2939);
        canvas.drawLine(f, f2, width + ((int) (Math.cos(this.f2945) * r2)), height + ((int) (r2 * sin2)), paint);
        canvas.drawCircle(f, f2, this.f2944, paint);
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f2936.isRunning()) {
            return;
        }
        m2458(this.f2946);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        boolean z3 = false;
        if (actionMasked == 0) {
            this.f2941 = false;
            z = true;
            z2 = false;
        } else if (actionMasked == 1 || actionMasked == 2) {
            z2 = this.f2941;
            if (this.f2943) {
                this.f2937 = ((float) Math.hypot((double) (x - ((float) (getWidth() / 2))), (double) (y - ((float) (getHeight() / 2))))) <= ((float) m2459(2)) + TypedValue.applyDimension(1, (float) 12, getContext().getResources().getDisplayMetrics()) ? 2 : 1;
            }
            z = false;
        } else {
            z2 = false;
            z = false;
        }
        boolean z4 = this.f2941;
        int degrees = (int) Math.toDegrees(Math.atan2(y - (getHeight() / 2), x - (getWidth() / 2)));
        int i = degrees + 90;
        if (i < 0) {
            i = degrees + 450;
        }
        float f = i;
        boolean z5 = this.f2946 != f;
        if (!z || !z5) {
            if (z5 || z2) {
                m2458(f);
            }
            this.f2941 = z4 | z3;
            return true;
        }
        z3 = true;
        this.f2941 = z4 | z3;
        return true;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m2457(float f) {
        float f2 = f % 360.0f;
        this.f2946 = f2;
        this.f2945 = Math.toRadians(f2 - 90.0f);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float m2459 = m2459(this.f2937);
        float cos = (((float) Math.cos(this.f2945)) * m2459) + width;
        float sin = (m2459 * ((float) Math.sin(this.f2945))) + height;
        float f3 = this.f2938;
        this.f2942.set(cos - f3, sin - f3, cos + f3, sin + f3);
        ArrayList arrayList = this.f2935;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ClockFaceView clockFaceView = (ClockFaceView) ((InterfaceC0687) obj);
            if (Math.abs(clockFaceView.f2924 - f2) > 0.001f) {
                clockFaceView.f2924 = f2;
                clockFaceView.m2456();
            }
        }
        invalidate();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m2458(float f) {
        this.f2936.cancel();
        m2457(f);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m2459(int i) {
        return i == 2 ? Math.round(this.f2947 * 0.66f) : this.f2947;
    }
}
