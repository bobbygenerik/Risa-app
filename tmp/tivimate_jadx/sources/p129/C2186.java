package p129;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import com.google.android.material.textfield.TextInputLayout;
import ʻʿ.ˈ;

/* renamed from: ˈᐧ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2186 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f8631;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f8633;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public ˈ f8634;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean f8636;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final TextPaint f8639;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public CharSequence f8640;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Layout.Alignment f8635 = Layout.Alignment.ALIGN_NORMAL;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f8642 = Integer.MAX_VALUE;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public float f8637 = 0.0f;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public float f8638 = 1.0f;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f8630 = 1;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public boolean f8632 = true;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public TextUtils.TruncateAt f8641 = null;

    public C2186(CharSequence charSequence, TextPaint textPaint, int i) {
        this.f8640 = charSequence;
        this.f8639 = textPaint;
        this.f8631 = i;
        this.f8633 = charSequence.length();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final StaticLayout m5190() {
        if (this.f8640 == null) {
            this.f8640 = "";
        }
        int max = Math.max(0, this.f8631);
        CharSequence charSequence = this.f8640;
        int i = this.f8642;
        TextPaint textPaint = this.f8639;
        if (i == 1) {
            charSequence = TextUtils.ellipsize(charSequence, textPaint, max, this.f8641);
        }
        int min = Math.min(charSequence.length(), this.f8633);
        this.f8633 = min;
        if (this.f8636 && this.f8642 == 1) {
            this.f8635 = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, min, textPaint, max);
        obtain.setAlignment(this.f8635);
        obtain.setIncludePad(this.f8632);
        obtain.setTextDirection(this.f8636 ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.f8641;
        if (truncateAt != null) {
            obtain.setEllipsize(truncateAt);
        }
        obtain.setMaxLines(this.f8642);
        float f = this.f8637;
        if (f != 0.0f || this.f8638 != 1.0f) {
            obtain.setLineSpacing(f, this.f8638);
        }
        if (this.f8642 > 1) {
            obtain.setHyphenationFrequency(this.f8630);
        }
        ˈ r1 = this.f8634;
        if (r1 != null) {
            obtain.setBreakStrategy(((TextInputLayout) r1.ᴵˊ).f2908.getBreakStrategy());
        }
        return obtain.build();
    }
}
