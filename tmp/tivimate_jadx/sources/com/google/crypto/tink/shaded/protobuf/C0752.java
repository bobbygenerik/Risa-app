package com.google.crypto.tink.shaded.protobuf;

import android.support.v4.media.session.AbstractC0001;
import p307.AbstractC3740;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0752 extends C0740 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int f3083;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f3084;

    public C0752(byte[] bArr, int i, int i2) {
        super(bArr);
        AbstractC0744.m2695(i, i + i2, bArr.length);
        this.f3084 = i;
        this.f3083 = i2;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.C0740, com.google.crypto.tink.shaded.protobuf.AbstractC0744
    public final int size() {
        return this.f3083;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.C0740, com.google.crypto.tink.shaded.protobuf.AbstractC0744
    /* renamed from: ˑﹳ */
    public final void mo2654(int i, byte[] bArr) {
        System.arraycopy(this.f3045, this.f3084, bArr, 0, i);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.C0740
    /* renamed from: ᵎﹶ */
    public final int mo2655() {
        return this.f3084;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.C0740
    /* renamed from: ᵔᵢ */
    public final byte mo2656(int i) {
        return this.f3045[this.f3084 + i];
    }

    @Override // com.google.crypto.tink.shaded.protobuf.C0740, com.google.crypto.tink.shaded.protobuf.AbstractC0744
    /* renamed from: ﹳٴ */
    public final byte mo2657(int i) {
        int i2 = this.f3083;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.f3045[this.f3084 + i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(AbstractC3740.m7932(i, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(AbstractC0001.m14(i, i2, "Index > length: ", ", "));
    }
}
