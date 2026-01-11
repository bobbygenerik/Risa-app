package p439;

import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import p275.AbstractC3519;
import p275.C3508;

/* renamed from: ﹶᐧ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5185 extends AbstractC3519 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final WeakReference f19497;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final WeakReference f19498;

    public C5185(TextView textView, C5186 c5186) {
        this.f19498 = new WeakReference(textView);
        this.f19497 = new WeakReference(c5186);
    }

    @Override // p275.AbstractC3519
    /* renamed from: ⁱˊ */
    public final void mo5338() {
        InputFilter[] filters;
        int length;
        TextView textView = (TextView) this.f19498.get();
        InputFilter inputFilter = (InputFilter) this.f19497.get();
        if (inputFilter == null || textView == null || (filters = textView.getFilters()) == null) {
            return;
        }
        for (InputFilter inputFilter2 : filters) {
            if (inputFilter2 == inputFilter) {
                if (textView.isAttachedToWindow()) {
                    CharSequence text = textView.getText();
                    C3508 m7473 = C3508.m7473();
                    if (text == null) {
                        length = 0;
                    } else {
                        m7473.getClass();
                        length = text.length();
                    }
                    CharSequence m7476 = m7473.m7476(text, 0, length);
                    if (text == m7476) {
                        return;
                    }
                    int selectionStart = Selection.getSelectionStart(m7476);
                    int selectionEnd = Selection.getSelectionEnd(m7476);
                    textView.setText(m7476);
                    if (m7476 instanceof Spannable) {
                        Spannable spannable = (Spannable) m7476;
                        if (selectionStart >= 0 && selectionEnd >= 0) {
                            Selection.setSelection(spannable, selectionStart, selectionEnd);
                            return;
                        } else if (selectionStart >= 0) {
                            Selection.setSelection(spannable, selectionStart);
                            return;
                        } else {
                            if (selectionEnd >= 0) {
                                Selection.setSelection(spannable, selectionEnd);
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                return;
            }
        }
    }
}
