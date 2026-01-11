package p044;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* renamed from: ʽˊ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1322 implements TextWatcher {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ TextInputLayout f5072;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f5073;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ EditText f5074;

    public C1322(TextInputLayout textInputLayout, EditText editText) {
        this.f5072 = textInputLayout;
        this.f5074 = editText;
        this.f5073 = editText.getLineCount();
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        TextInputLayout textInputLayout = this.f5072;
        textInputLayout.m2437(!textInputLayout.f2904, false);
        if (textInputLayout.f2902) {
            textInputLayout.m2427(editable);
        }
        if (textInputLayout.f2881) {
            textInputLayout.m2430(editable);
        }
        EditText editText = this.f5074;
        int lineCount = editText.getLineCount();
        int i = this.f5073;
        if (lineCount != i) {
            if (lineCount < i) {
                int minimumHeight = editText.getMinimumHeight();
                int i2 = textInputLayout.f2878;
                if (minimumHeight != i2) {
                    editText.setMinimumHeight(i2);
                }
            }
            this.f5073 = lineCount;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
