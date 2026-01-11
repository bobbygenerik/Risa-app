package androidx.lifecycle;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import p227.AbstractC3070;
import p340.C4249;
import p340.InterfaceC4258;
import p391.C4641;
import p430.C5110;

/* renamed from: androidx.lifecycle.ˑٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0181 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final androidx.leanback.widget.ʻٴ f1070;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final LinkedHashMap f1071;

    public C0181() {
        this.f1071 = new LinkedHashMap();
        this.f1070 = new androidx.leanback.widget.ʻٴ(C5110.f19215);
    }

    public C0181(C4641 c4641) {
        this.f1071 = new LinkedHashMap();
        this.f1070 = new androidx.leanback.widget.ʻٴ(c4641);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m707(Object obj, String str) {
        if (obj != null) {
            ArrayList arrayList = AbstractC3070.f11656;
            if (arrayList == null || !arrayList.isEmpty()) {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj2 = arrayList.get(i);
                    i++;
                    if (((Class) obj2).isInstance(obj)) {
                    }
                }
            }
            throw new IllegalArgumentException(("Can't put value with type " + obj.getClass() + " into saved state").toString());
        }
        ArrayList arrayList2 = AbstractC3070.f11656;
        Object obj3 = this.f1071.get(str);
        C0177 c0177 = obj3 instanceof C0177 ? (C0177) obj3 : null;
        if (c0177 != null) {
            c0177.m686(obj);
        }
        this.f1070.ـˆ(obj, str);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object m708(String str) {
        Object m8647;
        androidx.leanback.widget.ʻٴ r0 = this.f1070;
        LinkedHashMap linkedHashMap = (LinkedHashMap) r0.ʽʽ;
        LinkedHashMap linkedHashMap2 = (LinkedHashMap) r0.ˊʻ;
        try {
            InterfaceC4258 interfaceC4258 = (InterfaceC4258) linkedHashMap2.get(str);
            if (interfaceC4258 != null && (m8647 = ((C4249) interfaceC4258).m8647()) != null) {
                return m8647;
            }
            return linkedHashMap.get(str);
        } catch (ClassCastException unused) {
            linkedHashMap.remove(str);
            ((LinkedHashMap) r0.ᴵᵔ).remove(str);
            linkedHashMap2.remove(str);
            return null;
        }
    }
}
