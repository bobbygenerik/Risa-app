package p137;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.widget.TextView;

/* renamed from: ˉˆ.ᐧᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2310 {
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static StaticLayout m5394(CharSequence charSequence, Layout.Alignment alignment, int i, int i2, TextView textView, TextPaint textPaint, AbstractC2235 abstractC2235) {
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i);
        StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier()).setIncludePad(textView.getIncludeFontPadding()).setBreakStrategy(textView.getBreakStrategy()).setHyphenationFrequency(textView.getHyphenationFrequency());
        if (i2 == -1) {
            i2 = Integer.MAX_VALUE;
        }
        hyphenationFrequency.setMaxLines(i2);
        try {
            abstractC2235.mo5237(obtain, textView);
        } catch (ClassCastException unused) {
        }
        return obtain.build();
    }
}
