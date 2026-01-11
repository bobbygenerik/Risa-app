package com.google.android.gms.internal.play_billing;

import android.support.v4.media.session.AbstractC0001;
import p307.AbstractC3740;

/* renamed from: com.google.android.gms.internal.play_billing.ʻˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0522 extends C0585 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f2287;

    public C0522(int i, byte[] bArr) {
        super(bArr);
        C0585.m2177(0, i, bArr.length);
        this.f2287 = i;
    }

    @Override // com.google.android.gms.internal.play_billing.C0585
    /* renamed from: ˈ, reason: contains not printable characters */
    public final int mo2031() {
        return this.f2287;
    }

    @Override // com.google.android.gms.internal.play_billing.C0585
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte mo2032(int i) {
        return this.f2390[i];
    }

    @Override // com.google.android.gms.internal.play_billing.C0585
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte mo2033(int i) {
        int i2 = this.f2287;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.f2390[i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(AbstractC3740.m7932(i, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(AbstractC0001.m14(i, i2, "Index > length: ", ", "));
    }
}
