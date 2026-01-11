package p186;

import android.os.Bundle;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.leanback.widget.ˉˆ;
import ar.tvplayer.tv.R;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
import p158.C2526;
import p158.C2535;
import p158.InterfaceC2539;

/* renamed from: ˋᵔ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2833 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final View.AccessibilityDelegate f10629 = new View.AccessibilityDelegate();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2835 f10630;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final View.AccessibilityDelegate f10631;

    public C2833() {
        this(f10629);
    }

    public C2833(View.AccessibilityDelegate accessibilityDelegate) {
        this.f10631 = accessibilityDelegate;
        this.f10630 = new C2835(this);
    }

    /* renamed from: ʼˎ */
    public void mo6071(View view, AccessibilityEvent accessibilityEvent) {
        this.f10631.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    /* renamed from: ʽ */
    public void mo2394(View view, AccessibilityEvent accessibilityEvent) {
        this.f10631.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: ˈ */
    public void mo2395(View view, C2535 c2535) {
        this.f10631.onInitializeAccessibilityNodeInfo(view, c2535.f9633);
    }

    /* renamed from: ˑﹳ */
    public void mo3979(View view, AccessibilityEvent accessibilityEvent) {
        this.f10631.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: ᵎﹶ */
    public boolean mo2396(View view, int i, Bundle bundle) {
        boolean z;
        WeakReference weakReference;
        ClickableSpan clickableSpan;
        List list = (List) view.getTag(R.id.4tt);
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        boolean z2 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= list.size()) {
                break;
            }
            C2526 c2526 = (C2526) list.get(i2);
            if (c2526.m5646() == i) {
                Class cls = c2526.f9627;
                InterfaceC2539 interfaceC2539 = c2526.f9628;
                if (interfaceC2539 != null) {
                    if (cls != null) {
                        try {
                            if (cls.getDeclaredConstructor(null).newInstance(null) == null) {
                                throw null;
                            }
                            throw new ClassCastException();
                        } catch (Exception e) {
                            "Failed to execute command with argument class ViewCommandArgument: ".concat(cls.getName());
                        }
                    }
                    z = interfaceC2539.mo3462(view);
                }
            } else {
                i2++;
            }
        }
        z = false;
        if (!z) {
            z = this.f10631.performAccessibilityAction(view, i, bundle);
        }
        if (z || i != R.id.2jc || bundle == null) {
            return z;
        }
        int i3 = bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1);
        SparseArray sparseArray = (SparseArray) view.getTag(R.id.uf);
        if (sparseArray != null && (weakReference = (WeakReference) sparseArray.get(i3)) != null && (clickableSpan = (ClickableSpan) weakReference.get()) != null) {
            CharSequence text = view.createAccessibilityNodeInfo().getText();
            ClickableSpan[] clickableSpanArr = text instanceof Spanned ? (ClickableSpan[]) ((Spanned) text).getSpans(0, text.length(), ClickableSpan.class) : null;
            int i4 = 0;
            while (true) {
                if (clickableSpanArr == null || i4 >= clickableSpanArr.length) {
                    break;
                }
                if (clickableSpan.equals(clickableSpanArr[i4])) {
                    clickableSpan.onClick(view);
                    z2 = true;
                    break;
                }
                i4++;
            }
        }
        return z2;
    }

    /* renamed from: ᵔᵢ */
    public void mo6072(View view, int i) {
        this.f10631.sendAccessibilityEvent(view, i);
    }

    /* renamed from: ⁱˊ */
    public ˉˆ mo5476(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = this.f10631.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new ˉˆ(28, accessibilityNodeProvider);
        }
        return null;
    }

    /* renamed from: ﹳٴ */
    public boolean mo6073(View view, AccessibilityEvent accessibilityEvent) {
        return this.f10631.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: ﾞᴵ */
    public boolean mo6074(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f10631.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }
}
