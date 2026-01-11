package p439;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
import p137.C2289;
import p275.C3508;

/* renamed from: ﹶᐧ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5189 implements TextWatcher {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f19504 = true;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final EditText f19505;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C2289 f19506;

    public C5189(EditText editText) {
        this.f19505 = editText;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m10165(EditText editText, int i) {
        int length;
        if (i == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            C3508 m7473 = C3508.m7473();
            if (editableText == null) {
                length = 0;
            } else {
                m7473.getClass();
                length = editableText.length();
            }
            m7473.m7476(editableText, 0, length);
            if (selectionStart >= 0 && selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionStart, selectionEnd);
            } else if (selectionStart >= 0) {
                Selection.setSelection(editableText, selectionStart);
            } else if (selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionEnd);
            }
        }
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        EditText editText = this.f19505;
        if (editText.isInEditMode() || !this.f19504 || C3508.f13826 == null || i2 > i3 || !(charSequence instanceof Spannable)) {
            return;
        }
        int m7477 = C3508.m7473().m7477();
        if (m7477 != 0) {
            if (m7477 == 1) {
                C3508.m7473().m7476((Spannable) charSequence, i, i3 + i);
                return;
            } else if (m7477 != 3) {
                return;
            }
        }
        C3508 m7473 = C3508.m7473();
        if (this.f19506 == null) {
            this.f19506 = new C2289(editText);
        }
        m7473.m7478(this.f19506);
    }
}
