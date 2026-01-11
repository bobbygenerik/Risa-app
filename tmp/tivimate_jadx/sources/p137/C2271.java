package p137;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import ar.tvplayer.tv.R;
import com.parse.ٴʼ;
import p186.AbstractC2823;
import p350.AbstractC4295;

/* renamed from: ˉˆ.ˊʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2271 extends C2250 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean f8891;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public boolean f8892;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C2316 f8893;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public ColorStateList f8894;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public PorterDuff.Mode f8895;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Drawable f8896;

    public C2271(C2316 c2316) {
        super(c2316);
        this.f8894 = null;
        this.f8895 = null;
        this.f8891 = false;
        this.f8892 = false;
        this.f8893 = c2316;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m5305(Canvas canvas) {
        if (this.f8896 != null) {
            int max = this.f8893.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f8896.getIntrinsicWidth();
                int intrinsicHeight = this.f8896.getIntrinsicHeight();
                int i = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i2 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f8896.setBounds(-i, -i2, i, i2);
                float width = ((r0.getWidth() - r0.getPaddingLeft()) - r0.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(r0.getPaddingLeft(), r0.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.f8896.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }

    @Override // p137.C2250
    /* renamed from: ⁱˊ */
    public final void mo5266(AttributeSet attributeSet, int i) {
        super.mo5266(attributeSet, R.attr.13l);
        C2316 c2316 = this.f8893;
        Context context = c2316.getContext();
        int[] iArr = AbstractC4295.f15915;
        ٴʼ r10 = ٴʼ.ʿᵢ(R.attr.13l, 0, context, attributeSet, iArr);
        TypedArray typedArray = (TypedArray) r10.ᴵˊ;
        AbstractC2823.m6282(c2316, c2316.getContext(), iArr, attributeSet, (TypedArray) r10.ᴵˊ, R.attr.13l);
        Drawable drawable = r10.ˋᵔ(0);
        if (drawable != null) {
            c2316.setThumb(drawable);
        }
        Drawable drawable2 = r10.ˑٴ(1);
        Drawable drawable3 = this.f8896;
        if (drawable3 != null) {
            drawable3.setCallback(null);
        }
        this.f8896 = drawable2;
        if (drawable2 != null) {
            drawable2.setCallback(c2316);
            drawable2.setLayoutDirection(c2316.getLayoutDirection());
            if (drawable2.isStateful()) {
                drawable2.setState(c2316.getDrawableState());
            }
            m5306();
        }
        c2316.invalidate();
        if (typedArray.hasValue(3)) {
            this.f8895 = AbstractC2307.m5386(typedArray.getInt(3, -1), this.f8895);
            this.f8892 = true;
        }
        if (typedArray.hasValue(2)) {
            this.f8894 = r10.ˈʿ(2);
            this.f8891 = true;
        }
        r10.ᐧᴵ();
        m5306();
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m5306() {
        Drawable drawable = this.f8896;
        if (drawable != null) {
            if (this.f8891 || this.f8892) {
                Drawable mutate = drawable.mutate();
                this.f8896 = mutate;
                if (this.f8891) {
                    mutate.setTintList(this.f8894);
                }
                if (this.f8892) {
                    this.f8896.setTintMode(this.f8895);
                }
                if (this.f8896.isStateful()) {
                    this.f8896.setState(this.f8893.getDrawableState());
                }
            }
        }
    }
}
