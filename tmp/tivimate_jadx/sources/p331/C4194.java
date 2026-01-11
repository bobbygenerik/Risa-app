package p331;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import java.util.ArrayList;
import p005.C0823;
import p087.AbstractC1751;

/* renamed from: ᴵﹶ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4194 extends Drawable implements InterfaceC4191, Animatable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f15606;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C0823 f15607;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f15608;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f15609;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f15610;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public Rect f15611;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f15613;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public Paint f15615;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f15614 = true;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int f15612 = -1;

    public C4194(C0823 c0823) {
        this.f15607 = c0823;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f15608) {
            return;
        }
        if (this.f15609) {
            int intrinsicWidth = getIntrinsicWidth();
            int intrinsicHeight = getIntrinsicHeight();
            Rect bounds = getBounds();
            if (this.f15611 == null) {
                this.f15611 = new Rect();
            }
            Gravity.apply(119, intrinsicWidth, intrinsicHeight, bounds, this.f15611);
            this.f15609 = false;
        }
        C4196 c4196 = (C4196) this.f15607.f3515;
        C4190 c4190 = c4196.f15623;
        Bitmap bitmap = c4190 != null ? c4190.f15598 : c4196.f15637;
        if (this.f15611 == null) {
            this.f15611 = new Rect();
        }
        Rect rect = this.f15611;
        if (this.f15615 == null) {
            this.f15615 = new Paint(2);
        }
        canvas.drawBitmap(bitmap, (Rect) null, rect, this.f15615);
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f15607;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return ((C4196) this.f15607.f3515).f15624;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return ((C4196) this.f15607.f3515).f15629;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f15613;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f15609 = true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.f15615 == null) {
            this.f15615 = new Paint(2);
        }
        this.f15615.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f15615 == null) {
            this.f15615 = new Paint(2);
        }
        this.f15615.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        AbstractC1751.m4713("Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.", !this.f15608);
        this.f15614 = z;
        if (!z) {
            this.f15613 = false;
            C4196 c4196 = (C4196) this.f15607.f3515;
            ArrayList arrayList = c4196.f15625;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                c4196.f15638 = false;
            }
        } else if (this.f15606) {
            m8582();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.f15606 = true;
        this.f15610 = 0;
        if (this.f15614) {
            m8582();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.f15606 = false;
        this.f15613 = false;
        C4196 c4196 = (C4196) this.f15607.f3515;
        ArrayList arrayList = c4196.f15625;
        arrayList.remove(this);
        if (arrayList.isEmpty()) {
            c4196.f15638 = false;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m8582() {
        AbstractC1751.m4713("You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.", !this.f15608);
        C4196 c4196 = (C4196) this.f15607.f3515;
        if (c4196.f15636.f16992.f16995 == 1) {
            invalidateSelf();
            return;
        }
        if (this.f15613) {
            return;
        }
        this.f15613 = true;
        ArrayList arrayList = c4196.f15625;
        if (c4196.f15626) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
        if (arrayList.contains(this)) {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        boolean isEmpty = arrayList.isEmpty();
        arrayList.add(this);
        if (isEmpty && !c4196.f15638) {
            c4196.f15638 = true;
            c4196.f15626 = false;
            c4196.m8587();
        }
        invalidateSelf();
    }
}
