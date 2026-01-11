package androidx.leanback.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;

/* renamed from: androidx.leanback.widget.י, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0119 extends ReplacementSpan {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0093 f949;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f950;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f951;

    public C0119(AbstractC0093 abstractC0093, int i, int i2) {
        this.f949 = abstractC0093;
        this.f950 = i;
        this.f951 = i2;
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        int measureText = (int) paint.measureText(charSequence, i, i2);
        AbstractC0093 abstractC0093 = this.f949;
        int width = abstractC0093.f867.getWidth();
        int i6 = width * 2;
        int i7 = measureText / i6;
        int i8 = (measureText % i6) / 2;
        boolean z = 1 == abstractC0093.getLayoutDirection();
        abstractC0093.f865.setSeed(this.f950);
        int alpha = paint.getAlpha();
        for (int i9 = 0; i9 < i7 && this.f951 + i9 < abstractC0093.f866; i9++) {
            float f2 = (width / 2) + (i9 * i6) + i8;
            float f3 = z ? ((f + measureText) - f2) - width : f + f2;
            paint.setAlpha((abstractC0093.f865.nextInt(4) + 1) * 63);
            if (abstractC0093.f865.nextBoolean()) {
                canvas.drawBitmap(abstractC0093.f864, f3, i4 - r13.getHeight(), paint);
            } else {
                canvas.drawBitmap(abstractC0093.f867, f3, i4 - r13.getHeight(), paint);
            }
        }
        paint.setAlpha(alpha);
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        return (int) paint.measureText(charSequence, i, i2);
    }
}
