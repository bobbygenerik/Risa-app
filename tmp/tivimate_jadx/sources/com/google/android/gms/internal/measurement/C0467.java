package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* renamed from: com.google.android.gms.internal.measurement.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0467 implements Iterable, InterfaceC0457 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String f2225;

    public C0467(String str) {
        if (str == null) {
            throw new IllegalArgumentException("StringValue cannot be null.");
        }
        this.f2225 = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0467) {
            return this.f2225.equals(((C0467) obj).f2225);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2225.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new C0264(1, this);
    }

    public final String toString() {
        String str = this.f2225;
        StringBuilder sb = new StringBuilder(str.length() + 2);
        sb.append("\"");
        sb.append(str);
        sb.append("\"");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ˆʾ */
    public final InterfaceC0457 mo1553() {
        return new C0467(this.f2225);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ᵎﹶ */
    public final String mo1558() {
        return this.f2225;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x02f3, code lost:
    
        if (r4[r1].isEmpty() == false) goto L104;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:39:0x00b8. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ᵔᵢ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.InterfaceC0457 mo1560(java.lang.String r28, ˏˆ.ﹳٴ r29, java.util.ArrayList r30) {
        /*
            Method dump skipped, instructions count: 1626
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C0467.mo1560(java.lang.String, ˏˆ.ﹳٴ, java.util.ArrayList):com.google.android.gms.internal.measurement.ᵔʾ");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ⁱˊ */
    public final Double mo1562() {
        String str = this.f2225;
        if (str.isEmpty()) {
            return Double.valueOf(0.0d);
        }
        try {
            return Double.valueOf(str);
        } catch (NumberFormatException unused) {
            return Double.valueOf(Double.NaN);
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ﹳٴ */
    public final Boolean mo1563() {
        return Boolean.valueOf(!this.f2225.isEmpty());
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ﾞᴵ */
    public final Iterator mo1565() {
        return new C0264(0, this);
    }
}
