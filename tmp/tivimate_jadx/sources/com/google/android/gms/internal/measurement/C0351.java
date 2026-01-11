package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: com.google.android.gms.internal.measurement.ˋˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0351 extends C0422 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ᵢ.ﹳٴ f2012;

    public C0351(ᵢ.ﹳٴ r1) {
        this.f2012 = r1;
    }

    @Override // com.google.android.gms.internal.measurement.C0422, com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ᵔᵢ */
    public final InterfaceC0457 mo1560(String str, ˏˆ.ﹳٴ r7, ArrayList arrayList) {
        int hashCode = str.hashCode();
        ᵢ.ﹳٴ r2 = this.f2012;
        switch (hashCode) {
            case 21624207:
                if (str.equals("getEventName")) {
                    ˉᵎ.ⁱˊ.ˑٴ(0, "getEventName", arrayList);
                    return new C0467(((C0484) r2.ʽʽ).f2246);
                }
                break;
            case 45521504:
                if (str.equals("getTimestamp")) {
                    ˉᵎ.ⁱˊ.ˑٴ(0, "getTimestamp", arrayList);
                    return new C0453(Double.valueOf(((C0484) r2.ʽʽ).f2245));
                }
                break;
            case 146575578:
                if (str.equals("getParamValue")) {
                    ˉᵎ.ⁱˊ.ˑٴ(1, "getParamValue", arrayList);
                    String mo1558 = ((C0371) r7.ʽʽ).m1698(r7, (InterfaceC0457) arrayList.get(0)).mo1558();
                    HashMap hashMap = ((C0484) r2.ʽʽ).f2244;
                    return ᴵˋ.ˊʻ.ˑٴ(hashMap.containsKey(mo1558) ? hashMap.get(mo1558) : null);
                }
                break;
            case 700587132:
                if (str.equals("getParams")) {
                    ˉᵎ.ⁱˊ.ˑٴ(0, "getParams", arrayList);
                    HashMap hashMap2 = ((C0484) r2.ʽʽ).f2244;
                    C0422 c0422 = new C0422();
                    for (String str2 : hashMap2.keySet()) {
                        c0422.mo1353(str2, ᴵˋ.ˊʻ.ˑٴ(hashMap2.get(str2)));
                    }
                    return c0422;
                }
                break;
            case 920706790:
                if (str.equals("setParamValue")) {
                    ˉᵎ.ⁱˊ.ˑٴ(2, "setParamValue", arrayList);
                    String mo15582 = ((C0371) r7.ʽʽ).m1698(r7, (InterfaceC0457) arrayList.get(0)).mo1558();
                    InterfaceC0457 m1698 = ((C0371) r7.ʽʽ).m1698(r7, (InterfaceC0457) arrayList.get(1));
                    C0484 c0484 = (C0484) r2.ʽʽ;
                    Object obj = ˉᵎ.ⁱˊ.ˉـ(m1698);
                    HashMap hashMap3 = c0484.f2244;
                    if (obj == null) {
                        hashMap3.remove(mo15582);
                        return m1698;
                    }
                    hashMap3.put(mo15582, C0484.m1936(hashMap3.get(mo15582), obj, mo15582));
                    return m1698;
                }
                break;
            case 1570616835:
                if (str.equals("setEventName")) {
                    ˉᵎ.ⁱˊ.ˑٴ(1, "setEventName", arrayList);
                    InterfaceC0457 m16982 = ((C0371) r7.ʽʽ).m1698(r7, (InterfaceC0457) arrayList.get(0));
                    if (InterfaceC0457.f2214.equals(m16982) || InterfaceC0457.f2213.equals(m16982)) {
                        throw new IllegalArgumentException("Illegal event name");
                    }
                    ((C0484) r2.ʽʽ).f2246 = m16982.mo1558();
                    return new C0467(m16982.mo1558());
                }
                break;
        }
        return super.mo1560(str, r7, arrayList);
    }
}
