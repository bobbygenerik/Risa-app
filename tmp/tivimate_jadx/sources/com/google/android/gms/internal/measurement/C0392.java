package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import p035.AbstractC1220;

/* renamed from: com.google.android.gms.internal.measurement.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0392 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ int f2055;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f2056 = new ArrayList();

    public C0392(int i) {
        this.f2055 = i;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C0329 m1776(ˏˆ.ﹳٴ r5, List list) {
        EnumC0401 enumC0401 = EnumC0401.f2111;
        ˉᵎ.ⁱˊ.ˋᵔ(2, "FN", list);
        InterfaceC0457 m1698 = ((C0371) r5.ʽʽ).m1698(r5, (InterfaceC0457) list.get(0));
        InterfaceC0457 m16982 = ((C0371) r5.ʽʽ).m1698(r5, (InterfaceC0457) list.get(1));
        if (!(m16982 instanceof C0316)) {
            throw new IllegalArgumentException(AbstractC1220.m3771("FN requires an ArrayValue of parameter names found ", m16982.getClass().getCanonicalName()));
        }
        List m1557 = ((C0316) m16982).m1557();
        List arrayList = new ArrayList();
        if (list.size() > 2) {
            arrayList = list.subList(2, list.size());
        }
        return new C0329(m1698.mo1558(), (ArrayList) m1557, arrayList, r5);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static boolean m1777(InterfaceC0457 interfaceC0457, InterfaceC0457 interfaceC04572) {
        if (interfaceC0457 instanceof InterfaceC0309) {
            interfaceC0457 = new C0467(interfaceC0457.mo1558());
        }
        if (interfaceC04572 instanceof InterfaceC0309) {
            interfaceC04572 = new C0467(interfaceC04572.mo1558());
        }
        if ((interfaceC0457 instanceof C0467) && (interfaceC04572 instanceof C0467)) {
            return ((C0467) interfaceC0457).f2225.compareTo(((C0467) interfaceC04572).f2225) < 0;
        }
        double doubleValue = interfaceC0457.mo1562().doubleValue();
        double doubleValue2 = interfaceC04572.mo1562().doubleValue();
        return (Double.isNaN(doubleValue) || Double.isNaN(doubleValue2) || (doubleValue == 0.0d && doubleValue2 == 0.0d) || ((doubleValue == 0.0d && doubleValue2 == 0.0d) || Double.compare(doubleValue, doubleValue2) >= 0)) ? false : true;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static InterfaceC0457 m1778(C0251 c0251, InterfaceC0457 interfaceC0457, InterfaceC0457 interfaceC04572) {
        if (interfaceC0457 instanceof Iterable) {
            return m1779(c0251, ((Iterable) interfaceC0457).iterator(), interfaceC04572);
        }
        throw new IllegalArgumentException("Non-iterable type in for...of loop.");
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static InterfaceC0457 m1779(C0251 c0251, Iterator it, InterfaceC0457 interfaceC0457) {
        ˏˆ.ﹳٴ r1;
        if (it != null) {
            while (it.hasNext()) {
                InterfaceC0457 interfaceC04572 = (InterfaceC0457) it.next();
                switch (c0251.f1745) {
                    case 0:
                        r1 = c0251.f1744.ˈⁱ();
                        String str = c0251.f1743;
                        r1.ʿ(str, interfaceC04572);
                        ((HashMap) r1.ᴵᵔ).put(str, Boolean.TRUE);
                        break;
                    case 1:
                        r1 = c0251.f1744.ˈⁱ();
                        r1.ʿ(c0251.f1743, interfaceC04572);
                        break;
                    default:
                        r1 = c0251.f1744;
                        r1.ʿ(c0251.f1743, interfaceC04572);
                        break;
                }
                InterfaceC0457 interfaceC04573 = r1.ﹳـ((C0316) interfaceC0457);
                if (interfaceC04573 instanceof C0515) {
                    C0515 c0515 = (C0515) interfaceC04573;
                    String str2 = c0515.f2283;
                    if ("break".equals(str2)) {
                        return InterfaceC0457.f2214;
                    }
                    if ("return".equals(str2)) {
                        return c0515;
                    }
                }
            }
        }
        return InterfaceC0457.f2214;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static boolean m1780(InterfaceC0457 interfaceC0457, InterfaceC0457 interfaceC04572) {
        if (interfaceC0457 instanceof InterfaceC0309) {
            interfaceC0457 = new C0467(interfaceC0457.mo1558());
        }
        if (interfaceC04572 instanceof InterfaceC0309) {
            interfaceC04572 = new C0467(interfaceC04572.mo1558());
        }
        return (((interfaceC0457 instanceof C0467) && (interfaceC04572 instanceof C0467)) || !(Double.isNaN(interfaceC0457.mo1562().doubleValue()) || Double.isNaN(interfaceC04572.mo1562().doubleValue()))) && !m1777(interfaceC04572, interfaceC0457);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static boolean m1781(InterfaceC0457 interfaceC0457, InterfaceC0457 interfaceC04572) {
        if (interfaceC0457.getClass().equals(interfaceC04572.getClass())) {
            if ((interfaceC0457 instanceof C0494) || (interfaceC0457 instanceof C0510)) {
                return true;
            }
            return interfaceC0457 instanceof C0453 ? (Double.isNaN(interfaceC0457.mo1562().doubleValue()) || Double.isNaN(interfaceC04572.mo1562().doubleValue()) || interfaceC0457.mo1562().doubleValue() != interfaceC04572.mo1562().doubleValue()) ? false : true : interfaceC0457 instanceof C0467 ? interfaceC0457.mo1558().equals(interfaceC04572.mo1558()) : interfaceC0457 instanceof C0384 ? interfaceC0457.mo1563().equals(interfaceC04572.mo1563()) : interfaceC0457 == interfaceC04572;
        }
        if (((interfaceC0457 instanceof C0494) || (interfaceC0457 instanceof C0510)) && ((interfaceC04572 instanceof C0494) || (interfaceC04572 instanceof C0510))) {
            return true;
        }
        boolean z = interfaceC0457 instanceof C0453;
        if (z && (interfaceC04572 instanceof C0467)) {
            return m1781(interfaceC0457, new C0453(interfaceC04572.mo1562()));
        }
        boolean z2 = interfaceC0457 instanceof C0467;
        if ((!z2 || !(interfaceC04572 instanceof C0453)) && !(interfaceC0457 instanceof C0384)) {
            if (interfaceC04572 instanceof C0384) {
                return m1781(interfaceC0457, new C0453(interfaceC04572.mo1562()));
            }
            if ((z2 || z) && (interfaceC04572 instanceof InterfaceC0309)) {
                return m1781(interfaceC0457, new C0467(interfaceC04572.mo1558()));
            }
            if ((interfaceC0457 instanceof InterfaceC0309) && ((interfaceC04572 instanceof C0467) || (interfaceC04572 instanceof C0453))) {
                return m1781(new C0467(interfaceC0457.mo1558()), interfaceC04572);
            }
            return false;
        }
        return m1781(new C0453(interfaceC0457.mo1562()), interfaceC04572);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m1782(String str) {
        if (!this.f2056.contains(ˉᵎ.ⁱˊ.ـˏ(str))) {
            throw new IllegalArgumentException("Command not supported");
        }
        throw new UnsupportedOperationException("Command not implemented: ".concat(String.valueOf(str)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:359:0x0918, code lost:
    
        if ("return".equals(r4) != false) goto L301;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:533:0x0c92. Please report as an issue. */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.InterfaceC0457 m1783(java.lang.String r12, ˏˆ.ﹳٴ r13, java.util.ArrayList r14) {
        /*
            Method dump skipped, instructions count: 3868
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C0392.m1783(java.lang.String, ˏˆ.ﹳٴ, java.util.ArrayList):com.google.android.gms.internal.measurement.ᵔʾ");
    }
}
