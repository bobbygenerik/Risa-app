package p119;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import j$.util.Objects;

/* renamed from: ˈʿ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2001 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f7870;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f7871;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final TextDirectionHeuristic f7872;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final TextPaint f7873;

    public C2001(PrecomputedText.Params params) {
        this.f7873 = params.getTextPaint();
        this.f7872 = params.getTextDirection();
        this.f7870 = params.getBreakStrategy();
        this.f7871 = params.getHyphenationFrequency();
    }

    public C2001(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 29) {
            new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
        }
        this.f7873 = textPaint;
        this.f7872 = textDirectionHeuristic;
        this.f7870 = i;
        this.f7871 = i2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2001)) {
            return false;
        }
        C2001 c2001 = (C2001) obj;
        int i = Build.VERSION.SDK_INT;
        if (this.f7870 != c2001.f7870 || this.f7871 != c2001.f7871) {
            return false;
        }
        TextPaint textPaint = this.f7873;
        float textSize = textPaint.getTextSize();
        TextPaint textPaint2 = c2001.f7873;
        if (textSize != textPaint2.getTextSize() || textPaint.getTextScaleX() != textPaint2.getTextScaleX() || textPaint.getTextSkewX() != textPaint2.getTextSkewX() || textPaint.getLetterSpacing() != textPaint2.getLetterSpacing() || !TextUtils.equals(textPaint.getFontFeatureSettings(), textPaint2.getFontFeatureSettings()) || textPaint.getFlags() != textPaint2.getFlags()) {
            return false;
        }
        if (i >= 24) {
            if (!textPaint.getTextLocales().equals(textPaint2.getTextLocales())) {
                return false;
            }
        } else if (!textPaint.getTextLocale().equals(textPaint2.getTextLocale())) {
            return false;
        }
        if (textPaint.getTypeface() == null) {
            if (textPaint2.getTypeface() != null) {
                return false;
            }
        } else if (!textPaint.getTypeface().equals(textPaint2.getTypeface())) {
            return false;
        }
        return this.f7872 == c2001.f7872;
    }

    public final int hashCode() {
        int i = Build.VERSION.SDK_INT;
        TextDirectionHeuristic textDirectionHeuristic = this.f7872;
        int i2 = this.f7871;
        int i3 = this.f7870;
        TextPaint textPaint = this.f7873;
        return i >= 24 ? Objects.hash(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Float.valueOf(textPaint.getLetterSpacing()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocales(), textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), textDirectionHeuristic, Integer.valueOf(i3), Integer.valueOf(i2)) : Objects.hash(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Float.valueOf(textPaint.getLetterSpacing()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocale(), textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), textDirectionHeuristic, Integer.valueOf(i3), Integer.valueOf(i2));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        StringBuilder sb2 = new StringBuilder("textSize=");
        TextPaint textPaint = this.f7873;
        sb2.append(textPaint.getTextSize());
        sb.append(sb2.toString());
        sb.append(", textScaleX=" + textPaint.getTextScaleX());
        sb.append(", textSkewX=" + textPaint.getTextSkewX());
        int i = Build.VERSION.SDK_INT;
        sb.append(", letterSpacing=" + textPaint.getLetterSpacing());
        sb.append(", elegantTextHeight=" + textPaint.isElegantTextHeight());
        if (i >= 24) {
            sb.append(", textLocale=" + textPaint.getTextLocales());
        } else {
            sb.append(", textLocale=" + textPaint.getTextLocale());
        }
        sb.append(", typeface=" + textPaint.getTypeface());
        if (i >= 26) {
            sb.append(", variationSettings=" + textPaint.getFontVariationSettings());
        }
        sb.append(", textDir=" + this.f7872);
        sb.append(", breakStrategy=" + this.f7870);
        sb.append(", hyphenationFrequency=" + this.f7871);
        sb.append("}");
        return sb.toString();
    }
}
