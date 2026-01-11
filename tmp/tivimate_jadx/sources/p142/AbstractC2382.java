package p142;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.leanback.widget.ˉˆ;
import com.google.android.material.chip.Chip;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p110.C1949;
import p110.C1953;
import p158.C2535;
import p186.AbstractC2823;
import p186.C2833;
import ᵎˉ.ⁱˊ;
import ﹳˋ.ʼˎ;

/* renamed from: ˉـ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2382 extends C2833 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final Chip f9202;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public C2383 f9203;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final AccessibilityManager f9209;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static final Rect f9201 = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static final ⁱˊ f9200 = new Object();

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static final ʼˎ f9199 = new ʼˎ(15);

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Rect f9204 = new Rect();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Rect f9206 = new Rect();

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Rect f9211 = new Rect();

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int[] f9208 = new int[2];

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f9207 = Integer.MIN_VALUE;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f9210 = Integer.MIN_VALUE;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f9205 = Integer.MIN_VALUE;

    public AbstractC2382(Chip chip) {
        this.f9202 = chip;
        this.f9209 = (AccessibilityManager) chip.getContext().getSystemService("accessibility");
        chip.setFocusable(true);
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        if (chip.getImportantForAccessibility() == 0) {
            chip.setImportantForAccessibility(1);
        }
    }

    /* renamed from: ʼᐧ */
    public abstract void mo4903(int i, boolean z);

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final boolean m5471(int i) {
        if (this.f9210 != i) {
            return false;
        }
        this.f9210 = Integer.MIN_VALUE;
        mo4903(i, false);
        m5477(i, 8);
        return true;
    }

    @Override // p186.C2833
    /* renamed from: ˈ */
    public final void mo2395(View view, C2535 c2535) {
        AccessibilityNodeInfo accessibilityNodeInfo = c2535.f9633;
        this.f10631.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        Chip chip = ((C1949) this).f7731;
        C1953 c1953 = chip.f2681;
        accessibilityNodeInfo.setCheckable(c1953 != null && c1953.f7747);
        accessibilityNodeInfo.setClickable(chip.isClickable());
        c2535.m5665(chip.getAccessibilityClassName());
        c2535.m5669(chip.getText());
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00ea  */
    /* renamed from: ˉʿ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m5472(int r19, android.graphics.Rect r20) {
        /*
            Method dump skipped, instructions count: 488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p142.AbstractC2382.m5472(int, android.graphics.Rect):boolean");
    }

    /* renamed from: ˉˆ */
    public abstract void mo4904(int i, C2535 c2535);

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C2535 m5473(int i) {
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
        C2535 c2535 = new C2535(obtain);
        obtain.setEnabled(true);
        obtain.setFocusable(true);
        c2535.m5665("android.view.View");
        Rect rect = f9201;
        obtain.setBoundsInParent(rect);
        obtain.setBoundsInScreen(rect);
        Chip chip = this.f9202;
        obtain.setParent(chip);
        mo4904(i, c2535);
        if (c2535.m5671() == null && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        Rect rect2 = this.f9206;
        c2535.m5679(rect2);
        if (rect2.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = obtain.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((actions & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        obtain.setPackageName(chip.getContext().getPackageName());
        c2535.f9632 = i;
        obtain.setSource(chip, i);
        if (this.f9207 == i) {
            obtain.setAccessibilityFocused(true);
            c2535.m5676(128);
        } else {
            obtain.setAccessibilityFocused(false);
            c2535.m5676(64);
        }
        boolean z = this.f9210 == i;
        if (z) {
            c2535.m5676(2);
        } else if (obtain.isFocusable()) {
            c2535.m5676(1);
        }
        obtain.setFocused(z);
        int[] iArr = this.f9208;
        chip.getLocationOnScreen(iArr);
        Rect rect3 = this.f9204;
        obtain.getBoundsInScreen(rect3);
        if (rect3.equals(rect)) {
            c2535.m5679(rect3);
            rect3.offset(iArr[0] - chip.getScrollX(), iArr[1] - chip.getScrollY());
        }
        Rect rect4 = this.f9211;
        if (chip.getLocalVisibleRect(rect4)) {
            rect4.offset(iArr[0] - chip.getScrollX(), iArr[1] - chip.getScrollY());
            if (rect3.intersect(rect4)) {
                obtain.setBoundsInScreen(rect3);
                if (!rect3.isEmpty() && chip.getWindowVisibility() == 0) {
                    Object parent = chip.getParent();
                    while (true) {
                        if (parent instanceof View) {
                            View view = (View) parent;
                            if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                                break;
                            }
                            parent = view.getParent();
                        } else if (parent != null) {
                            c2535.f9633.setVisibleToUser(true);
                        }
                    }
                }
            }
        }
        return c2535;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final C2535 m5474(int i) {
        if (i != -1) {
            return m5473(i);
        }
        Chip chip = this.f9202;
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(chip);
        C2535 c2535 = new C2535(obtain);
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        chip.onInitializeAccessibilityNodeInfo(obtain);
        ArrayList arrayList = new ArrayList();
        mo4905(arrayList);
        if (obtain.getChildCount() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            c2535.f9633.addChild(chip, ((Integer) arrayList.get(i2)).intValue());
        }
        return c2535;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final boolean m5475(int i) {
        int i2;
        Chip chip = this.f9202;
        if ((!chip.isFocused() && !chip.requestFocus()) || (i2 = this.f9210) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            m5471(i2);
        }
        if (i == Integer.MIN_VALUE) {
            return false;
        }
        this.f9210 = i;
        mo4903(i, true);
        m5477(i, 8);
        return true;
    }

    @Override // p186.C2833
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ˉˆ mo5476(View view) {
        if (this.f9203 == null) {
            this.f9203 = new C2383(this);
        }
        return this.f9203;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m5477(int i, int i2) {
        View view;
        ViewParent parent;
        AccessibilityEvent obtain;
        if (i == Integer.MIN_VALUE || !this.f9209.isEnabled() || (parent = (view = this.f9202).getParent()) == null) {
            return;
        }
        if (i != -1) {
            obtain = AccessibilityEvent.obtain(i2);
            C2535 m5474 = m5474(i);
            obtain.getText().add(m5474.m5671());
            AccessibilityNodeInfo accessibilityNodeInfo = m5474.f9633;
            obtain.setContentDescription(accessibilityNodeInfo.getContentDescription());
            obtain.setScrollable(accessibilityNodeInfo.isScrollable());
            obtain.setPassword(accessibilityNodeInfo.isPassword());
            obtain.setEnabled(accessibilityNodeInfo.isEnabled());
            obtain.setChecked(accessibilityNodeInfo.isChecked());
            if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
                throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
            }
            obtain.setClassName(accessibilityNodeInfo.getClassName());
            obtain.setSource(view, i);
            obtain.setPackageName(view.getContext().getPackageName());
        } else {
            obtain = AccessibilityEvent.obtain(i2);
            view.onInitializeAccessibilityEvent(obtain);
        }
        parent.requestSendAccessibilityEvent(view, obtain);
    }

    /* renamed from: ﾞʻ */
    public abstract void mo4905(ArrayList arrayList);
}
