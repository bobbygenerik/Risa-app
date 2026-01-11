package androidx.leanback.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillValue;
import android.widget.EditText;
import android.widget.TextView;

@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes.dex */
public class GuidedActionEditText extends EditText implements InterfaceC0109, InterfaceC0107 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Drawable f645;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public InterfaceC0111 f646;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C0126 f647;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public InterfaceC0127 f648;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.leanback.widget.ٴʼ, android.graphics.drawable.Drawable] */
    public GuidedActionEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.editTextStyle);
        this.f645 = getBackground();
        ?? drawable = new Drawable();
        this.f647 = drawable;
        setBackground(drawable);
    }

    @Override // android.widget.TextView, android.view.View
    public final void autofill(AutofillValue autofillValue) {
        super.autofill(autofillValue);
        InterfaceC0127 interfaceC0127 = this.f648;
        if (interfaceC0127 != null) {
            C0108 c0108 = ((C0094) interfaceC0127).f869;
            c0108.f911.m1591(c0108, this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public int getAutofillType() {
        return 1;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (z) {
            setBackground(this.f645);
        } else {
            setBackground(this.f647);
        }
        if (z) {
            return;
        }
        setFocusable(false);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName((isFocused() ? EditText.class : TextView.class).getName());
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        InterfaceC0111 interfaceC0111 = this.f646;
        boolean m646 = interfaceC0111 != null ? ((C0134) interfaceC0111).m646(this, i, keyEvent) : false;
        return !m646 ? super.onKeyPreIme(i, keyEvent) : m646;
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isInTouchMode() || isFocusableInTouchMode() || isTextSelectable()) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(ﹳٴ.ﹳٴ.ˉـ(callback, this));
    }

    @Override // androidx.leanback.widget.InterfaceC0109
    public void setImeKeyListener(InterfaceC0111 interfaceC0111) {
        this.f646 = interfaceC0111;
    }

    @Override // androidx.leanback.widget.InterfaceC0107
    public void setOnAutofillListener(InterfaceC0127 interfaceC0127) {
        this.f648 = interfaceC0127;
    }
}
