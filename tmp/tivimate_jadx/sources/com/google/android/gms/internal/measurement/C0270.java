package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ʼﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0270 extends C0364 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f1768;

    public C0270(int i, byte[] bArr) {
        super(bArr);
        C0364.m1686(0, i, bArr.length);
        this.f1768 = i;
    }

    @Override // com.google.android.gms.internal.measurement.C0364
    /* renamed from: ˈ, reason: contains not printable characters */
    public final int mo1236() {
        return this.f1768;
    }

    @Override // com.google.android.gms.internal.measurement.C0364
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte mo1237(int i) {
        return this.f2020[i];
    }

    @Override // com.google.android.gms.internal.measurement.C0364
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte mo1238(int i) {
        int i2 = this.f1768;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.f2020[i];
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 11);
            sb.append("Index < 0: ");
            sb.append(i);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(i).length() + 18 + String.valueOf(i2).length());
        sb2.append("Index > length: ");
        sb2.append(i);
        sb2.append(", ");
        sb2.append(i2);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }
}
