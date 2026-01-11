package p179;

import android.R;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import androidx.leanback.widget.RunnableC0142;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import p044.C1344;
import ʼⁱ.ـʻ;
import ʿˋ.ʻٴ;

/* renamed from: ˋˋ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2726 extends AbstractC2704 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final int[] f10387 = {R.attr.state_pressed};

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final int[] f10388 = new int[0];

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final int f10391;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public float f10392;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final StateListDrawable f10393;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f10395;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final int f10397;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Drawable f10398;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public float f10399;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f10400;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f10402;

    /* renamed from: יـ, reason: contains not printable characters */
    public final RecyclerView f10403;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f10405;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final RunnableC0142 f10406;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final StateListDrawable f10407;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f10408;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final Drawable f10409;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final ValueAnimator f10411;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f10412;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f10413;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f10415;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f10416;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public int f10410 = 0;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public int f10414 = 0;

    /* renamed from: ˏי, reason: contains not printable characters */
    public boolean f10401 = false;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public boolean f10394 = false;

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public int f10389 = 0;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public int f10404 = 0;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final int[] f10396 = new int[2];

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final int[] f10390 = new int[2];

    public C2726(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f10411 = ofFloat;
        this.f10395 = 0;
        RunnableC0142 runnableC0142 = new RunnableC0142(20, this);
        this.f10406 = runnableC0142;
        AbstractC2691 abstractC2691 = new ـʻ(1, this);
        this.f10393 = stateListDrawable;
        this.f10398 = drawable;
        this.f10407 = stateListDrawable2;
        this.f10409 = drawable2;
        this.f10402 = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f10416 = Math.max(i, drawable.getIntrinsicWidth());
        this.f10391 = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.f10397 = Math.max(i, drawable2.getIntrinsicWidth());
        this.f10413 = i2;
        this.f10412 = i3;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        ofFloat.addListener(new ʻٴ(this));
        ofFloat.addUpdateListener(new C1344(1, this));
        RecyclerView recyclerView2 = this.f10403;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            ArrayList arrayList = recyclerView2.f1486;
            AbstractC2669 abstractC2669 = recyclerView2.f1521;
            if (abstractC2669 != null) {
                abstractC2669.mo887("Cannot remove item decoration during a scroll  or layout");
            }
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                recyclerView2.setWillNotDraw(recyclerView2.getOverScrollMode() == 2);
            }
            recyclerView2.m964();
            recyclerView2.requestLayout();
            RecyclerView recyclerView3 = this.f10403;
            recyclerView3.f1483.remove(this);
            if (recyclerView3.f1461 == this) {
                recyclerView3.f1461 = null;
            }
            ArrayList arrayList2 = this.f10403.f1528;
            if (arrayList2 != null) {
                arrayList2.remove(abstractC2691);
            }
            this.f10403.removeCallbacks(runnableC0142);
        }
        this.f10403 = recyclerView;
        recyclerView.m935(this);
        this.f10403.f1483.add(this);
        this.f10403.m945(abstractC2691);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static int m6111(float f, float f2, int[] iArr, int i, int i2, int i3) {
        int i4 = iArr[1] - iArr[0];
        if (i4 != 0) {
            int i5 = i - i3;
            int i6 = (int) (((f2 - f) / i4) * i5);
            int i7 = i2 + i6;
            if (i7 < i5 && i7 >= 0) {
                return i6;
            }
        }
        return 0;
    }

    @Override // p179.AbstractC2704
    /* renamed from: ʽ */
    public final void mo3085(Canvas canvas, RecyclerView recyclerView) {
        if (this.f10410 != this.f10403.getWidth() || this.f10414 != this.f10403.getHeight()) {
            this.f10410 = this.f10403.getWidth();
            this.f10414 = this.f10403.getHeight();
            m6114(0);
            return;
        }
        if (this.f10395 != 0) {
            if (this.f10401) {
                int i = this.f10410;
                int i2 = this.f10402;
                int i3 = i - i2;
                int i4 = this.f10415;
                int i5 = this.f10405;
                int i6 = i4 - (i5 / 2);
                StateListDrawable stateListDrawable = this.f10393;
                stateListDrawable.setBounds(0, 0, i2, i5);
                int i7 = this.f10416;
                int i8 = this.f10414;
                Drawable drawable = this.f10398;
                drawable.setBounds(0, 0, i7, i8);
                if (this.f10403.getLayoutDirection() == 1) {
                    drawable.draw(canvas);
                    canvas.translate(i2, i6);
                    canvas.scale(-1.0f, 1.0f);
                    stateListDrawable.draw(canvas);
                    canvas.scale(-1.0f, 1.0f);
                    canvas.translate(-i2, -i6);
                } else {
                    canvas.translate(i3, 0.0f);
                    drawable.draw(canvas);
                    canvas.translate(0.0f, i6);
                    stateListDrawable.draw(canvas);
                    canvas.translate(-i3, -i6);
                }
            }
            if (this.f10394) {
                int i9 = this.f10414;
                int i10 = this.f10391;
                int i11 = i9 - i10;
                int i12 = this.f10400;
                int i13 = this.f10408;
                int i14 = i12 - (i13 / 2);
                StateListDrawable stateListDrawable2 = this.f10407;
                stateListDrawable2.setBounds(0, 0, i13, i10);
                int i15 = this.f10410;
                int i16 = this.f10397;
                Drawable drawable2 = this.f10409;
                drawable2.setBounds(0, 0, i15, i16);
                canvas.translate(0.0f, i11);
                drawable2.draw(canvas);
                canvas.translate(i14, 0.0f);
                stateListDrawable2.draw(canvas);
                canvas.translate(-i14, -i11);
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m6112(float f, float f2) {
        if (f2 < this.f10414 - this.f10391) {
            return false;
        }
        int i = this.f10400;
        int i2 = this.f10408;
        return f >= ((float) (i - (i2 / 2))) && f <= ((float) ((i2 / 2) + i));
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean m6113(float f, float f2) {
        int layoutDirection = this.f10403.getLayoutDirection();
        int i = this.f10402;
        if (layoutDirection == 1) {
            if (f > i) {
                return false;
            }
        } else if (f < this.f10410 - i) {
            return false;
        }
        int i2 = this.f10415;
        int i3 = this.f10405 / 2;
        return f2 >= ((float) (i2 - i3)) && f2 <= ((float) (i3 + i2));
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m6114(int i) {
        RunnableC0142 runnableC0142 = this.f10406;
        StateListDrawable stateListDrawable = this.f10393;
        if (i == 2 && this.f10389 != 2) {
            stateListDrawable.setState(f10387);
            this.f10403.removeCallbacks(runnableC0142);
        }
        if (i == 0) {
            this.f10403.invalidate();
        } else {
            m6115();
        }
        if (this.f10389 == 2 && i != 2) {
            stateListDrawable.setState(f10388);
            this.f10403.removeCallbacks(runnableC0142);
            this.f10403.postDelayed(runnableC0142, 1200);
        } else if (i == 1) {
            this.f10403.removeCallbacks(runnableC0142);
            this.f10403.postDelayed(runnableC0142, 1500);
        }
        this.f10389 = i;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m6115() {
        int i = this.f10395;
        ValueAnimator valueAnimator = this.f10411;
        if (i != 0) {
            if (i != 3) {
                return;
            } else {
                valueAnimator.cancel();
            }
        }
        this.f10395 = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }
}
