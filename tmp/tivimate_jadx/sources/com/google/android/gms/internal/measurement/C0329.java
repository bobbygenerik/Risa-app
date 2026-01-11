package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.android.gms.internal.measurement.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0329 extends AbstractC0465 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ArrayList f1978;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final ArrayList f1979;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final ˏˆ.ﹳٴ f1980;

    public C0329(C0329 c0329) {
        super(c0329.f2223);
        ArrayList arrayList = new ArrayList(c0329.f1978.size());
        this.f1978 = arrayList;
        arrayList.addAll(c0329.f1978);
        ArrayList arrayList2 = new ArrayList(c0329.f1979.size());
        this.f1979 = arrayList2;
        arrayList2.addAll(c0329.f1979);
        this.f1980 = c0329.f1980;
    }

    public C0329(String str, ArrayList arrayList, List list, ˏˆ.ﹳٴ r6) {
        super(str);
        this.f1978 = new ArrayList();
        this.f1980 = r6;
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                this.f1978.add(((InterfaceC0457) obj).mo1558());
            }
        }
        this.f1979 = new ArrayList(list);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0465
    /* renamed from: ʽ */
    public final InterfaceC0457 mo1199(ˏˆ.ﹳٴ r8, List list) {
        C0494 c0494;
        ˏˆ.ﹳٴ r0 = this.f1980.ˈⁱ();
        C0371 c0371 = (C0371) r0.ʽʽ;
        int i = 0;
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f1978;
            int size = arrayList.size();
            c0494 = InterfaceC0457.f2214;
            if (i2 >= size) {
                break;
            }
            if (i2 < list.size()) {
                r0.ʿ((String) arrayList.get(i2), ((C0371) r8.ʽʽ).m1698(r8, (InterfaceC0457) list.get(i2)));
            } else {
                r0.ʿ((String) arrayList.get(i2), c0494);
            }
            i2++;
        }
        ArrayList arrayList2 = this.f1979;
        int size2 = arrayList2.size();
        while (i < size2) {
            Object obj = arrayList2.get(i);
            i++;
            InterfaceC0457 interfaceC0457 = (InterfaceC0457) obj;
            InterfaceC0457 m1698 = c0371.m1698(r0, interfaceC0457);
            if (m1698 instanceof C0330) {
                m1698 = c0371.m1698(r0, interfaceC0457);
            }
            if (m1698 instanceof C0515) {
                return ((C0515) m1698).f2282;
            }
        }
        return c0494;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0465, com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ˆʾ */
    public final InterfaceC0457 mo1553() {
        return new C0329(this);
    }
}
