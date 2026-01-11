package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import p229.C3125;
import p447.C5304;
import p447.CallableC5265;

/* renamed from: com.google.android.gms.internal.measurement.ˑˉ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0380 extends AbstractC0465 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ int f2038 = 4;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Object f2039;

    public C0380(C0371 c0371) {
        super("internal.registerCallback");
        this.f2039 = c0371;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0380(C0400 c0400, C3125 c3125) {
        super("getValue");
        this.f2039 = c3125;
    }

    public C0380(ᐧﹳ.ʽ r7) {
        super("internal.logger");
        this.f2039 = r7;
        this.f2224.put("log", new C0249(this, false, true));
        this.f2224.put("silent", new C0400(1, "silent"));
        ((AbstractC0465) this.f2224.get("silent")).mo1353("log", new C0249(this, true, true));
        this.f2224.put("unmonitored", new C0400(2, "unmonitored"));
        ((AbstractC0465) this.f2224.get("unmonitored")).mo1353("log", new C0249(this, false, false));
    }

    public C0380(ᵢ.ﹳٴ r2) {
        super("internal.eventLogger");
        this.f2039 = r2;
    }

    public C0380(CallableC5265 callableC5265) {
        super("internal.appMetadata");
        this.f2039 = callableC5265;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0465
    /* renamed from: ʽ */
    public final InterfaceC0457 mo1199(ˏˆ.ﹳٴ r9, List list) {
        TreeMap treeMap;
        switch (this.f2038) {
            case 0:
                ˉᵎ.ⁱˊ.ˑٴ(3, this.f2223, list);
                String mo1558 = ((C0371) r9.ʽʽ).m1698(r9, (InterfaceC0457) list.get(0)).mo1558();
                InterfaceC0457 interfaceC0457 = (InterfaceC0457) list.get(1);
                C0371 c0371 = (C0371) r9.ʽʽ;
                long j = (long) ˉᵎ.ⁱˊ.ᴵˑ(c0371.m1698(r9, interfaceC0457).mo1562().doubleValue());
                InterfaceC0457 m1698 = c0371.m1698(r9, (InterfaceC0457) list.get(2));
                HashMap hashMap = m1698 instanceof C0422 ? ˉᵎ.ⁱˊ.ʿ((C0422) m1698) : new HashMap();
                ᵢ.ﹳٴ r10 = (ᵢ.ﹳٴ) this.f2039;
                r10.getClass();
                HashMap hashMap2 = new HashMap();
                for (String str : hashMap.keySet()) {
                    HashMap hashMap3 = ((C0484) r10.ᴵˊ).f2244;
                    hashMap2.put(str, C0484.m1936(hashMap3.containsKey(str) ? hashMap3.get(str) : null, hashMap.get(str), str));
                }
                ((ArrayList) r10.ˈٴ).add(new C0484(mo1558, j, hashMap2));
                return InterfaceC0457.f2214;
            case 1:
                ˉᵎ.ⁱˊ.ˑٴ(2, "getValue", list);
                InterfaceC0457 m16982 = ((C0371) r9.ʽʽ).m1698(r9, (InterfaceC0457) list.get(0));
                InterfaceC0457 m16983 = ((C0371) r9.ʽʽ).m1698(r9, (InterfaceC0457) list.get(1));
                String mo15582 = m16982.mo1558();
                C3125 c3125 = (C3125) this.f2039;
                Map map = (Map) ((C5304) c3125.f11941).f19996.get((String) c3125.f11943);
                String str2 = (map == null || !map.containsKey(mo15582)) ? null : (String) map.get(mo15582);
                return str2 != null ? new C0467(str2) : m16983;
            case 2:
                return InterfaceC0457.f2214;
            case 3:
                try {
                    return ᴵˋ.ˊʻ.ˑٴ(((CallableC5265) this.f2039).call());
                } catch (Exception unused) {
                    return InterfaceC0457.f2214;
                }
            default:
                ˉᵎ.ⁱˊ.ˑٴ(3, this.f2223, list);
                ((C0371) r9.ʽʽ).m1698(r9, (InterfaceC0457) list.get(0)).mo1558();
                InterfaceC0457 interfaceC04572 = (InterfaceC0457) list.get(1);
                C0371 c03712 = (C0371) r9.ʽʽ;
                InterfaceC0457 m16984 = c03712.m1698(r9, interfaceC04572);
                if (!(m16984 instanceof C0329)) {
                    throw new IllegalArgumentException("Invalid callback type");
                }
                InterfaceC0457 m16985 = c03712.m1698(r9, (InterfaceC0457) list.get(2));
                if (!(m16985 instanceof C0422)) {
                    throw new IllegalArgumentException("Invalid callback params");
                }
                C0422 c0422 = (C0422) m16985;
                HashMap hashMap4 = c0422.f2161;
                if (!hashMap4.containsKey("type")) {
                    throw new IllegalArgumentException("Undefined rule type");
                }
                String mo15583 = c0422.mo1354("type").mo1558();
                int i = hashMap4.containsKey("priority") ? ˉᵎ.ⁱˊ.ˈⁱ(c0422.mo1354("priority").mo1562().doubleValue()) : 1000;
                C0371 c03713 = (C0371) this.f2039;
                C0329 c0329 = (C0329) m16984;
                c03713.getClass();
                if ("create".equals(mo15583)) {
                    treeMap = (TreeMap) c03713.f2031;
                } else {
                    if (!"edit".equals(mo15583)) {
                        throw new IllegalStateException("Unknown callback type: ".concat(String.valueOf(mo15583)));
                    }
                    treeMap = (TreeMap) c03713.f2032;
                }
                if (treeMap.containsKey(Integer.valueOf(i))) {
                    i = ((Integer) treeMap.lastKey()).intValue() + 1;
                }
                treeMap.put(Integer.valueOf(i), c0329);
                return InterfaceC0457.f2214;
        }
    }
}
