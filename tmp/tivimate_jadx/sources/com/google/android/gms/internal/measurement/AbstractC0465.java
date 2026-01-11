package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.AbstractC0001;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.google.android.gms.internal.measurement.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0465 implements InterfaceC0457, InterfaceC0309 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String f2223;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final HashMap f2224 = new HashMap();

    public AbstractC0465(String str) {
        this.f2223 = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbstractC0465)) {
            return false;
        }
        AbstractC0465 abstractC0465 = (AbstractC0465) obj;
        String str = this.f2223;
        if (str != null) {
            return str.equals(abstractC0465.f2223);
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f2223;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0309
    /* renamed from: ʼˎ */
    public final void mo1353(String str, InterfaceC0457 interfaceC0457) {
        HashMap hashMap = this.f2224;
        if (interfaceC0457 == null) {
            hashMap.remove(str);
        } else {
            hashMap.put(str, interfaceC0457);
        }
    }

    /* renamed from: ʽ */
    public abstract InterfaceC0457 mo1199(ˏˆ.ﹳٴ r1, List list);

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ˆʾ */
    public InterfaceC0457 mo1553() {
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0309
    /* renamed from: ˈ */
    public final InterfaceC0457 mo1354(String str) {
        HashMap hashMap = this.f2224;
        return hashMap.containsKey(str) ? (InterfaceC0457) hashMap.get(str) : InterfaceC0457.f2214;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0309
    /* renamed from: ˑﹳ */
    public final boolean mo1355(String str) {
        return this.f2224.containsKey(str);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ᵎﹶ */
    public final String mo1558() {
        return this.f2223;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ᵔᵢ */
    public final InterfaceC0457 mo1560(String str, ˏˆ.ﹳٴ r3, ArrayList arrayList) {
        return "toString".equals(str) ? new C0467(this.f2223) : AbstractC0001.m13(this, new C0467(str), r3, arrayList);
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
        return new C0261(this.f2224.keySet().iterator());
    }
}
