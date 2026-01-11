package p275;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.ReplacementSpan;
import java.nio.ByteBuffer;
import p124.C2130;
import ˈˊ.ˉˆ;
import ˏˆ.ﹳٴ;

/* renamed from: ـﹶ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3515 extends ReplacementSpan {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C3501 f13848;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public TextPaint f13849;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Paint.FontMetricsInt f13846 = new Paint.FontMetricsInt();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public short f13845 = -1;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public float f13847 = 1.0f;

    public C3515(C3501 c3501) {
        ˉˆ.ﾞᴵ(c3501, "rasterizer cannot be null");
        this.f13848 = c3501;
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        TextPaint textPaint = null;
        if (charSequence instanceof Spanned) {
            CharacterStyle[] characterStyleArr = (CharacterStyle[]) ((Spanned) charSequence).getSpans(i, i2, CharacterStyle.class);
            if (characterStyleArr.length != 0) {
                if (characterStyleArr.length != 1 || characterStyleArr[0] != this) {
                    TextPaint textPaint2 = this.f13849;
                    if (textPaint2 == null) {
                        textPaint2 = new TextPaint();
                        this.f13849 = textPaint2;
                    }
                    textPaint = textPaint2;
                    textPaint.set(paint);
                    for (CharacterStyle characterStyle : characterStyleArr) {
                        characterStyle.updateDrawState(textPaint);
                    }
                }
            }
            if (paint instanceof TextPaint) {
                textPaint = (TextPaint) paint;
            }
        } else if (paint instanceof TextPaint) {
            textPaint = (TextPaint) paint;
        }
        TextPaint textPaint3 = textPaint;
        if (textPaint3 != null && textPaint3.bgColor != 0) {
            int color = textPaint3.getColor();
            Paint.Style style = textPaint3.getStyle();
            textPaint3.setColor(textPaint3.bgColor);
            textPaint3.setStyle(Paint.Style.FILL);
            canvas.drawRect(f, i3, f + this.f13845, i5, textPaint3);
            textPaint3.setStyle(style);
            textPaint3.setColor(color);
        }
        C3508.m7473().getClass();
        float f2 = i4;
        Paint paint2 = textPaint3;
        if (textPaint3 == null) {
            paint2 = paint;
        }
        C3501 c3501 = this.f13848;
        ﹳٴ r3 = c3501.f13815;
        Typeface typeface = (Typeface) r3.ᴵᵔ;
        Typeface typeface2 = paint2.getTypeface();
        paint2.setTypeface(typeface);
        canvas.drawText((char[]) r3.ʽʽ, c3501.f13816 * 2, 2, f, f2, paint2);
        paint2.setTypeface(typeface2);
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        Paint.FontMetricsInt fontMetricsInt2 = this.f13846;
        paint.getFontMetricsInt(fontMetricsInt2);
        float abs = Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f;
        C3501 c3501 = this.f13848;
        this.f13847 = abs / (c3501.m7444().m5092(14) != 0 ? ((ByteBuffer) r8.f8314).getShort(r1 + r8.f8313) : (short) 0);
        C2130 m7444 = c3501.m7444();
        int m5092 = m7444.m5092(14);
        if (m5092 != 0) {
            ((ByteBuffer) m7444.f8314).getShort(m5092 + m7444.f8313);
        }
        short s = (short) ((c3501.m7444().m5092(12) != 0 ? ((ByteBuffer) r5.f8314).getShort(r7 + r5.f8313) : (short) 0) * this.f13847);
        this.f13845 = s;
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return s;
    }
}
