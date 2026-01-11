package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.google.android.gms.internal.measurement.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0515 implements InterfaceC0457 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC0457 f2282;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final String f2283;

    public C0515(String str) {
        this.f2282 = InterfaceC0457.f2214;
        this.f2283 = str;
    }

    public C0515(String str, InterfaceC0457 interfaceC0457) {
        this.f2282 = interfaceC0457;
        this.f2283 = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0515)) {
            return false;
        }
        C0515 c0515 = (C0515) obj;
        return this.f2283.equals(c0515.f2283) && this.f2282.equals(c0515.f2282);
    }

    public final int hashCode() {
        return this.f2282.hashCode() + (this.f2283.hashCode() * 31);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ˆʾ */
    public final InterfaceC0457 mo1553() {
        return new C0515(this.f2283, this.f2282.mo1553());
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ᵎﹶ */
    public final String mo1558() {
        throw new IllegalStateException("Control is not a String");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ᵔᵢ */
    public final InterfaceC0457 mo1560(String str, ˏˆ.ﹳٴ r2, ArrayList arrayList) {
        throw new IllegalStateException("Control does not have functions");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ⁱˊ */
    public final Double mo1562() {
        throw new IllegalStateException("Control is not a double");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ﹳٴ */
    public final Boolean mo1563() {
        throw new IllegalStateException("Control is not a boolean");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ﾞᴵ */
    public final Iterator mo1565() {
        return null;
    }
}
