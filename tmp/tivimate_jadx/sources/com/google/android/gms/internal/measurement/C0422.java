package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.AbstractC0001;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.google.android.gms.internal.measurement.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0422 implements InterfaceC0457, InterfaceC0309 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final HashMap f2161 = new HashMap();

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0422) {
            return this.f2161.equals(((C0422) obj).f2161);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2161.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        HashMap hashMap = this.f2161;
        if (!hashMap.isEmpty()) {
            for (String str : hashMap.keySet()) {
                sb.append(String.format("%s: %s,", str, hashMap.get(str)));
            }
            sb.deleteCharAt(sb.lastIndexOf(","));
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0309
    /* renamed from: ʼˎ */
    public final void mo1353(String str, InterfaceC0457 interfaceC0457) {
        HashMap hashMap = this.f2161;
        if (interfaceC0457 == null) {
            hashMap.remove(str);
        } else {
            hashMap.put(str, interfaceC0457);
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ˆʾ */
    public final InterfaceC0457 mo1553() {
        C0422 c0422 = new C0422();
        for (Map.Entry entry : this.f2161.entrySet()) {
            boolean z = entry.getValue() instanceof InterfaceC0309;
            HashMap hashMap = c0422.f2161;
            if (z) {
                hashMap.put((String) entry.getKey(), (InterfaceC0457) entry.getValue());
            } else {
                hashMap.put((String) entry.getKey(), ((InterfaceC0457) entry.getValue()).mo1553());
            }
        }
        return c0422;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0309
    /* renamed from: ˈ */
    public final InterfaceC0457 mo1354(String str) {
        HashMap hashMap = this.f2161;
        return hashMap.containsKey(str) ? (InterfaceC0457) hashMap.get(str) : InterfaceC0457.f2214;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0309
    /* renamed from: ˑﹳ */
    public final boolean mo1355(String str) {
        return this.f2161.containsKey(str);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ᵎﹶ */
    public final String mo1558() {
        return "[object Object]";
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ᵔᵢ */
    public InterfaceC0457 mo1560(String str, ˏˆ.ﹳٴ r3, ArrayList arrayList) {
        return "toString".equals(str) ? new C0467(toString()) : AbstractC0001.m13(this, new C0467(str), r3, arrayList);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ⁱˊ */
    public final Double mo1562() {
        return Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ﹳٴ */
    public final Boolean mo1563() {
        return Boolean.TRUE;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ﾞᴵ */
    public final Iterator mo1565() {
        return new C0261(this.f2161.keySet().iterator());
    }
}
