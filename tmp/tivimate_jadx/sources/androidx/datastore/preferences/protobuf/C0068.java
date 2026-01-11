package androidx.datastore.preferences.protobuf;

import android.support.v4.media.session.AbstractC0001;
import p307.AbstractC3740;

/* renamed from: androidx.datastore.preferences.protobuf.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0068 extends C0054 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int f520;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f521;

    public C0068(byte[] bArr, int i, int i2) {
        super(bArr);
        C0054.m354(i, i + i2, bArr.length);
        this.f521 = i;
        this.f520 = i2;
    }

    @Override // androidx.datastore.preferences.protobuf.C0054
    public final int size() {
        return this.f520;
    }

    @Override // androidx.datastore.preferences.protobuf.C0054
    /* renamed from: ˑﹳ */
    public final void mo355(int i, byte[] bArr) {
        System.arraycopy(this.f483, this.f521, bArr, 0, i);
    }

    @Override // androidx.datastore.preferences.protobuf.C0054
    /* renamed from: ᵎﹶ */
    public final byte mo356(int i) {
        return this.f483[this.f521 + i];
    }

    @Override // androidx.datastore.preferences.protobuf.C0054
    /* renamed from: ﹳٴ */
    public final byte mo357(int i) {
        int i2 = this.f520;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.f483[this.f521 + i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(AbstractC3740.m7932(i, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(AbstractC0001.m14(i, i2, "Index > length: ", ", "));
    }

    @Override // androidx.datastore.preferences.protobuf.C0054
    /* renamed from: ﾞᴵ */
    public final int mo358() {
        return this.f521;
    }
}
