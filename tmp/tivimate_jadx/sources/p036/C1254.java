package p036;

import android.os.Build;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.ListIterator;
import p229.AbstractComponentCallbacksC3123;
import p229.C3074;
import p229.C3085;
import p229.C3131;
import p229.C3133;
import p430.C5109;
import ˉˑ.ʽ;

/* renamed from: ʽ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1254 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public C3131 f4866;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final OnBackInvokedCallback f4867;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public OnBackInvokedDispatcher f4868;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f4869;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C5109 f4870 = new C5109();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Runnable f4871;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f4872;

    public C1254(Runnable runnable) {
        OnBackInvokedCallback m3839;
        this.f4871 = runnable;
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            if (i >= 34) {
                m3839 = C1269.f4925.m3859(new C1257(this, 0), new C1257(this, 1), new C1264(this, 0), new C1264(this, 1));
            } else {
                m3839 = C1252.f4865.m3839(new C1264(this, 2));
            }
            this.f4867 = m3839;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3840() {
        boolean z = this.f4869;
        boolean z2 = false;
        C5109 c5109 = this.f4870;
        if (c5109 == null || !c5109.isEmpty()) {
            Iterator it = c5109.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((C3131) it.next()).f11965) {
                    z2 = true;
                    break;
                }
            }
        }
        this.f4869 = z2;
        if (z2 == z || Build.VERSION.SDK_INT < 33) {
            return;
        }
        m3841(z2);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m3841(boolean z) {
        OnBackInvokedCallback onBackInvokedCallback;
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.f4868;
        if (onBackInvokedDispatcher == null || (onBackInvokedCallback = this.f4867) == null) {
            return;
        }
        C1252 c1252 = C1252.f4865;
        if (z && !this.f4872) {
            c1252.m3838(onBackInvokedDispatcher, 0, onBackInvokedCallback);
            this.f4872 = true;
        } else {
            if (z || !this.f4872) {
                return;
            }
            c1252.m3837(onBackInvokedDispatcher, onBackInvokedCallback);
            this.f4872 = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.lang.Object] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m3842() {
        C3131 c3131;
        C3131 c31312 = this.f4866;
        if (c31312 == null) {
            C5109 c5109 = this.f4870;
            ListIterator listIterator = c5109.listIterator(c5109.mo9193());
            while (true) {
                if (listIterator.hasPrevious()) {
                    c3131 = listIterator.previous();
                    if (((C3131) c3131).f11965) {
                        break;
                    }
                } else {
                    c3131 = 0;
                    break;
                }
            }
            c31312 = c3131;
        }
        this.f4866 = null;
        if (c31312 == null) {
            this.f4871.run();
            return;
        }
        C3085 c3085 = c31312.f11963;
        if (C3085.m6654(3)) {
            String str = "handleOnBackPressed. PREDICTIVE_BACK = true fragment manager " + c3085;
        }
        C3131 c31313 = c3085.f11730;
        ArrayList arrayList = c3085.f11736;
        c3085.f11723 = true;
        c3085.m6664(true);
        int i = 0;
        c3085.f11723 = false;
        if (c3085.f11756 == null) {
            if (c31313.f11965) {
                if (C3085.m6654(3)) {
                }
                c3085.m6676();
                return;
            } else {
                if (C3085.m6654(3)) {
                }
                c3085.f11752.m3842();
                return;
            }
        }
        if (!arrayList.isEmpty()) {
            LinkedHashSet<AbstractComponentCallbacksC3123> linkedHashSet = new LinkedHashSet(C3085.m6653(c3085.f11756));
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                ʽ r11 = (ʽ) obj;
                for (AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 : linkedHashSet) {
                    r11.getClass();
                }
            }
        }
        ArrayList arrayList2 = c3085.f11756.f12011;
        int size2 = arrayList2.size();
        int i3 = 0;
        while (i3 < size2) {
            Object obj2 = arrayList2.get(i3);
            i3++;
            AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = ((C3074) obj2).f11688;
            if (abstractComponentCallbacksC31232 != null) {
                abstractComponentCallbacksC31232.f11899 = false;
            }
        }
        Iterator it = c3085.m6715(new ArrayList(Collections.singletonList(c3085.f11756)), 0, 1).iterator();
        while (it.hasNext()) {
            C3133 c3133 = (C3133) it.next();
            ArrayList arrayList3 = c3133.f11971;
            if (C3085.m6654(3)) {
            }
            c3133.m6876(arrayList3);
            c3133.m6867(arrayList3);
        }
        ArrayList arrayList4 = c3085.f11756.f12011;
        int size3 = arrayList4.size();
        while (i < size3) {
            Object obj3 = arrayList4.get(i);
            i++;
            AbstractComponentCallbacksC3123 abstractComponentCallbacksC31233 = ((C3074) obj3).f11688;
            if (abstractComponentCallbacksC31233 != null && abstractComponentCallbacksC31233.f11888 == null) {
                c3085.m6702(abstractComponentCallbacksC31233).m6769();
            }
        }
        c3085.f11756 = null;
        c3085.m6698();
        if (C3085.m6654(3)) {
            String str2 = "OnBackPressedCallback enabled=" + c31313.f11965 + " for  FragmentManager " + c3085;
        }
    }
}
