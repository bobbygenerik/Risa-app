package p312;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;

/* renamed from: ᐧⁱ.ᵎˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3870 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public int f15055;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public float f15056;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public CharSequence f15057;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public int f15058;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final float f15059;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f15060;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public int f15061;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f15062;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public float f15063;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public Layout.Alignment f15064;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final float f15065;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f15066;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f15067;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public float f15068;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public int f15069;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public StaticLayout f15070;

    /* renamed from: ˏי, reason: contains not printable characters */
    public int f15071;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final float f15072;

    /* renamed from: יـ, reason: contains not printable characters */
    public int f15073;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public int f15074;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public Rect f15075;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f15076;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public Bitmap f15077;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f15078;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public StaticLayout f15079;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public int f15080;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Paint f15081;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f15082;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final Paint f15083;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public float f15084;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public float f15085;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final float f15086;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final float f15087;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public float f15088;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public float f15089;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final TextPaint f15090;

    public C3870(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{R.attr.lineSpacingExtra, R.attr.lineSpacingMultiplier}, 0, 0);
        this.f15072 = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f15065 = obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
        float round = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f15087 = round;
        this.f15086 = round;
        this.f15059 = round;
        TextPaint textPaint = new TextPaint();
        this.f15090 = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.f15081 = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f15083 = paint2;
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m8069(Canvas canvas, boolean z) {
        Canvas canvas2;
        if (!z) {
            this.f15075.getClass();
            this.f15077.getClass();
            canvas.drawBitmap(this.f15077, (Rect) null, this.f15075, this.f15083);
            return;
        }
        StaticLayout staticLayout = this.f15079;
        StaticLayout staticLayout2 = this.f15070;
        if (staticLayout == null || staticLayout2 == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(this.f15076, this.f15069);
        if (Color.alpha(this.f15061) > 0) {
            int i = this.f15061;
            Paint paint = this.f15081;
            paint.setColor(i);
            canvas2 = canvas;
            canvas2.drawRect(-this.f15080, 0.0f, staticLayout.getWidth() + this.f15080, staticLayout.getHeight(), paint);
        } else {
            canvas2 = canvas;
        }
        int i2 = this.f15074;
        TextPaint textPaint = this.f15090;
        if (i2 == 1) {
            textPaint.setStrokeJoin(Paint.Join.ROUND);
            textPaint.setStrokeWidth(this.f15087);
            textPaint.setColor(this.f15055);
            textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout2.draw(canvas2);
        } else {
            float f = this.f15086;
            if (i2 == 2) {
                float f2 = this.f15059;
                textPaint.setShadowLayer(f, f2, f2, this.f15055);
            } else if (i2 == 3 || i2 == 4) {
                boolean z2 = i2 == 3;
                int i3 = z2 ? -1 : this.f15055;
                int i4 = z2 ? this.f15055 : -1;
                float f3 = f / 2.0f;
                textPaint.setColor(this.f15073);
                textPaint.setStyle(Paint.Style.FILL);
                float f4 = -f3;
                textPaint.setShadowLayer(f, f4, f4, i3);
                staticLayout2.draw(canvas2);
                textPaint.setShadowLayer(f, f3, f3, i4);
            }
        }
        textPaint.setColor(this.f15073);
        textPaint.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas2);
        textPaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas2.restoreToCount(save);
    }
}
