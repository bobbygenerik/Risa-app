package p186;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.PathInterpolator;
import ar.tvplayer.tv.R;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p137.C2233;
import p158.C2526;
import p158.InterfaceC2539;
import p415.C4920;
import ʽⁱ.ᵎﹶ;

/* renamed from: ˋᵔ.ᵎˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2823 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static boolean f10599;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static Field f10602;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static WeakHashMap f10603;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final int[] f10600 = {R.id.1br, R.id.5cg, R.id.42c, R.id.5vi, R.id.3gb, R.id.4rg, R.id.2b4, R.id.1km, R.id.4dg, R.id.4k1, R.id.32n, R.id.62j, R.id.f0, R.id.lh, R.id.2s0, R.id.427, R.id.519, R.id.5tc, R.id.582, R.id.1q0, R.id.3lf, R.id.5ao, R.id.2u1, R.id.37i, R.id.4kf, R.id.5nu, R.id.4cg, R.id.4gr, R.id.2fc, R.id.1bp, R.id.5a7, R.id.5md};

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C2781 f10601 = new Object();

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final ViewTreeObserverOnGlobalLayoutListenerC2832 f10604 = new ViewTreeObserverOnGlobalLayoutListenerC2832();

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static C2826 m6269(View view, C2826 c2826) {
        if (Log.isLoggable("ViewCompat", 3)) {
            String str = "performReceiveContent: " + c2826 + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]";
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return AbstractC2825.m6285(view, c2826);
        }
        C4920 c4920 = (C4920) view.getTag(R.id.5e6);
        InterfaceC2774 interfaceC2774 = f10601;
        if (c4920 == null) {
            if (view instanceof InterfaceC2774) {
                interfaceC2774 = (InterfaceC2774) view;
            }
            return interfaceC2774.mo5235(c2826);
        }
        C2826 m9722 = C4920.m9722(view, c2826);
        if (m9722 == null) {
            return null;
        }
        if (view instanceof InterfaceC2774) {
            interfaceC2774 = (InterfaceC2774) view;
        }
        return interfaceC2774.mo5235(m9722);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, ˋᵔ.ٴʼ] */
    /* renamed from: ʽ, reason: contains not printable characters */
    public static boolean m6270(KeyEvent keyEvent, View view) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList arrayList = C2811.f10582;
        C2811 c2811 = (C2811) view.getTag(R.id.5si);
        C2811 c28112 = c2811;
        if (c2811 == null) {
            ?? obj = new Object();
            obj.f10585 = null;
            obj.f10584 = null;
            obj.f10583 = null;
            view.setTag(R.id.5si, obj);
            c28112 = obj;
        }
        if (keyEvent.getAction() == 0) {
            WeakHashMap weakHashMap = c28112.f10585;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList arrayList2 = C2811.f10582;
            if (!arrayList2.isEmpty()) {
                synchronized (arrayList2) {
                    try {
                        if (c28112.f10585 == null) {
                            c28112.f10585 = new WeakHashMap();
                        }
                        for (int size = arrayList2.size() - 1; size >= 0; size--) {
                            ArrayList arrayList3 = C2811.f10582;
                            View view2 = (View) ((WeakReference) arrayList3.get(size)).get();
                            if (view2 == null) {
                                arrayList3.remove(size);
                            } else {
                                c28112.f10585.put(view2, Boolean.TRUE);
                                for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                    c28112.f10585.put((View) parent, Boolean.TRUE);
                                }
                            }
                        }
                    } finally {
                    }
                }
            }
        }
        View m6249 = c28112.m6249(view);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (m6249 != null && !KeyEvent.isModifierKey(keyCode)) {
                if (c28112.f10584 == null) {
                    c28112.f10584 = new SparseArray();
                }
                c28112.f10584.put(keyCode, new WeakReference(m6249));
            }
        }
        return m6249 != null;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static void m6271(View view, int i) {
        ArrayList m6283 = m6283(view);
        for (int i2 = 0; i2 < m6283.size(); i2++) {
            if (((C2526) m6283.get(i2)).m5646() == i) {
                m6283.remove(i2);
                return;
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static View.AccessibilityDelegate m6272(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return AbstractC2812.m6251(view);
        }
        if (f10599) {
            return null;
        }
        if (f10602 == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f10602 = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f10599 = true;
                return null;
            }
        }
        try {
            Object obj = f10602.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f10599 = true;
            return null;
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static void m6273(View view, C2833 c2833) {
        if (c2833 == null && (m6272(view) instanceof C2835)) {
            c2833 = new C2833();
        }
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
        view.setAccessibilityDelegate(c2833 == null ? null : c2833.f10630);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static void m6274(View view, ᵎﹶ r3) {
        if (Build.VERSION.SDK_INT >= 30) {
            C2793.m6205(view, r3);
            return;
        }
        PathInterpolator pathInterpolator = C2834.f10632;
        View.OnApplyWindowInsetsListener viewOnApplyWindowInsetsListenerC2808 = new ViewOnApplyWindowInsetsListenerC2808(view, r3);
        view.setTag(R.id.rl, viewOnApplyWindowInsetsListenerC2808);
        if (view.getTag(R.id.3mu) == null && view.getTag(R.id.2ko) == null) {
            view.setOnApplyWindowInsetsListener(viewOnApplyWindowInsetsListenerC2808);
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static CharSequence m6275(View view) {
        Object tag;
        if (Build.VERSION.SDK_INT >= 28) {
            tag = AbstractC2795.m6214(view);
        } else {
            tag = view.getTag(R.id.2u4);
            if (!CharSequence.class.isInstance(tag)) {
                tag = null;
            }
        }
        return (CharSequence) tag;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static void m6276(View view, C2526 c2526, InterfaceC2539 interfaceC2539) {
        C2526 c25262 = new C2526(null, c2526.f9629, null, interfaceC2539, c2526.f9627);
        View.AccessibilityDelegate m6272 = m6272(view);
        C2833 c2833 = m6272 == null ? null : m6272 instanceof C2835 ? ((C2835) m6272).f10636 : new C2833(m6272);
        if (c2833 == null) {
            c2833 = new C2833();
        }
        m6273(view, c2833);
        m6271(view, c25262.m5646());
        m6283(view).add(c25262);
        m6279(view, 0);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static String[] m6277(C2233 c2233) {
        return Build.VERSION.SDK_INT >= 31 ? AbstractC2825.m6286(c2233) : (String[]) c2233.getTag(R.id.302);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static void m6278(View view, CharSequence charSequence) {
        new C2770(R.id.2u4, CharSequence.class, 8, 28, 1).m5093(view, charSequence);
        ViewTreeObserverOnGlobalLayoutListenerC2832 viewTreeObserverOnGlobalLayoutListenerC2832 = f10604;
        if (charSequence == null) {
            viewTreeObserverOnGlobalLayoutListenerC2832.f10628.remove(view);
            view.removeOnAttachStateChangeListener(viewTreeObserverOnGlobalLayoutListenerC2832);
            view.getViewTreeObserver().removeOnGlobalLayoutListener(viewTreeObserverOnGlobalLayoutListenerC2832);
        } else {
            viewTreeObserverOnGlobalLayoutListenerC2832.f10628.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
            view.addOnAttachStateChangeListener(viewTreeObserverOnGlobalLayoutListenerC2832);
            if (view.isAttachedToWindow()) {
                view.getViewTreeObserver().addOnGlobalLayoutListener(viewTreeObserverOnGlobalLayoutListenerC2832);
            }
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static void m6279(View view, int i) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z = m6275(view) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (view.getAccessibilityLiveRegion() != 0 || z) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(z ? 32 : 2048);
                obtain.setContentChangeTypes(i);
                if (z) {
                    obtain.getText().add(m6275(view));
                    if (view.getImportantForAccessibility() == 0) {
                        view.setImportantForAccessibility(1);
                    }
                }
                view.sendAccessibilityEventUnchecked(obtain);
                return;
            }
            if (i != 32) {
                if (view.getParent() != null) {
                    try {
                        view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i);
                        return;
                    } catch (AbstractMethodError e) {
                        view.getParent().getClass().getSimpleName().concat(" does not fully implement ViewParent");
                        return;
                    }
                }
                return;
            }
            AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
            view.onInitializeAccessibilityEvent(obtain2);
            obtain2.setEventType(32);
            obtain2.setContentChangeTypes(i);
            obtain2.setSource(view);
            view.onPopulateAccessibilityEvent(obtain2);
            obtain2.getText().add(m6275(view));
            accessibilityManager.sendAccessibilityEvent(obtain2);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m6280(View view, C2816 c2816) {
        int i = Build.VERSION.SDK_INT;
        WindowInsets m6258 = c2816.m6258();
        if (m6258 != null) {
            WindowInsets m6209 = i >= 30 ? AbstractC2794.m6209(view, m6258) : AbstractC2780.m6188(view, m6258);
            if (m6209.equals(m6258)) {
                return;
            }
            C2816.m6253(view, m6209);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C2798 m6281(View view) {
        if (f10603 == null) {
            f10603 = new WeakHashMap();
        }
        C2798 c2798 = (C2798) f10603.get(view);
        if (c2798 != null) {
            return c2798;
        }
        C2798 c27982 = new C2798(view);
        f10603.put(view, c27982);
        return c27982;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static void m6282(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            AbstractC2812.m6250(view, context, iArr, attributeSet, typedArray, i, 0);
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static ArrayList m6283(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(R.id.4tt);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(R.id.4tt, arrayList2);
        return arrayList2;
    }
}
