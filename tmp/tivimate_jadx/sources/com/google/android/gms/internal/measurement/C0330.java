package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.google.android.gms.internal.measurement.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0330 implements InterfaceC0457 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String f1981;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ArrayList f1982;

    public C0330(String str, ArrayList arrayList) {
        this.f1981 = str;
        ArrayList arrayList2 = new ArrayList();
        this.f1982 = arrayList2;
        arrayList2.addAll(arrayList);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0330)) {
            return false;
        }
        C0330 c0330 = (C0330) obj;
        String str = c0330.f1981;
        String str2 = this.f1981;
        if (str2 == null ? str == null : str2.equals(str)) {
            return this.f1982.equals(c0330.f1982);
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f1981;
        return this.f1982.hashCode() + ((str != null ? str.hashCode() : 0) * 31);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ˆʾ */
    public final InterfaceC0457 mo1553() {
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ᵎﹶ */
    public final String mo1558() {
        throw new IllegalStateException("Statement cannot be cast as String");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ᵔᵢ */
    public final InterfaceC0457 mo1560(String str, ˏˆ.ﹳٴ r2, ArrayList arrayList) {
        throw new IllegalStateException("Statement is not an evaluated entity");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ⁱˊ */
    public final Double mo1562() {
        throw new IllegalStateException("Statement cannot be cast as Double");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ﹳٴ */
    public final Boolean mo1563() {
        throw new IllegalStateException("Statement cannot be cast as Boolean");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ﾞᴵ */
    public final Iterator mo1565() {
        return null;
    }
}
