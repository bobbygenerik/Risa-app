package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.google.android.gms.internal.measurement.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0384 implements InterfaceC0457 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean f2042;

    public C0384(Boolean bool) {
        this.f2042 = bool == null ? false : bool.booleanValue();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C0384) && this.f2042 == ((C0384) obj).f2042;
    }

    public final int hashCode() {
        return Boolean.valueOf(this.f2042).hashCode();
    }

    public final String toString() {
        return String.valueOf(this.f2042);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ˆʾ */
    public final InterfaceC0457 mo1553() {
        return new C0384(Boolean.valueOf(this.f2042));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ᵎﹶ */
    public final String mo1558() {
        return Boolean.toString(this.f2042);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ᵔᵢ */
    public final InterfaceC0457 mo1560(String str, ˏˆ.ﹳٴ r3, ArrayList arrayList) {
        boolean equals = "toString".equals(str);
        boolean z = this.f2042;
        if (equals) {
            return new C0467(Boolean.toString(z));
        }
        throw new IllegalArgumentException(Boolean.toString(z) + "." + str + " is not a function.");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ⁱˊ */
    public final Double mo1562() {
        return Double.valueOf(true != this.f2042 ? 0.0d : 1.0d);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ﹳٴ */
    public final Boolean mo1563() {
        return Boolean.valueOf(this.f2042);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ﾞᴵ */
    public final Iterator mo1565() {
        return null;
    }
}
