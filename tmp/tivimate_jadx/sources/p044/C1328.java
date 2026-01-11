package p044;

import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
import p137.C2312;
import p158.C2535;
import p186.C2833;

/* renamed from: ʽˊ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1328 extends C2833 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final TextInputLayout f5112;

    public C1328(TextInputLayout textInputLayout) {
        this.f5112 = textInputLayout;
    }

    @Override // p186.C2833
    /* renamed from: ˈ */
    public final void mo2395(View view, C2535 c2535) {
        AccessibilityNodeInfo accessibilityNodeInfo = c2535.f9633;
        this.f10631.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        TextInputLayout textInputLayout = this.f5112;
        EditText editText = textInputLayout.getEditText();
        CharSequence text = editText != null ? editText.getText() : null;
        CharSequence hint = textInputLayout.getHint();
        CharSequence error = textInputLayout.getError();
        CharSequence placeholderText = textInputLayout.getPlaceholderText();
        int counterMaxLength = textInputLayout.getCounterMaxLength();
        CharSequence counterOverflowDescription = textInputLayout.getCounterOverflowDescription();
        boolean isEmpty = TextUtils.isEmpty(text);
        boolean isEmpty2 = TextUtils.isEmpty(hint);
        boolean z = textInputLayout.f2915;
        boolean isEmpty3 = TextUtils.isEmpty(error);
        boolean z2 = (isEmpty3 && TextUtils.isEmpty(counterOverflowDescription)) ? false : true;
        String charSequence = !isEmpty2 ? hint.toString() : "";
        C1329 c1329 = textInputLayout.f2894;
        C2312 c2312 = c1329.f5120;
        if (c2312.getVisibility() == 0) {
            accessibilityNodeInfo.setLabelFor(c2312);
            accessibilityNodeInfo.setTraversalAfter(c2312);
        } else {
            accessibilityNodeInfo.setTraversalAfter(c1329.f5115);
        }
        if (!isEmpty) {
            c2535.m5669(text);
        } else if (!TextUtils.isEmpty(charSequence)) {
            c2535.m5669(charSequence);
            if (!z && placeholderText != null) {
                c2535.m5669(charSequence + ", " + ((Object) placeholderText));
            }
        } else if (placeholderText != null) {
            c2535.m5669(placeholderText);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            if (Build.VERSION.SDK_INT >= 26) {
                c2535.m5672(charSequence);
            } else {
                if (!isEmpty) {
                    charSequence = ((Object) text) + ", " + charSequence;
                }
                c2535.m5669(charSequence);
            }
            c2535.m5677(isEmpty);
        }
        if (text == null || text.length() != counterMaxLength) {
            counterMaxLength = -1;
        }
        accessibilityNodeInfo.setMaxTextLength(counterMaxLength);
        if (z2) {
            if (isEmpty3) {
                error = counterOverflowDescription;
            }
            accessibilityNodeInfo.setError(error);
        }
        C2312 c23122 = textInputLayout.f2899.f5132;
        if (c23122 != null) {
            accessibilityNodeInfo.setLabelFor(c23122);
        }
        textInputLayout.f2845.m3962().mo4004(c2535);
    }

    @Override // p186.C2833
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void mo3979(View view, AccessibilityEvent accessibilityEvent) {
        super.mo3979(view, accessibilityEvent);
        this.f5112.f2845.m3962().mo4007(accessibilityEvent);
    }
}
