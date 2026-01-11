package p137;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.TextView;
import p350.AbstractC4295;
import ᐧﹳ.ʽ;
import ﹳˋ.ٴﹶ;

/* renamed from: ˉˆ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2297 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ʽ f8978;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final TextView f8979;

    public C2297(TextView textView) {
        this.f8979 = textView;
        this.f8978 = new ʽ(textView);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m5344(boolean z) {
        ((ٴﹶ) this.f8978.ᴵˊ).ٴᵢ(z);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m5345(boolean z) {
        ((ٴﹶ) this.f8978.ᴵˊ).ᵎⁱ(z);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5346(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = this.f8979.getContext().obtainStyledAttributes(attributeSet, AbstractC4295.f15900, i, 0);
        try {
            boolean z = obtainStyledAttributes.hasValue(14) ? obtainStyledAttributes.getBoolean(14, true) : true;
            obtainStyledAttributes.recycle();
            m5345(z);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InputFilter[] m5347(InputFilter[] inputFilterArr) {
        return ((ٴﹶ) this.f8978.ᴵˊ).ـˆ(inputFilterArr);
    }
}
