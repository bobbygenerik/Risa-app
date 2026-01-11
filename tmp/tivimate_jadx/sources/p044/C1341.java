package p044;

import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* renamed from: ʽˊ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1341 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ C1324 f5178;

    public C1341(C1324 c1324) {
        this.f5178 = c1324;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m4010(TextInputLayout textInputLayout) {
        C1324 c1324 = this.f5178;
        C1332 c1332 = c1324.f5082;
        if (c1324.f5076 == textInputLayout.getEditText()) {
            return;
        }
        EditText editText = c1324.f5076;
        if (editText != null) {
            editText.removeTextChangedListener(c1332);
            if (c1324.f5076.getOnFocusChangeListener() == c1324.m3962().mo3970()) {
                c1324.f5076.setOnFocusChangeListener(null);
            }
        }
        EditText editText2 = textInputLayout.getEditText();
        c1324.f5076 = editText2;
        if (editText2 != null) {
            editText2.addTextChangedListener(c1332);
        }
        c1324.m3962().mo3976(c1324.f5076);
        c1324.m3958(c1324.m3962());
    }
}
