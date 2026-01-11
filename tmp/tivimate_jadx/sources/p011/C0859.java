package p011;

import android.R;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import androidx.leanback.widget.RunnableC0142;
import androidx.preference.EditTextPreference;

/* renamed from: ʻᐧ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0859 extends AbstractDialogInterfaceOnClickListenerC0852 {

    /* renamed from: ˋـ, reason: contains not printable characters */
    public EditText f3670;

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public CharSequence f3673;

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public final RunnableC0142 f3672 = new RunnableC0142(4, this);

    /* renamed from: ٴʿ, reason: contains not printable characters */
    public long f3671 = -1;

    @Override // p011.AbstractDialogInterfaceOnClickListenerC0852, p229.DialogInterfaceOnCancelListenerC3073, p229.AbstractComponentCallbacksC3123
    /* renamed from: ʽᵔ */
    public final void mo421(Bundle bundle) {
        super.mo421(bundle);
        if (bundle == null) {
            this.f3673 = ((EditTextPreference) m3052()).f1337;
        } else {
            this.f3673 = bundle.getCharSequence("EditTextPreferenceDialogFragment.text");
        }
    }

    @Override // p011.AbstractDialogInterfaceOnClickListenerC0852, p229.DialogInterfaceOnCancelListenerC3073, p229.AbstractComponentCallbacksC3123
    /* renamed from: ʾﾞ */
    public final void mo424(Bundle bundle) {
        super.mo424(bundle);
        bundle.putCharSequence("EditTextPreferenceDialogFragment.text", this.f3673);
    }

    @Override // p011.AbstractDialogInterfaceOnClickListenerC0852
    /* renamed from: ˋـ */
    public final void mo3050(View view) {
        super.mo3050(view);
        EditText editText = (EditText) view.findViewById(R.id.edit);
        this.f3670 = editText;
        if (editText == null) {
            throw new IllegalStateException("Dialog view must contain an EditText with id @android:id/edit");
        }
        editText.requestFocus();
        this.f3670.setText(this.f3673);
        EditText editText2 = this.f3670;
        editText2.setSelection(editText2.getText().length());
        ((EditTextPreference) m3052()).getClass();
    }

    /* renamed from: ٴʿ, reason: contains not printable characters */
    public final void m3059() {
        long j = this.f3671;
        if (j == -1 || j + 1000 <= SystemClock.currentThreadTimeMillis()) {
            return;
        }
        EditText editText = this.f3670;
        if (editText == null || !editText.isFocused()) {
            this.f3671 = -1L;
            return;
        }
        if (((InputMethodManager) this.f3670.getContext().getSystemService("input_method")).showSoftInput(this.f3670, 0)) {
            this.f3671 = -1L;
            return;
        }
        EditText editText2 = this.f3670;
        RunnableC0142 runnableC0142 = this.f3672;
        editText2.removeCallbacks(runnableC0142);
        this.f3670.postDelayed(runnableC0142, 50L);
    }

    @Override // p011.AbstractDialogInterfaceOnClickListenerC0852
    /* renamed from: ﹶʽ */
    public final void mo3053(boolean z) {
        if (z) {
            String obj = this.f3670.getText().toString();
            EditTextPreference editTextPreference = (EditTextPreference) m3052();
            editTextPreference.m845(obj);
            editTextPreference.m819(obj);
        }
    }
}
