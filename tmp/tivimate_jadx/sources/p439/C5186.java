package p439;

import android.text.InputFilter;
import android.text.Spanned;
import android.widget.TextView;
import p275.C3508;

/* renamed from: ﹶᐧ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5186 implements InputFilter {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C5185 f19499;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final TextView f19500;

    public C5186(TextView textView) {
        this.f19500 = textView;
    }

    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        TextView textView = this.f19500;
        if (textView.isInEditMode()) {
            return charSequence;
        }
        int m7477 = C3508.m7473().m7477();
        if (m7477 != 0) {
            if (m7477 == 1) {
                if ((i4 == 0 && i3 == 0 && spanned.length() == 0 && charSequence == textView.getText()) || charSequence == null) {
                    return charSequence;
                }
                if (i != 0 || i2 != charSequence.length()) {
                    charSequence = charSequence.subSequence(i, i2);
                }
                return C3508.m7473().m7476(charSequence, 0, charSequence.length());
            }
            if (m7477 != 3) {
                return charSequence;
            }
        }
        C3508 m7473 = C3508.m7473();
        if (this.f19499 == null) {
            this.f19499 = new C5185(textView, this);
        }
        m7473.m7478(this.f19499);
        return charSequence;
    }
}
