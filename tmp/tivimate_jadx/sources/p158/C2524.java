package p158;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.leanback.widget.ˉˆ;
import java.util.List;

/* renamed from: ˊˋ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2524 extends AccessibilityNodeProvider {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ˉˆ f9615;

    public C2524(ˉˆ r1) {
        this.f9615 = r1;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
        C2535 c2535 = this.f9615.ٴﹶ(i);
        if (c2535 == null) {
            return null;
        }
        return c2535.f9633;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final List findAccessibilityNodeInfosByText(String str, int i) {
        this.f9615.getClass();
        return null;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final AccessibilityNodeInfo findFocus(int i) {
        C2535 c2535 = this.f9615.ʼᐧ(i);
        if (c2535 == null) {
            return null;
        }
        return c2535.f9633;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final boolean performAction(int i, int i2, Bundle bundle) {
        return this.f9615.ـˆ(i, i2, bundle);
    }
}
