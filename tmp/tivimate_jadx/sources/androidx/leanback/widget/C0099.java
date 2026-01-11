package androidx.leanback.widget;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import p044.C1336;

/* renamed from: androidx.leanback.widget.ˆﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0099 extends View.AccessibilityDelegate {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f884;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f885;

    public /* synthetic */ C0099(int i, Object obj) {
        this.f885 = i;
        this.f884 = obj;
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        switch (this.f885) {
            case 0:
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
                C0095 c0095 = ((C0101) this.f884).f896;
                accessibilityEvent.setChecked(c0095 != null && c0095.m584());
                return;
            default:
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
                return;
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        switch (this.f885) {
            case 0:
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                C0101 c0101 = (C0101) this.f884;
                C0095 c0095 = c0101.f896;
                boolean z = false;
                accessibilityNodeInfo.setCheckable((c0095 == null || c0095.f874 == 0) ? false : true);
                C0095 c00952 = c0101.f896;
                if (c00952 != null && c00952.m584()) {
                    z = true;
                }
                accessibilityNodeInfo.setChecked(z);
                return;
            default:
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                EditText editText = ((C1336) this.f884).f5151.getEditText();
                if (editText != null) {
                    accessibilityNodeInfo.setLabeledBy(editText);
                    return;
                }
                return;
        }
    }
}
